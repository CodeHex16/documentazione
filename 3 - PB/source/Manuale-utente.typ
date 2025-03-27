#import "../../template/documenti.typ": *
#import "../../template/i-figured.typ"

#show: doc => documento(titolo: "Manuale utente", data: [24/03/2025], ruoli: (
  "Luca Ribon",
  "Verificatore",
  "Filippo Sabbadin",
  "Redattore",
  ), sommario: [Manuale utente], versioni: ("0.1.0", "24/03/2025", "Filippo Sabbadin", "Prima stesura", ""), doc)
// spaciugo per aggiungere l'indice delle immagini
#set page(numbering: "I")
#counter(page).update(3)
#show heading: i-figured.reset-counters.with(level: 0)
#show figure: i-figured.show-figure.with(level: 0)
#i-figured.outline(title: "Lista di immagini")
#i-figured.outline(target-kind: table, title: [Lista di tabelle])
#pagebreak()
#set page(numbering: "1")
#counter(page).update(1)

= Introduzione

== Scopo del prodotto

Il progetto prevede lo sviluppo di un #gloss[Chatbot] avanzato, basato su modelli linguistici #gloss[LLM] (Large
Language Models), pensato per migliorare la comunicazione tra aziende fornitrici e i loro clienti. Questo #gloss[assistente virtuale] permetterà
agli utenti di ottenere rapidamente e in modo intuitivo informazioni dettagliate su prodotti o servizi offerti,
eliminando la necessità di contattare direttamente l’azienda.

== Scopo del documento
Lo scopo di questo documento è quello di fornire una guida all'utilizzo del prodotto, spiegandone l'installazione, i requisiti consigliati per garantire il corretto funzionamento dell'applicazione, le funzionalità principali e le modalità di utilizzo.

== Glossario

Per facilitare la comprensione di questo documento, viene fornito un glossario che chiarisce il significato dei termini
specifici utilizzati nel contesto del progetto. Ogni termine di glossario è contrassegnato con un asterisco "\*" in
apice e collegato direttamente alla pagina web del glossario, permettendo così di accedere immediatamente alla
definizione completa del termine. Le definizioni sono disponibili nel documento: #link("https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf")[Glossario.pdf];\
e nella seguente pagina web: #link("https://codehex16.github.io/glossario").

== Riferimenti

=== Riferimenti normativi
- Capitolato C7 - Assistente Virtuale Ergon:\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")\ _(ultima consultazione: 03-03-2025)_; //da tenere aggiornato

- Regolamento del progetto didattico:\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")\

- Norme di progetto:\ #link("https://codehex16.github.io/docs/2%20-%20RTB/Norme-di-Progetto.pdf")\ _(versione 1.0.0)_;

=== Riferimenti informativi
- Sito del gruppo CodeHex16:\ #link("https://codehex16.github.io/")\ _(ultima consultazione: 06-03-2025)_;
//da tenere aggiornato

- Glossario:
  - Documento: #link("https://codehex16.github.io/docs/glossario/glossario.pdf") _(versione 1.0.0)_;
  - Pagina web: #link("https://codehex16.github.io/glossario.html") _(ultima consultazione 06-03-2025)_;

= Requisiti consigliati

In questa sezione vengono elencati i requisiti consigliati per garantire il corretto funzionamento del prodotto. Questi
requisiti non sono necessari, ma sono comunque consigliati visto che il gruppo ha lavorato con essi, ed è in grado di
garantire il corretto funzionamento del prodotto.

== Requisiti di sistema

Alcuni membri del gruppo hanno utilizzato il sistema operativo Windows 11 durante lo sviluppo del progetto, altri invece
utilizzavano Ubuntu/*versione*/, dunque i requisiti di sistema consigliati sono i seguenti:

#figure(table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
  table.header([*Sistema*], [*Versione*]),
  "Windows 11",
  "24H2",
  "Ubuntu",
  "",
), caption: "Requisiti di sistema")

== Requisiti hardware
Per hardware si intendono le componenti della macchina dove verrà utilizzato il prodotto. I requisiti consigliati sono i
seguenti:
#figure(table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
  table.header([*Hardware*], [*Requisito*]),
  "Processore",
  "Quad-core 2.38GHz",
  "Memoria primaria",
  "2GB DDR4",
  "Memoria secondaria",
  // TODO: da verificare quando sapremo cosa salveremo in locale
  "500MB",
  "Connessione internet",
  // TODO: da verificare
  "5mbps",
), caption: "Requisiti hardware")

== Requisiti software

Visto che il gruppo sta sviluppando una webapp, per software si intende un browser web. I browser e le loro versioni
consigliate sono quelle utilizzate dal gruppo all'inizio dello sviluppo del progetto:
#figure(table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
  table.header([*Browser*], [*Versione*]),
  "Mozilla Firefox",
  "136.0.2 (64-bit)",
  "Google Chrome",
  "134.0.6998.165 (Build ufficiale) (64 bit)",
), caption: "Requisiti software")

= Installazione

////////////////////////////

= Eseguire l'accesso

== Registrazione

== Login

= Interfaccia principale

== Lista chat

== Impostazioni profilo

= Impostazioni

== Utente

== Fornitore
