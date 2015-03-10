---
layout: post
title: chewie uten fabric
author: relekang

---


Da vi først lagde chewie brukte vi [fabric](http://www.fabfile.org/) til den
delen av chewie som logger inn på serverne og oppdaterer prosjektene. Ettersom
chewie er skrevet i Javascript med node.js og fabric er et python bibliotek så
måtte vi bruke `child_process` i node for å kalle på fabric koden vår. Dette
var ikke en optimal situasjon, men et greit sted å starte siden vi tidligere har
brukt fabric mye til å deploye manuelt.

Vi har nå byttet ut denne delen av chewie med noe som er skrevet i Javascript. Vi
ønsket å bruke node-modulen [ssh2](https://github.com/mscdex/ssh2) til å koble til
våre server over ssh. ssh2-modulen er event basert. Det vil si at man må sette opp
event-lyttere for å kjøre kommandoer over en ssh-tilkobling. Nedenfor vises hvordan
man kunne kjørt kommandoen `date` over en tilkobling satt opp med ssh2.

{% highlight javascript %}
var conn = new Client();
conn.on('ready', function() {
  console.log('Client :: ready');
  conn.exec('date', function(err, stream) {
    if (err) throw err;
    stream.on('close', function(code, signal) {
      conn.end();
    }).on('data', function(data) {
      console.log('STDOUT: ' + data);
    })
  });
}).connect(options);
{% endhighlight %}

Når vi deployer så kjører vi flere kommandoer etter hverandre. Dette hadde ført
til at vi måtte satt opp flere lyttere og håndtert nedkobling av koblingen i
etterkant ikke `stream.on('close')`. Vi ønsket derfor en bedre løsning der vi
kunne gi en liste med kommandoer og håndtere output med lyttere, men håndtere
resultat med *callbacks* eller *promises*. Vi var mer positiv til promises enn
callbacks siden vi allerede bruker promises der det er egnet i de fleste av våre
Javascript prosjekter. Lurer du på hva promises er eller hvorfor vi bruker det
kan du ta en titt på
[denne artikkelen](http://spion.github.io/posts/why-i-am-switching-to-promises.html),
eller overtale noen til å skrive en bloggpost om promises på denne bloggen. Vi
lagde derfor [promised-ssh](https://github.com/relekang/promised-ssh) som en
promise-abstraksjon av ssh2. Denne pakken gjør at vi kan kjøre, for eksempel, `date` på en server
med koden nedenfor.

{% highlight javascript %}
ssh
  .connect(options)
  .then(function(connection) {
    return connection.exec(['date']);
  })
  .spread(function(stdout, stderr) {
    if (stdout) console.log('STDOUT: ' + stdout);
  })
  .catch(function(error) {
    console.log('Could not run command')
  });
{% endhighlight %}

Den store fordelen med å ha byttet ut fabric med promised-ssh er at vi har bedre
muligheter til å håndtere feil på en god måte. I tillegg til at vi nå har droppet
et språk som har ført til at vi ikke lenger trenger å bruke dobbelt opp med
pakkebehandlere og test verktøy. Noe som gjør oppsett av prosjektet enklere.

Dersom du er interessert i hvordan vi har tatt i bruk promised-ssh kan du ta se
på [Deployment](https://github.com/webkom/chewie/blob/master/src/Deployment.js)-objektet.
Det kan brukes så enkelt som i koden nedenfor.

{% highlight javascript %}
new Deployment('chewie')
  .run()
  .then(function() {
    console.log('Successfully deployed chewie');
  })
  .catch(function(error) {
    console.log('An error occured while deploying chewie', error);
  });
{% endhighlight %}
