#import "../../template/documenti.typ": *

#show: doc => documento(
  titolo: "Manuale Sviluppatore",
  data: [28/03/2025],
  ruoli: (
    "Matteo Bazzan", "",
    "Luca Ribon", "Verificatore",
    "Francesco Fragonas", "",
    "Gabriele Magnelli", "Redattore",
    "Filippo Sabbadin", "",
    "Luca Rossi", "",
    "Yi Hao Zhuo", "",
  ),
  sommario: [Manuale Sviluppatore],
  versioni: (
    "0.1.0", "28/03/2025", "Gabriele Magnelli", "Prima stesura", "Luca Ribon",
  ),
  doc,
)
= Introduzione

== Scopo del documento
Questo documento è pensato e realizzato per gli sviluppatori avranno intenzione di modificare o di operare con il prodotto. Per questo lo scopo di tale documento è quello di fornire le informazioni necessarie per comprendere l'architettura e le funzionalità del prodotto software realizzato. Tali informazioni riguardano i requisiti, codice sorgente, API e librerie utilizzate.

== Scopo del prodotto
Il prodotto consiste nella creazione di un'interfaccia in stile #gloss[chatbot], accessibile tramite interfaccia mobile, che delle aziende fornitrici possono configurare in modo che l'#gloss[assistente virtuale] conosca il contesto aziendale e possa rispondere alle domande dei clienti del #gloss[fornitore].
L'assistente virtuale sfrutta un #gloss[LLM] per comprendere il contesto tramite l'analisi dei documenti aziendali.
Il fornitore, tramite un'#gloss[interfaccia web] di amministrazione, potrà inserire i documenti aziendali, memorizzare delle domande e delle risposte predefinite e gestire gli #gloss[account] dei clienti.

== Glossario
Per facilitare la comprensione di questo documento, viene fornito un glossario che chiarisce il significato dei termini specifici utilizzati nel contesto del progetto. Ogni termine di glossario è contrassegnato con un asterisco "\*" in apice e collegato direttamente alla pagina web del glossario, permettendo così di accedere immediatamente alla definizione completa del termine.\
Le definizioni sono disponibili nel documento
#link("https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf")[Glossario.pdf]
e nella seguente pagina web:
#link("https://codehex16.github.io/glossario.html")

== Riferimenti

=== Riferimenti informativi
- Glossario:
  - Documento: #link("https://codehex16.github.io/docs/glossario/glossario.pdf") _(versione 1.0.0)_;
  - Pagina web: #link("https://codehex16.github.io/glossario.html") _(ultima consultazione 07-03-2025)_;

=== Riferimenti normativi
- Capitolato C7 - #gloss[Assistente Virtuale] Ergon:
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")

- Regolamento del progetto didattico:\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")\

- Norme di progetto:\ #link("https://codehex16.github.io/docs/2%20-%20RTB/Norme-di-Progetto.pdf")\ _(versione 1.0.0)_;

- Analisi dei requisiti:\ #link("https://codehex16.github.io/docs/2%20-%20RTB/Analisi-dei-Requisiti.pdf")\ _(versione 1.0.0)_;

= Tecnologie

== Linguaggi
- Python;
- Typescript;
- JavaScript;
== Strumenti e servizi
- Git;
== Tecnologie per i test
=== Analisi statica
=== Analisi dinamica
- Github Actions;

= Configurazione
Per eseguire correttamente il prodotto software è necessario che il sistema utilizzato rispetti i seguenti requisiti minimi.

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
  "500MB",
  "Connessione internet",
  "5mbps",
), caption: "Requisiti hardware")

== Requisiti software
Visto che il gruppo sta sviluppando una webapp, per software si intende un browser web. I browser e le loro versioni consigliate sono quelle utilizzate dal gruppo all'inizio dello sviluppo del progetto:
#figure(table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
  table.header([*Browser*], [*Versione*]),
  "Chrome",
  "123+",
  "Firefox",
  "123+",
  "Safari",
  "17+",
  "Edge",
  "123+",
), caption: "Requisiti software")

= Installazione

= Preparazione ambiente di lavoro

= Documentazione delle API

= Documentazione del Client

// TODO: capire se tenere questo capitolo, magari va cambiato titolo; descrive come estendere le funzionalità del prodotto dal punto di vista del codice (aggiungere classi ecc...)
= Punti di estensione
