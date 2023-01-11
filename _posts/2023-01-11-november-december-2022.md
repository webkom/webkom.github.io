---
layout: post
title: Ukesmail, arrangementstatistikk og Typescript (nov. og des. 2022)
author: eikhr
---

Selv om det har vært litt stille på utviklerbloggen i det siste betyr det på ingen måte at det ikke har skjedd noe i Webkom. Her kommer en litt forsinket oppsummering av hva vi jobbet med og fikk implementert før juleferien.

### Deltakerstatistikk

En av de mest spennende tingene som har blitt implementert er en ny adminside som viser statistikk over påmeldingene til et arrangement. Her kan man se fordelingen av klassetrinn, linje, kjønn og gruppetilhørighet, samt en graf over når folk melder seg på og av. Dette vil gjøre det betydelig enklere å hente ut data om hvem som deltar på ulike arrangementer og vil forhåpentligvis være av stor nytte for arrangerende komiteer og PR i forbindelse med planlegging og markedsføring av inkluderende arrangementer.

<img height="250" alt="Statistikk over klassetrinn" src="/images/posts/2023-01-11-stat-klassetrinn.png">
<img height="250" alt="Statistikk over av- og påmeldinger" src="/images/posts/2023-01-11-stat-påmeldinger.png">

### Ukesmail

Hvis dere har sjekket mailen deres i det siste, har dere kanskje lagt merke til de nye ukentlige e-postene som nå blir sendt ut. Her får man et overblikk over arrangementer som snart har påmelding og jobbannonser som er lagt ut i løpet av den siste uken. Vi håper dette vil være nyttig for å enklere holde oversikten over hva som skjer i Abakus. Hvis man ikke ønsker å motta mailene er det alltid mulig å skru dem av i [notifikasjonsinstillingene](https://abakus.no/users/me/settings/notifications).

<img height="300" alt="Ukentlig e-post" src="/images/posts/2023-01-11-ukentlig-epost.png">

### Typescript

Til slutt har vi jobbet mye bak scenen med å rydde opp og oppdatere kodebasen [lego-webapp](https://github.com/webkom/lego-webapp), som er React-applikasjonen du ser når du går inn på abakus.no. Som mange sikkert vet er Javascript et dynamisk typet språk, som vil si at variabler ikke har noen spesifikk type i koden. Dette kan føre til man introduserer bugs som ikke kommer til syne før man utfører spesifikke sekvenser av handlinger i programmet. For å minske dette problemet finnes det ulike statiske typesjekkere man kan bruke for å legge til typer i Javascript koden sin. Vi har lenge brukt [Flow](https://flow.org/) til dette, men ettersom [Typescript](https://www.typescriptlang.org/) har blitt en de facto standard i Javascript økosystemet har det vært et ønske om å migrere over til det. 

I november fikk vi endelig gjort overgangen ved å kjøre en automatisk [flow-til-ts](https://github.com/Khan/flow-to-ts) konverterer i [denne PR-en](https://github.com/webkom/lego-webapp/pull/3215) med over 100.000 linjer endret(!). Dette gjorde størsteparten av jobben, men lot det ligge igjen rundt 1300 ESLint warnings om dårlige typer, samt noen tusen Tyescript-feilmeldinger. Disse jobber vi enda med å fikse opp i, men resultatet blir en betydelig tryggere kodebase som er lettere å vedlikeholde i årene fremover.

## Endringslogg for LEGO (abakus.no) November og Desember 2022

- 🚀 - Ny funksjonalitet
- ✨ - Forbedret funksjonalitet
- 🐛 - Bugfiks
- 🎨 - Designendring
- 🧹 - Opprydning

### Nytt:

- 🚀 **Deltakerstatistikk**, statistikkside for arrangementer som viser statistikk over hvem som har meldt seg på et arrangement, og når på- og avmeldinger skjer. ([lego-webapp#3210](https://github.com/webkom/lego-webapp/pull/3210))
- 🚀 **Ukesmail**, automatisert ukentlig e-post med info om nye jobbannonser og arrangementer med påmelding den påfølgende uken ([lego#2979](https://github.com/webkom/lego/pull/2979))
- 🧹 **Typescript**, vi har byttet ut [flow](https://flow.org/) med Typescript ([lego-webapp#3215](https://github.com/webkom/lego-webapp/pull/3215))
- ✨ **Forsiden**, lenkene "bedpress og kurs" og "arrangementer" legger nå til riktige filtre automatisk ([lego-webapp#3123](https://github.com/webkom/lego-webapp/pull/3123))
- ✨ **Arrangmenter**, arrangementer viser nå årstall i datoen dersom det ikke er i år ([lego-webapp#3209](https://github.com/webkom/lego-webapp/pull/3209))
- ✨ **Grupper**, lederrollen for readme heter nå "redaktør" ([lego-webapp#3213](https://github.com/webkom/lego-webapp/pull/3213))
- ✨ **Analytics**, endret url til Plausible for å unngå å blokkert av for mange ad-blockere ([lego-webapp#3211](https://github.com/webkom/lego-webapp/pull/3211))
- ✨ **Arrangementer**, interressegrupper som arrangerer arrangementer er nå lenker til interressegruppens side ([lego-webapp#3225](https://github.com/webkom/lego-webapp/pull/3225))
- ✨ **Profil**, revy-merker på profilen lenker nå til revygruppesiden, og rekkefølgen på merkene gir mer mening ([lego-webapp#3229](https://github.com/webkom/lego-webapp/pull/3229) og [lego-webapp#3164](https://github.com/webkom/lego-webapp/pull/3164))
- 🎨 **Interessegrupper**, Forbedret styling av ledere ([lego-webapp#3149](https://github.com/webkom/lego-webapp/pull/3149))
- ✨ **Kalendersynkronisering**, Ikke-aksepterte møter vises nå som transparente eller hvite ([lego#3081](https://github.com/webkom/lego/pull/3081))
- 🧹 **Diverse oppryddning**, Vi har gjort en del opprydning i kodebasen, blant annet i sammenheng med typescript-overgangen ([lego-webapp#3249](https://github.com/webkom/lego-webapp/pull/3249/files), [lego-webapp#3251](https://github.com/webkom/lego-webapp/pull/3251), [lego-webapp#3252](https://github.com/webkom/lego-webapp/pull/3252), [lego-webapp#3262](https://github.com/webkom/lego-webapp/pull/3262), [lego-webapp#3271](https://github.com/webkom/lego-webapp/pull/3271), [lego-webapp#3286](https://github.com/webkom/lego-webapp/pull/3286), [lego-webapp#3309](https://github.com/webkom/lego-webapp/pull/3309), [lego-webapp#3287](https://github.com/webkom/lego-webapp/pull/3287), [lego-webapp#3317](https://github.com/webkom/lego-webapp/pull/3317), [lego-webapp#3385](https://github.com/webkom/lego-webapp/pull/3385))

### Fikset:

- 🐛 **Søk**, fikset ødelagte lenker i søk-siden ([lego-webapp#3208](https://github.com/webkom/lego-webapp/pull/3208))
- 🎨 **Dark mode**, fikset diverse bugs og stygge farger i dark mode ([lego-webapp#3207](https://github.com/webkom/lego-webapp/pull/3201))
- 🐛 **Dark mode**, fikset feil ikon dersom siden ble åpnet i dark mode ([lego-webapp#3148](https://github.com/webkom/lego-webapp/pull/3148))
- 🎨 **Forms**, forbedret design på checkbox-komponenten ([lego-webapp#3214](https://github.com/webkom/lego-webapp/pull/3214) og [lego-webapp3227](https://github.com/webkom/lego-webapp/pull/3227))
- ✨ **SSR**, oppdatert pakken vi bruker for å laste inn data under server-side rendering ([@webkom/react-prepare#27](https://github.com/webkom/react-prepare/pull/27) og [lego-webapp#3165](https://github.com/webkom/lego-webapp/pull/3165))
- ✨ **Påmeldinger**, skjelettkomponenter for påmeldte i arrangementer, slik at registreringsknappen ikke flytter på seg ([lego-webapp#3264](https://github.com/webkom/lego-webapp/pull/3264))
- ✨ **Påmeldinger**, det er nå mulig å melde seg av arrangementer selv om man har ubesvarte spørreundersøkelser ([lego-webapp#3284](https://github.com/webkom/lego-webapp/pull/3284))
- 🐛 **Bildeopplasting**, det er ikke lenger mulig å forsøke å laste opp bilder som ikke støttes ([lego-webapp#3285](https://github.com/webkom/lego-webapp/pull/3285))
