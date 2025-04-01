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
- Design homepage
- Discussione sulla rappresentazione con i diagrammi UML
- Discussione sullo stato di avanzamento del progetto
- Chieste domande ad Ergon:
  - Manuale utente o sviluppatore?
  - Richiesto documento per migliorare l'indicizzazione...

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
- #issue("185")[*Progressi norme di progetto*]
