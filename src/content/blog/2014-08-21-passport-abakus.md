---
title: passport-abakus
description: Autentisering av Abakus-brukere i express.js med passport
pubDate: 2014-08-21
author: relekang
---

Vi har nettopp lansert [passport-abakus](https://github.com/webkom/passport-abakus).
Det kan brukes til å autentisere Abakus brukere via et api på abakus.no når man
bruker [passport](http://passportjs.org/) for å håndtere innlogging i
[express.js](http://expressjs.com/). Express.js er et web-rammeverk vi i webkom
har brukt til å lage blant annet [nyitrondheim.no](http://nyitrondheim.no) og
[foto.abakus.no](http://foto.abakus.no).

Dersom du har lyst til å bruke dette til noe så trenger du en API-nøkkel. Det får
du om du kontakter oss på mail og sier litt om hva du har tenkt til å bruke den
til. Når du har fått nøkkelen kan du kjøre `npm install --save passport-abakus`
for å installere pakken.

Deretter må det settes opp i din express.js app. Det kan gjøres med koden nedenfor:

```js
var passport = require("passport");
var passportAbakus = require("passport-abakus");

passport.use(passportAbakus.abakusStrategy());
passport.serializeUser(passportAbakus.serializeAbakusUser);
passport.deserializeUser(passportAbakus.deserializeAbakusUser);

app.use(passport.initialize());
```

Først må man inkludere passport og passport-abakus så forteller man passport at
man vil bruke abakusStrategy som autentiseringsstrategi.
Det vil føre til at Passport vil bruke denne strategien hver gang `passport.authenticate()`
blir kalt. Strategien kjører en forespørsel mot et api på abakus.no, som vil
svare om brukeren har skrevet inn gyldig brukernavn og passord. Hvis brukeren har
det vil man også få litt meta-info om brukeren.

Passport trenger en måte å lagre og hente ut informasjon om brukeren.
passport-abakus har funksjonalitet for dette, som blir satt opp på linje 5 og 6.
Det er to funksjoner som leser og skriver til en instans av [memcache](http://memcached.org/).
Den meta-informasjonen som ligger i svaret fra apiet på abakus.no vil her bli lagret
med bruker objektet. Den informasjonen vil da bli tilgjengelig på objektet user på
[express.js request objektet](http://expressjs.com/4x/api.html#req.params).

Oppsett av disse tre tingene må gjøres før man kaller `app.use(passport.initialize());`
på express.js appen. Den linjen vil legge inn passport som en

Til slutt må API-nøkkelen også legges inn. passport-abakus forventer at den
ligger lagret i en miljøvariabel kalt `ABAKUS_TOKEN`. En enkel måte å legge det
inn på er å kjøre `export ABAKUS_TOKEN=din-nøkkel` før man starter express.js appen.

Det er mulig å sette opp passport-abakus slik at brukeren må være en del av
abakom for å bli logget inn. Da sender man med `{ requireAbakom: true }` i
funksjonskallet til abakusStrategy slik at linje 4 blir som dette:

```js
passport.use(
  passportAbakus.abakusStrategy({
    requireAbakom: true,
  }),
);
```
