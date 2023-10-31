---
layout: post
title: September og Oktober 2023
author: Bestem0r
---

Hei og hogg! Ny månad, ny utviklarblogg! 🎉

Dei siste to månadane har me i Webkom jobba jamnt og trutt for å forbedre og vidareutvikle abakus.no og dei andre tenestene våre. 
Som ny bloggansvarleg er det derfor med stor ære og glede at eg no kan presentere nettopp kva me i Webkom har jobba med i desse haustmånadane.

Men før me går i gong, har du kanskje merka at noko er litt utanom det vanlege? Noko som skurrar litt når du les desse orda? Det stemmer! Dette og kommande innlegg kjem nemleg til å bli skrivne på det vakre landsmålet vårt, nynorsk! 🇳🇴

Det har seg nemleg slik at etter ei rask undersøking, har eg fått inntrykk av at det er forsvinnande lite nynorsk nytta på abakus sine sider. Så får å bidra til å rette på dette har eg bestemt meg for å skrive utviklarbloggen på nynorsk! 🤓 (Skriv gjerne ein kommentar om du er ueinig i dette valget, så kan me ta ein diskusjon om det!)

Nok målprat, la oss gå i gang med å sjå på kva me har fått til dei siste to månadane!


## Endringslogg for August 2023

- 🚀 - Ny funksjonalitet
- ✨ - Forbedret funksjonalitet
- 🎨 - Designendring
- 🧹 - Opprydning
- 🐛 - Bugfiks


- 🚀 **Eksterne lenkjer** i navigasjonssida ([lego-webapp#4212](https://github.com/webkom/lego-webapp/pull/4212))
- 🚀 **Administratorar** kan no registrere fleire samstundes ([lego-webapp#4220](https://github.com/webkom/lego-webapp/pull/4220))
- 🚀 **Lagt til felt** for arrangement-organisator ([lego#3496](https://github.com/webkom/lego/pull/3496)), ([lego-webapp#4155](https://github.com/webkom/lego-webapp/pull/4155))
- 🚀 **Arrangementansvarlige** kan no sjå allergiliste for arrangementet ([lego#3495](https://github.com/webkom/lego/pull/3495))
- 🚀 **Vinner av veldedighetsfesten** har no fått si ramme ([lego-webapp#4175](https://github.com/webkom/lego-webapp/pull/4175))
- 🚀 **Lag til kort** for advarsler ([lego-webapp#4191](https://github.com/webkom/lego-webapp/pull/4191))
- 🚀 **Lagt til sortering** på adminsida til admissions ([admissions#1217](https://github.com/webkom/admissions/pull/1217))
- 🚀 **Lagt til lenkje** for påmelding til abakus for ikkje-medlem ([admissions#1219](https://github.com/webkom/admissions/pull/1219))
- ✨ **Endra tidspunkt for spørreundersøkelser** til 14:30 ([lego-webapp#4211](https://github.com/webkom/lego-webapp/pull/4211))
- ✨ **Admissions** støtter no JSON schema ([admissions#1180](https://github.com/webkom/admissions/pull/1180)), ([admissions#1179](https://github.com/webkom/admissions/pull/1179)), ([admissions#1178](https://github.com/webkom/admissions/pull/1178)), ([lego-webapp#4160](https://github.com/webkom/lego-webapp/pull/4160))
- ✨ **Vote administrasjonsside** er no skrive om til Svelte ([vote#601](https://github.com/webkom/vote/pull/601)) ([vote#609](https://github.com/webkom/vote/pull/609))
- ✨ **Lagt til standard placeholder** for valg inputs ([lego-webapp#4190](https://github.com/webkom/lego-webapp/pull/4190))
- ✨ **Bytta ut jest** med vitest ([lego-webapp#4218](https://github.com/webkom/lego-webapp/pull/4218))
- ✨ **Gamle møter** vert no synt dersom ein ikkje har nokre kommande møter ([lego-webapp#4239](https://github.com/webkom/lego-webapp/pull/4239))
- ✨ **Lagt til "Security and Cloud Computing"** i gyldige FEIDE-grupper ([lego#3476](https://github.com/webkom/lego/pull/3476))
- ✨ **Diverse forbedringer** ([lego#3511](https://github.com/webkom/lego/pull/3511)) ([lego-webapp#4165](https://github.com/webkom/lego-webapp/pull/4165)), ([lego-webapp#4242](https://github.com/webkom/lego-webapp/pull/4242)), ([lego#3499](https://github.com/webkom/lego/pull/3499))
- ✨ **Slått saman** adminsidene i admissions ([admissions#1232](https://github.com/webkom/admissions/pull/1232))
- 🎨 **Opddatert bildegalleri, kommentarfelt og lenkjeikoner** ([lego-webapp#4200](https://github.com/webkom/lego-webapp/pull/4200))
- 🎨 **Nytt design** på navigasjonsbaren ([lego-webapp#4188](https://github.com/webkom/lego-webapp/pull/4188)), ([lego-webapp#4234](https://github.com/webkom/lego-webapp/pull/4234))
- 🎨 **Oppdatert design** på statistikkside for arrangement ([lego-webapp#4203](https://github.com/webkom/lego-webapp/pull/4203)), ([lego-webapp#4146](https://github.com/webkom/lego-webapp/pull/4146))
- 🎨 **Forbedra knappar og feilmeldingar** i skjema ([lego-webapp#4222](https://github.com/webkom/lego-webapp/pull/4222))
- 🎨 **Avskrudde knappar/sjekkboksar** syner no default cursor ([lego-webapp#4167](https://github.com/webkom/lego-webapp/pull/4167))
- 🎨 **Fiksa posisjon** til tekst med ikon (Takk til [jepunnerud](https://github.com/jepunnerud)!) ([lego-webapp#4202](https://github.com/webkom/lego-webapp/pull/4202))
- 🎨 **Diverse designfikser** ([lego-webapp#4184](https://github.com/webkom/lego-webapp/pull/4184)), ([lego-webapp#4241](https://github.com/webkom/lego-webapp/pull/4241)), ([lego-webapp#4183](https://github.com/webkom/lego-webapp/pull/4183)), ([lego-webapp#4163](https://github.com/webkom/lego-webapp/pull/4163)), ([lego-webapp#4233](https://github.com/webkom/lego-webapp/pull/4233)), ([lego-webapp#4230](https://github.com/webkom/lego-webapp/pull/4230)), ([lego-webapp#4232](https://github.com/webkom/lego-webapp/pull/4232)), ([lego-webapp#4171](https://github.com/webkom/lego-webapp/pull/4171)), ([lego-webapp#4179](https://github.com/webkom/lego-webapp/pull/4179)), ([lego-webapp#4246](https://github.com/webkom/lego-webapp/pull/4246))
- 🎨 **Flytta festa oppslag** over avstemningar på mobil ([lego-webapp#4243](https://github.com/webkom/lego-webapp/pull/4243))
- 🧹 **Nemnt lego-bricks** i dokumentasjonen ([lego-webapp#4159](https://github.com/webkom/lego-webapp/pull/4159))
- 🧹 **Endra "komtek" til "cybdata"** ([lego-webapp#4225](https://github.com/webkom/lego-webapp/pull/4225))
- 🧹 **Endringar i dockerfila** til vote([vote#613](https://github.com/webkom/vote/pull/613)), ([vote#612](https://github.com/webkom/vote/pull/612)), ([vote#611](https://github.com/webkom/vote/pull/611))
- 🧹 **Oppdaterte README** til adminssions ([admissions#1231](https://github.com/webkom/admissions/pull/1231))
- 🧹 **Endra "komite" til "gruppe"** i revue admission ([admissions#1216](https://github.com/webkom/admissions/pull/1216)), ([admissions#1218](https://github.com/webkom/admissions/pull/1218))
- 🧹 **Diverse opprydding** ([lego-webapp#4192](https://github.com/webkom/lego-webapp/pull/4192)), ([lego-webapp#4177](https://github.com/webkom/lego-webapp/pull/4177)), ([admissions#1230](https://github.com/webkom/admissions/pull/1230)), ([admissions#1222](https://github.com/webkom/admissions/pull/1222)), ([admissions#1220](https://github.com/webkom/admissions/pull/1220)), ([admissions#1225](https://github.com/webkom/admissions/pull/1225)),
- 🐛 **Uautoriserte brukarar** har ikkje lenger tilgong til enkelte sider på admissions ([admissions#1275](https://github.com/webkom/admissions/pull/1275))
- 🐛 **Fikset krasj** i undersøkelsesredigereren ([lego-webapp#4193](https://github.com/webkom/lego-webapp/pull/4193)),  
- 🐛 **Diverse bugfikser** ([lego-webapp#4222](https://github.com/webkom/lego-webapp/pull/4222)), ([lego-webapp#4189](https://github.com/webkom/lego-webapp/pull/4189)), ([lego#3482](https://github.com/webkom/lego/pull/3482)), ([lego-webapp#4172](https://github.com/webkom/lego-webapp/pull/4172)), ([lego-webapp#4162](https://github.com/webkom/lego-webapp/pull/4162)), ([lego-webapp#4176](https://github.com/webkom/lego-webapp/pull/4176)), ([lego-webapp#4226](https://github.com/webkom/lego-webapp/pull/4226))