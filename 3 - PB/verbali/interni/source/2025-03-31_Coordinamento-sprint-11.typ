#import "../../../../template/verbale.typ": *


#show: doc => verbale(
  titolo: "Coordinamento Sprint 11",
  ordine-del-giorno: (
    "Revisione Sprint 10",
    "Analisi sullo stato di avanzamento",
    "Correzione a seguito di RTB",
    "Coordinamento per lo Sprint 11",
  ),
  data: [31/03/2025],
  ora: [17:00-19:00],
  tipo: "interno",
  versioni: ("0.1.0", "31/03/2025", "Filippo Sabbadin", "Prima stesura", "",),
  presenze: (
    "Matteo Bazzan",
    "Relatore",
    "2h",
    "Luca Ribon",
    "Verificatore",
    "2h",
    "Filippo Sabbadin",
    "Verificatore",
    "2h",
    "Francesco Fragonas",
    "Verificatore",
    "2h",
    "Gabriele Magnelli",
    "Verificatore",
    "2h",
  ),
  doc,
)

= Revisione Sprint 10
All'inizio della riunione sono state discusse le scelte prese per l'architettura da usare per il frontend e come
rappresentarla, seguito poi da un controllo generale sullo stato dei documenti. Inoltre è stata presentata una bozza per
il design della homepage del sito. Infine è stata presa la decisione di inviare un'e-mail al rappresentante di Ergon per
chiedere un chiarimento sul manuale utente e sul manuale sviluppatore, in quanto non è chiaro se bisogna scrivere un
manuale utente anche per il fornitore.

= Assegnazione ruoli
- I *nuovi ruoli* per lo Sprint 11 sono:
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 8pt,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Membro*], [*Ruolo Sprint 10*], [*Ruolo Sprint 11*]),
  "Matteo Bazzan",
  "Progettista",
  "Programmatore",
  "Francesco Fragonas",
  "Progettista",
  "Programmatore",
  "Gabriele Magnelli",
  "Programmatore",
  "Amministratore",
  "Luca Ribon",
  "Progettista",
  "Amministratore",
  "Luca Rossi",
  "Responsabile",
  "Responsabile",
  "Filippo Sabbadin",
  "Progettista",
  "Verificatore",
  "Yi Hao Zhuo",
  "Amministratore",
  "Verificatore",
)

= Azioni future
A seguito della riunione sono state decise le seguenti azioni:
- #issue("2", repo: "Database-API")[*Rivedere/continuare implementazione Database*]
- #issue("5", "Implementazione backend LLM", repo: "Implementazione backend LLM")
- #issue("5", repo: "Suppl-AI")[*Implementazione interfaccia frontend amministratore*]
- #issue("327")[*Stesura verbale interno 2025-03-31*]
- #issue("314")[*Stesura verbale interno 2025-03-26*]
- #issue("324")[*Sistemare PdQ a seguito di RTB*]
- #issue("323")[*Sistemare retrospettiva PdP a seguito di RTB*]
- #issue("322")[*Sistemare NdP a seguito di RTB*]
- #issue("295")[*Aggiornare Piano di Progetto con Sprint 9 si può procedere*]
- #issue("334")[*Diario di bordo 14*]