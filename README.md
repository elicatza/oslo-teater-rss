# RSS for norske teatre

Mange teatre i Oslo tilbyr ikke RSS strømmer. Her er noen enkle
shellskript som skraper nettsidene til teatrene og gjør dataen om til gyldig
[RSS](https://www.rssboard.org/rss-specification).

- [Den Norske Operaen](https://www.operaen.no/),
- [Nationaltheatret](https://www.nationaltheatret.no/)
- [Det Norske Teatret](https://www.detnorsketeatret.no/)

[Oslonye](https://oslonye.no/) har brukbar støtte for RSS
[her](https://oslonye.no/feed/), men tittel og lenke må redigeres før bruk.

## Kjørekrav

Programmene burde fungere i de fleste Unix baserte operativsystemer med
følgende programvare installert.

- [curl](https://curl.se/docs/manpage.html)
- [jq](https://jqlang.org/)
- [pup](https://github.com/ericchiang/pup) (Kun for Nationaltheatret)

## Bruk

Last ned filene hver for seg eller klon med [Git](https://git-scm.com/). Finn
ut hvordan RSS leseren din håndterer skript og følg dokumentasjonen.

### Newsboat

Jeg bruker [Newsboat](https://newsboat.org/) og har valg å plassere filene i
`$XDG_CONFIG_HOME/newsboat/`. Legg til følgene linjer i `$XDG_CONFIG_HOME/newsboat/urls`.

```
exec:~/.config/newsboat/operaen.sh Teater "~Operaen"
exec:~/.config/newsboat/nationaltheatret.sh Teater "~Nationaltheatret"
exec:~/.config/newsboat/detnorsketeatret.sh Teater "~Det Norske Teatret"
```

```bash
$XDG_DATA_HOME/newsboat/
```

## Videre arbeid

- Lag et filter for Oslonye
- Skriv skript Christianiateater
- Skriv skript Folketeateret

