# webkom.github.io

> Utviklerbloggen vår på [webkom.dev](http://webkom.dev)

## Hvordan legge til et innlegg

1. Lag en ny fil i `src/content/blog/` med navnet `YYYY-MM-DD-tittel.md`
2. Legg til følgende i toppen av filen:
   ```
   ---
   title: Tittel
   description: Beskrivelse
   pubDate: YYYY-MM-DD
   author: GitHub-brukernavn
   ---
   ```
3. Skriv innlegget i markdown under dette
4. Sjekk at det ser bra ut ved å kjøre `pnpm dev` og gå til [localhost:3000](http://localhost:3000)
5. Forsikre deg om at alt er formatert riktig ved å kjøre `pnpm prettier`
6. Commit og lag en pull request :)
