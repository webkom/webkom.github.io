---
layout: post
title: Årsberetning 2014/2015
author: ekmartin

---

2015 har vært et interessant år for Webkom. Vi har hatt våre oppturer og nedturer, selv om det definitivt har vært flest av førstnevnte. Nye prosjekter har blitt startet og gamle har blitt vedlikeholdt. Nettopp det å starte nye prosjekter er nok også noe av det vi har blitt enda flinkere på i løpet av året som har gått. Nesten all ny kode som skrives i Webkom blir åpen kildekode før eller senere, gjerne med en tilhørende solid testdekning. Dette vil vi fortsette med i løpet av 2015, og da mens vi skriver ny Abakus.no. Her har du en kort oppsummering av noe av det vi har drevet med siden forrige generalforsamling.

## Blogg
Bloggen du leser nå prøver vi å holde oppdatert med info om nye prosjekter og erfaringer vi opparbeider oss gjennom vårt komitéarbeid. Vi vil på den måten prøve å oppnå at flere skal få nytte av det vi har lært. Et av målene våre er at alle i Webkom skal skrive minst én bloggpost i løpet av hvert skoleår.

## census <a href="https://github.com/webkom/census"><i class="fa fa-github"></i></a>
census er et nytt prosjekt som gir oss en oversikt over serverne våre. Det lever på [census.abakus.no](http://census.abakus.no). Man kan lese mer om census og hvordan
det fungerer i [bloggposten](http://webkom.abakus.no/census/) vi skrev da det ble
lansert. Det er verdt å merke seg at alle Abakus-medlemmer kan bruke census til å
holde oversikt over sine maskiner.

## chewie <a href="https://github.com/webkom/chewie"><i class="fa fa-github"></i></a>
chewie er det vi bruker til å produksjonssette prosjektene våre, og passer på at de alltid kjører siste versjon av koden. I tillegg til å gjøre dette automatisk har også chewie støtte for manuell produksjonssetting gjennom et web-grensesnitt. chewie kan du også lese mer om på [den relevante bloggposten](http://webkom.abakus.no/chewie).

## Abakus.no

### NERD
Selv om Webkom alltid har som fokus å streve etter nye og interessante prosjekter er det viktig å vedlikeholde det man allerede har. I løpet av 2014/2015 har det blitt utført en rekke feilrettinger på Abakus.no, hvorav mye går på sikkerhet relatert til bedriftsdatabasesidene. Nye karrieresider har også blitt implementert, og disse vil fylles opp i løpet av det kommende året.

### Autentiserings-API
Abakus.no har lenge hatt et API for å autentisere Abakus-medlemmer. API-et har blitt brukt av flere tjenester, blant annet Abacash, PRs bildearkiv, census og chewie. I år har vi jobbet for at det skal være enklere å sette opp nye tjenester som krever autentisering. Vi har derfor laget [django-abakus-auth](https://github.com/webkom/django-auth-abakus) og [passport-abakus](https://github.com/webkom/passport-abakus) til henholdsvis Django- og Node.js-prosjekter.

### LEGO (nye Abakus.no)
Det ble mot slutten av 2014 bestemt at Abakus.no skulle skrives på nytt, fra bunnen av. Da dette er et krevende prosjekt kommer det til å være Webkoms hovedmål for 2015/2016. Prosjektet skal ha som mål å definere en oppdelt struktur mellom serverssiden og klientsiden, med et API tilgjengeliggjort for Abakus’ medlemmer. Dette skal gjøre det enklere å lage eksterne applikasjoner opp mot Abakus.no, samtidig som det skal gjøre videre utvikling og vedlikehold av siden enklere internt i Webkom. LEGO står derfor for «LEGO Er Ganske Oppdelt».

## Ny i Trondheim <a href="https://github.com/webkom/nyitrondheim"><i class="fa fa-github"></i></a>
Målet med Ny i Trondheim var å skape en portal for nye studenter ved NTNU, uavhengig
av hvilken linjeforening de kom fra. I løpet av våren 2014 ble det bestemt at siden
skulle skrives helt på nytt. Resultatet skulle bli en [åpenkildekodeløsning](https://github.com/webkom/nyitrondheim) det skulle kunne bygges
videre på i de kommende årene. Det originale målet om å være en studentportal ble også
utvidet, og prosjektet skulle nå omfatte ikke bare andre linjeforeninger, men også andre
Trondheimsskoler. Vi håper å kunne utvide portalen med enda flere bidragsytere i løpet av
2015.

## Puppet
Puppet er et system vi bruker for å definere hvilke applikasjoner vi skal ha installert på våre servere. Omtrent all vår Puppet-kode har i løpet av året blitt skrevet på nytt. Stort sett alle våre tjenester er produksjonssatt av Puppet. Dette gjør det enkelt for oss å flytte tjenester mellom servere, dersom det skulle bli nødvendig.

## vote <a href="https://github.com/webkom/vote"><i class="fa fa-github"></i></a>
Abakus tok for første gang i bruk et digitalt stemmesystem på generalforsamlingen i 2014. Det ble for det meste tatt godt i mot, men litt sikkerhetsmessig kritikk kom likevel frem. Mot slutten av 2014 ble det dermed bestemt å skrive hele stemmesystemet på nytt. I motsetning til det gamle systemet, som var integrert i Abakus.no, skulle vote nå være en frittstående entitet, med åpen kildekode. Resultatet kan du lese mer om [her](http://webkom.abakus.no/vote).

## holonet <a href="https://github.com/webkom/holonet"><i class="fa fa-github"></i></a>
Holonet skal behandle all mail relatert til Abakus når LEGO, nye Abakus.no, kommer ut i produksjon. Slik som systemet er i dag behandles all mail av NERD, nåværende Abakus.no. Dette har fungert bra, men et minus er at nettsiden må fungere for at mail skal kunne prosesseres. Med holonet kjørende på en separat server er vi ikke lenger avhengige av dette, noe som vil være en stor fordel. Som en del av prosjektet har vi også utviklet en Django-plugin som snakker med API-et til holonet. Dette gjør det enkelt for oss å integrere mailsystemet i LEGO. For brukerne av LEGO vil systemet for å lage mailinglister fungere på tilsvarende måte som det gjør i dag. Både holonet og django-holonet er åpen kildekode og tilgjengelig på [GitHub](https://github.com/webkom).

## noetikon <a href="https://github.com/webkom/noetikon"><i class="fa fa-github"></i></a>
[noetikon](http://files.abakus.no) er et nytt prosjekt som resultat av at vi mistet Windows-serveren vår i fjor høst. Vi satte opp en nettside for å kunne hente ut det som var lagret på samba tidligere, så enkelt som mulig. Det er nå til vurdering om dette prosjektet skal brukes som et filarkiv for Abakus dersom vi implementerer støtte for opplastning.

## Servere
Da antallet tjenester Webkom drifter har gått opp det foregående året krever dette en økt mengde servere. Vi har i dag 13 serverinstanser kjørende, mange av disse er virtuelle. Alle våre tjenere står plassert på serverrommet ved Webkomkontoret. Vi har i løpet av året tatt i bruk virtuelle maskiner slik at vi lettere kan dele opp tjenester. Dette gir oss også en fordel når vi samarbeider med XCOM, itDAGENE og Datakameratene. Vi har også gjennomført en skikkelig høstrengjøring. Dette innebar ny nettverkskabling og opprydding i server-racket.

### backup
Forrige høst mistet vi lagringen vi hadde på vår eneste Windows-server. Dette var et resultat av glipp i rutiner og dårlig erfaringsoverføring. Selv om vi også ved dette tidspunktet hadde solide rutiner på backup av så å si alle tjenester, vel å merke på de resterende Linux-serverne, har dette blitt betraktelig forbedret i løpet av det siste halvåret. I tillegg til å sette opp ekstern lagring ut av huset, tas det backup en gang i døgnet til våre lokale servere, lagret med RAID 5. Vi bruker [ossus](https://github.com/frecar/ossus) til å ta ekstern backup.

Vi håper å se deg på [Slack](http://webkom.abakus.no/slack) i løpet av 2015. Nye prosjekter kommer på [GitHub](https://github.com/webkom), følg gjerne med!
