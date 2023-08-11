---
title: chewie uten fabric
description: Oppdatering av chewie
pubDate: 2015-03-10
author: relekang
---

Da vi først lagde chewie, brukte vi [Fabric](http://www.fabfile.org/) til den
delen av chewie som logger inn på serverne og oppdaterer prosjektene. Ettersom
chewie er skrevet i JavaScript med Node.js, og Fabric er et Python-bibliotek,
måtte vi bruke `child_process` i Node for å kalle på Fabric-koden vår. Dette
var ikke en optimal situasjon, men et greit sted å starte siden vi tidligere har
brukt Fabric mye til å deploye manuelt.

Vi har nå byttet ut denne delen av chewie med noe som er skrevet i JavaScript. Vi
ønsket å bruke Node-modulen [ssh2](https://github.com/mscdex/ssh2) til å koble til
våre servere over SSH. ssh2-modulen er eventbasert. Det vil si at man må sette opp
eventlyttere for å kjøre kommandoer over en SSH-tilkobling. Nedenfor vises hvordan
man kunne kjørt kommandoen `date` over en tilkobling satt opp med ssh2.

```js
var conn = new Client();
conn
  .on("ready", function () {
    console.log("Client :: ready");
    conn.exec("date", function (err, stream) {
      if (err) throw err;
      stream
        .on("close", function (code, signal) {
          conn.end();
        })
        .on("data", function (data) {
          console.log("STDOUT: " + data);
        });
    });
  })
  .connect(options);
```

Når vi deployer, så kjører vi flere kommandoer etter hverandre. Dette hadde allerede ført
til at vi hadde måttet sette opp flere lyttere, og håndtere nedkoblingen av forbindelsen i
etterkant, ikke i `stream.on('close')`. Vi ønsket derfor en bedre løsning, der vi
ville kunne gi en liste med kommandoer og håndtere output med lyttere, men håndtere
resultater med _callbacks_ eller _promises_. Vi var mer positive til promises enn til
callbacks, siden vi allerede bruker promises der det er egnet i de fleste av våre
JavaScript-prosjekter. Lurer du på hva promises er eller hvorfor vi bruker det,
kan du ta en titt på
[denne artikkelen](http://spion.github.io/posts/why-i-am-switching-to-promises.html),
eller overtale noen til å skrive en bloggpost om promises på denne bloggen. Vi
lagde derfor [promised-ssh](https://github.com/relekang/promised-ssh) som en
promise-abstraksjon av ssh2. Denne pakken gjør at vi kan kjøre, for eksempel, `date` på en server
med koden nedenfor.

```js
ssh
  .connect(options)
  .then(function (connection) {
    return connection.exec(["date"]);
  })
  .spread(function (stdout, stderr) {
    if (stdout) console.log("STDOUT: " + stdout);
  })
  .catch(function (error) {
    console.log("Could not run command");
  });
```

Den store fordelen med å ha byttet ut Fabric med promised-ssh, er at vi nå har bedre
muligheter til å håndtere feil på en god måte. I tillegg har vi nå droppet
et helt språk, slik at vi ikke lenger trenger å bruke dobbelt opp med
pakkebehandlere og testverktøy, noe som gjør oppsettet av prosjektet enklere.

Dersom du er interessert i hvordan vi har tatt i bruk promised-ssh kan du se
på [Deployment](https://github.com/webkom/chewie/blob/master/src/Deployment.js)-objektet.
Det kan brukes så enkelt som i koden nedenfor.

```js
new Deployment("chewie")
  .run()
  .then(function () {
    console.log("Successfully deployed chewie");
  })
  .catch(function (error) {
    console.log("An error occured while deploying chewie", error);
  });
```
