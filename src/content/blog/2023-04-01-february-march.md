---
title: Februar og Mars 2023
description: Hva har Webkom gjort i februar og mars 2023?
pubDate: 2023-04-01
author: haukkagu
---

Velkommen tilbake til enda et innlegg på utviklerbloggen! Du lurer kanskje på hva Webkom har gjort de siste to månedene bortsett fra å sende 100+ ukesmail til hver enkelt abakule? Les videre for å finne ut av akkurat hva vi har jobbet med i februar og mars!

## Aprilsnarr

Allerede i februar begynte vi planleggingen av årets aprilsnarr på abakus.no. Vi landet til slutt på idéen om å fake påmeldingen av et stort arrangement (det endte opp med å bli sommerfesten) på 1. april, og å gjøre captchaen for å kunne melde seg på arrangementet så krunglete som mulig. Til slutt fikk vi implementert en påmeldingsknapp som beveger seg fra musepekeren når man er i ferd med å trykke på den. Hvis man klarer å trykke på knappen, blir man mødt med et vanskelig integral som man er nødt til å løse. Deretter må man løse tidenes vanskeligste "Skriv ned bokstavene i bildet" captcha før man til slutt blir gratulert og takket for å ha testet ut det nye captcha systemet til Webkom. Hvis du gikk glipp av moroa, følger noen screenshots av aprilsnarren under

<video controls width="100%"><source src="/images/posts/2023-03-31-captcha1.webm" type="video/webm"></video>
<img width="49%" alt="Bilde av integral captcha" src="/images/posts/2023-03-31-captcha2.png">
<img width="49%" alt="Bilde av 'skriv ned bokstavene i bildet' captcha" src="/images/posts/2023-03-31-captcha3.png">
<img width="100%" alt="Bilde av gratulasjonsskjerm for captchaen" src="/images/posts/2023-03-31-captcha4.png">

## Ny i Trondheim

Til slutt vil jeg snakke om et prosjekt som ikke så mange kjenner til, nemlig Ny i Trondheim! Ny i Trondheim har tidligere vært en nettside med nyttig informasjon for nye studenter i Trondheim. Nettsiden har ligget død en stund, men vi har nylig valgt å gjenopplive prosjektet! Den nye nettsiden kan du finne på [nyitrondheim.no](https://nyitrondheim.no), og her kan du lese deg opp på alt fra hvordan skaffe deg bolig til NTNU-lingo. Nettsiden har kommet ganske langt, men mangler fortsatt litt innhold. Har du noen innspill på hva som bør stå her? Da er det bare å finne frem til [kildekoden](https://github.com/webkom/nyitrondheim) og legge det til selv!

<img width="50%" alt="Bilde av 'Ny i Trondheim'" src="/images/posts/2023-03-31-nyitrondheim.png">

## Endringslogg for LEGO (abakus.no) Mars og Februar 2023

- 🚀 - Ny funksjonalitet
- ✨ - Forbedret funksjonalitet
- 🐛 - Bugfiks
- 🎨 - Designendring
- 🧹 - Opprydning

### Nytt:

- 🚀 **Aprilsnarr**, vi i Webkom introduserer en helt ny captcha! ([lego-webapp#3737](https://github.com/webkom/lego-webapp/pull/3737))
- 🚀 **Interesseskjema**, implementere endringer for interesseskjemaer som ble foreslått av Interkom ([lego-webapp#3615](https://github.com/webkom/lego-webapp/pull/3615)), ([lego-webapp#3614](https://github.com/webkom/lego-webapp/pull/3614)), ([lego-webapp#3613](https://github.com/webkom/lego-webapp/pull/3613)), ([lego-webapp#3608](https://github.com/webkom/lego-webapp/pull/3608)), ([lego#3242](https://github.com/webkom/lego/pull/3242)), ([lego#3236](https://github.com/webkom/lego/pull/3236)), ([lego#3232](https://github.com/webkom/lego/pull/3232)), ([lego#3226](https://github.com/webkom/lego/pull/3226)), [lego#3244](https://github.com/webkom/lego/pull/3244)), ([lego#3231](https://github.com/webkom/lego/pull/3231)), ([lego-webapp#3664](https://github.com/webkom/lego-webapp/pull/3664))
- 🚀 **Reaksjoner på møteinnkallinger**, kan for eksempel brukes til å kartlegge hvem som skal ha 🍕 ([lego#3215](https://github.com/webkom/lego/pull/3215)), ([lego-webapp#3548](https://github.com/webkom/lego-webapp/pull/3548))
- 🚀 **Flere forfattere på artikler**, nå kan man legge til flere personer som forfattere under en artikkel ([lego#3264](https://github.com/webkom/lego/pull/3264)), ([lego#3259](https://github.com/webkom/lego/pull/3259)), ([lego#3220](https://github.com/webkom/lego/pull/3220)), ([lego-webapp#3566](https://github.com/webkom/lego-webapp/pull/3566))
- 🚀 **Ukesmail**, mail som blir sendt ukentlig til abakuler med en oversikt over hva som skjer neste uke ([lego#3222](https://github.com/webkom/lego/pull/3222)), ([lego#3229](https://github.com/webkom/lego/pull/3229)), ([lego#3200](https://github.com/webkom/lego/pull/3200)), ([lego#3198](https://github.com/webkom/lego/pull/3198))
- 🚀 **Rettigheter**, legger til informasjon om de rettighetene man har når man oppretter arrangementer ([lego-webapp#3574](https://github.com/webkom/lego-webapp/pull/3574))
- ✨ **Filtrere ut ledende bindestreker for kilder til sitater**, mange av dere TULLINGER legger til en bindestrek på starten av kilden til et sitat selv om det legges til en automatisk. ([lego-webapp#3694](https://github.com/webkom/lego-webapp/pull/3694))
- ✨ **Validere felt for allergier blant brukere**, mange av dere TULLINGER skriver "ingen" eller "ingenting" under allergier når dere egentlig skulle ha latt feltet stå tomt ([lego-webapp#3573](https://github.com/webkom/lego-webapp/pull/3573))
- ✨ **Arrangementsoversikt**, viser nå antall påmeldte for hvert kort ([lego-webapp#3587](https://github.com/webkom/lego-webapp/pull/3587))
- ✨ **Sidebar**, utvider det riktige elementet i sidebaren ([lego-webapp#3567](https://github.com/webkom/lego-webapp/pull/3567))
- ✨ **Allergier**, første steg på vei til å anonymisere alle allergier ([lego-webapp#3554](https://github.com/webkom/lego-webapp/pull/3554))
- ✨ **Arbeid med rewrite av vote**, fortsetter som før ([vote#541](https://github.com/webkom/vote/pull/541)), ([vote#540](https://github.com/webkom/vote/pull/540)), ([vote#539](https://github.com/webkom/vote/pull/539))
- 🎨 **Fargepalett**, forbedret palett for rødfarger ([lego-webapp#3538](https://github.com/webkom/lego-webapp/pull/3538))
- 🎨 **MazeMap**, forbedret "vis kart"-knappen ([lego-webapp#3524](https://github.com/webkom/lego-webapp/pull/3524))
- 🎨 **readme dropdown**, er nå animert! ([lego-webapp#3523](https://github.com/webkom/lego-webapp/pull/3523)), ([lego-webapp#3572](https://github.com/webkom/lego-webapp/pull/3572))
- 🎨 **Sidebar** ([lego-webapp#3553](https://github.com/webkom/lego-webapp/pull/3553))
- 🎨 **Bedriftsoversikt** ([lego-webapp#3552](https://github.com/webkom/lego-webapp/pull/3552))
- 🎨 **Inntastingsfelt** ([lego-webapp#3551](https://github.com/webkom/lego-webapp/pull/3551))
- 🎨 **Bedriftsdetaljer** ([lego-webapp#3540](https://github.com/webkom/lego-webapp/pull/3540)), ([lego-webapp#3631](https://github.com/webkom/lego-webapp/pull/3631))
- 🎨 **Standarisere styling** ([lego-webapp#3556](https://github.com/webkom/lego-webapp/pull/3556)), ([lego-webapp#3687](https://github.com/webkom/lego-webapp/pull/3687))
- ✨ **Diverse funksjonalitetsforbedringer** ([lego-webapp#3532](https://github.com/webkom/lego-webapp/pull/3532)), ([lego-webapp#3555](https://github.com/webkom/lego-webapp/pull/3555)), ([lego-webapp#3577](https://github.com/webkom/lego-webapp/pull/3577))
- 🎨 **Diverse designforbedringer** ([lego-webapp#3525](https://github.com/webkom/lego-webapp/pull/3525)), ([lego-webapp#3680](https://github.com/webkom/lego-webapp/pull/3680)), ([lego-webapp#3677](https://github.com/webkom/lego-webapp/pull/3677)), ([lego-webapp#3594](https://github.com/webkom/lego-webapp/pull/3594))

### Fikset

- 🐛 **Større modal**, modaler ser nå bedre ut på alle typer skjermer. Dette fikk vi mye feedback på, og det er bra at dere sier ifra! ([lego-webapp#3531](https://github.com/webkom/lego-webapp/pull/3531))
- 🐛 **Diverse bugfikser** ([lego-webapp#3732](https://github.com/webkom/lego-webapp/pull/3732)), ([lego-webapp#3727](https://github.com/webkom/lego-webapp/pull/3727)), ([lego-webapp#3716](https://github.com/webkom/lego-webapp/pull/3716)), ([lego-webapp#3697](https://github.com/webkom/lego-webapp/pull/3697)), ([lego-webapp#3696](https://github.com/webkom/lego-webapp/pull/3696)), ([lego-webapp#3695](https://github.com/webkom/lego-webapp/pull/3695)), ([lego-webapp#3688](https://github.com/webkom/lego-webapp/pull/3688)), ([lego-webapp#3681](https://github.com/webkom/lego-webapp/pull/3681)), ([lego-webapp#3678](https://github.com/webkom/lego-webapp/pull/3678)), ([lego-webapp#3665](https://github.com/webkom/lego-webapp/pull/3665)), ([lego-webapp#3651](https://github.com/webkom/lego-webapp/pull/3651)), ([lego-webapp#3650](https://github.com/webkom/lego-webapp/pull/3650)), ([lego-webapp#3649](https://github.com/webkom/lego-webapp/pull/3649)), ([lego-webapp#3633](https://github.com/webkom/lego-webapp/pull/3633)), ([lego-webapp#3632](https://github.com/webkom/lego-webapp/pull/3632)), ([lego-webapp#3626](https://github.com/webkom/lego-webapp/pull/3626)), ([lego-webapp#3617](https://github.com/webkom/lego-webapp/pull/3617)), ([lego-webapp#3616](https://github.com/webkom/lego-webapp/pull/3616)), ([lego-webapp#3610](https://github.com/webkom/lego-webapp/pull/3610)), ([lego-webapp#3595](https://github.com/webkom/lego-webapp/pull/3595)), ([lego-webapp#3593](https://github.com/webkom/lego-webapp/pull/3593)), ([lego-webapp#3592](https://github.com/webkom/lego-webapp/pull/3592)), ([lego-webapp#3588](https://github.com/webkom/lego-webapp/pull/3588)), ([lego-webapp#3585](https://github.com/webkom/lego-webapp/pull/3585)), ([lego-webapp#3584](https://github.com/webkom/lego-webapp/pull/3584)), ([lego-webapp#3575](https://github.com/webkom/lego-webapp/pull/3575)), ([lego-webapp#3557](https://github.com/webkom/lego-webapp/pull/3557)), ([lego-webapp#3550](https://github.com/webkom/lego-webapp/pull/3550)), ([lego-webapp#3549](https://github.com/webkom/lego-webapp/pull/3549)), ([lego-webapp#3542](https://github.com/webkom/lego-webapp/pull/3542)), ([lego-webapp#3541](https://github.com/webkom/lego-webapp/pull/3541)), ([lego-webapp#3537](https://github.com/webkom/lego-webapp/pull/3537)), ([lego-webapp#3526](https://github.com/webkom/lego-webapp/pull/3526)), ([lego-webapp#3520](https://github.com/webkom/lego-webapp/pull/3520)), ([lego-webapp#3519](https://github.com/webkom/lego-webapp/pull/3519)), ([lego#3214](https://github.com/webkom/lego/pull/3214)), ([lego#3227](https://github.com/webkom/lego/pull/3227))
- 🧹 **Diverse opprydninger** ([lego-webapp#3625](https://github.com/webkom/lego-webapp/pull/3625)), ([lego-webapp#3591](https://github.com/webkom/lego-webapp/pull/3591)), ([lego-webapp#3590](https://github.com/webkom/lego-webapp/pull/3590)), ([lego-webapp#3589](https://github.com/webkom/lego-webapp/pull/3589)), ([lego-webapp#3666](https://github.com/webkom/lego-webapp/pull/3666)), ([lego-webapp#3679](https://github.com/webkom/lego-webapp/pull/3679)),
