#import "../../../../template/verbale.typ": *


#show: doc => verbale(titolo: "Coordinamento Sprint 13", ordine-del-giorno: (
  "Revisione Sprint 13",
  "Revisione sincrona di documenti e software prodotti nello sprint 13",
  "Organizzazione nuovo incontro con Ergon",
  "Coordinamento per lo Sprint 14",
), data: [17/04/2025], ora: [15:00-17:30], tipo: "interno", presenze: (
  "Luca Ribon",
  "Verificatore",
  "2h30min",
  "Filippo Sabbadin",
  "Verificatore",
  "2h30min",
  "Francesco Fragonas",
  "Verificatore",
  "2h",
  "Gabriele Magnelli",
  "Relatore",
  "2h30min",
  "Luca Rossi",
  "Verificatore",
  "2h30min",
), doc)

= Revisione Sprint 13
Durante la riunione del 28 Aprile 2025 sono stati discussi i risultati dello Sprint 13, iniziati con un controllo
sull'architettura e stato del #gloss[frontend].

== Revisione sincrona di documenti e software
Durante la riunione sono stati revisionati sia il prodotto software sia la documentazione prodotta nello sprint 13.
Non sono comparsi problemi particolari riguardante la documentazione, ma riguardo il prodotto software è sorto un dubbio relativo alla gestione storica dei messaggi all'interno delle chat.

== Organizzazione nuovo incontro con Ergon
Per risolvere il dubbio sopra descritto il gruppo ha deciso di organizzare un incontro con l'azienda Ergon che si terrà il 05-05-20205 alle ore 15:00.

= Assegnazione ruoli
- I *nuovi ruoli* per lo Sprint 11 sono:
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 8pt,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Membro*], [*Ruolo Sprint 13*], [*Ruolo Sprint 14*]),
  "Matteo Bazzan",
  "Programmatore",
  "Programmatore",
  "Francesco Fragonas",
  "Verificatore",
  "Programmatore",
  "Gabriele Magnelli",
  "Progettista",
  "Programmatore",
  "Luca Ribon",
  "Programmatore",
  "Programmatore",
  "Luca Rossi",
  "Amministratore",
  "Responsabile",
  "Filippo Sabbadin",
  "Programmatore",
  "Programmatore",
  "Yi Hao Zhuo",
  "Programmatore",
  "Progettista",
)

= Azioni future
Per le azioni future, il gruppo ha deciso di dare più spazio, in questo sprint, allo sviluppo dell'applicazione, pertanto gli obiettivi da raggiungere saranno:
Parte frontend
- #issue("20", repo: "MVP")[*Integrazione backend e frontend*];
- #issue("30", repo: "Suppl-AI")[*Continuare frontend delle chat*];
- #issue("35", repo: "Suppl-AI")[*Visualizzazione e modifica risposta delle FAQ*];
- #issue("36", repo: "Suppl-AI")[*Gestione statistiche frontend*];
Parte backend
- #issue("14", repo: "Database-API")[*Valutazione risposte del bot in chat*];
- #issue("16", repo: "Database-API")[*Gestione statistiche backend*];
- #issue("13", repo: "Database-API")[*Gestione recupero password*];
Per quanto riguarda la documentazione:
- #issue("395", repo: "documentazione")[*Aggiornare PdP con sprint 13*];
- #issue("399", repo: "documentazione")[*Stesura verbale interno 28/04/2025*];
- #issue("400", repo: "documentazione")[*Stesura diario di bordo 18*];