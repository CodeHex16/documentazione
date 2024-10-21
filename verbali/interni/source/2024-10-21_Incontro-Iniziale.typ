#import "../../../template/template.typ": *

#show : doc => verbale(
    titolo: "Incontro conoscitivo iniziale",
    ordine-del-giorno: ("Nome del gruppo", "Logo del gruppo", "Stesura del template per documenti", "Scelta dei canali di comunicazione","Prima discussione sui capitolati"),
    data: [21/10/2024],
    ora: [14:30-16:00],
    tipo: "interno",
    presenze: (
        "Matteo Bazzan - Redattore - 1h30m",
        "Luca Ribon - Verificatore - 1h30m",
        "Francesco Fragonas - Verificatore - 1h30m",
        "Gabriele Magnelli - Verificatore - 1h30m",
        "Filippo Sabbadin - Verificatore - 1h30m",
    ),
    doc,
)

= Nome del gruppo
I partecipanti del gruppo 16 hanno proposto diversi nomi per il gruppo, tra cui:
- CodeHex16
- Hex16
- Based16
Abbiamo scelto il nome "CodeHex16" proposto da Francesco Fragonas.
= Logo del gruppo
Abbiamo scelto i seguenti loghi
#figure(
    image("../../../template/images/logo_extended.jpg", width: 10em),
    caption : [ Versione estesa del logo]
)

#figure(
    image("../../../template/images/logo.jpg", width: 3em),
    caption : [ Versione compatta del logo]
)
= Stesura del template per i documenti
È stato scelto il linguaggio Typst per la stesura dei documenti, per la semplicità d'uso e la versatilità.
= Scelta dei canali di comunicazione
Abbiamo concordato l'uso di:
- *Telegram*:  per comunicazioni testuali non ufficiali all'interno del gruppo
- *Discord*: per le riunioni a distanza di gruppo
- *GitHub*: per la gestione di documenti, asset e il versionamento dei vari file 

= Prima discussione sui capitolati
Dopo una prima analisi dei capitolati proposti, il gruppo, tramite un sondaggio nel gruppo Telegram, ha definito le seguenti preferenze:
1. C2 - _Vimar GENIALE_ - Vimar
2. C6 - _Sistema di gestione di un magazzino distribuito_ - M31
3. C9 - _BuddyBot_ - azzurrodigitale

Prosegue un'analisi più estesa nel documento  #link("https://github.com/CodeHex16/documentazione/tree/main/verbali/interni")["ValutazioneCapitolati.pdf"].