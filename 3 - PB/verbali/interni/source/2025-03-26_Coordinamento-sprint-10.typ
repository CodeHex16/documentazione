#import "../../../../template/verbale.typ": *


#show: doc => verbale(
  titolo: "Coordinamento Sprint 10",
  ordine-del-giorno: (
    "Revisione Sprint 9",
    "Analisi sullo stato di avanzamento",
    "Correzione a seguito di RTB",
    "Coordinamento per lo Sprint 10",
  ),
  data: [26/03/2025],
  ora: [15:00-18:00],
  tipo: "interno",
  versioni: ("0.1.0", "26/03/2025", "Filippo Sabbadin", "Prima stesura", "",),
  presenze: (
    "Matteo Bazzan",
    "Relatore",
    "3h",
    "Luca Ribon",
    "Verificatore",
    "3h",
    "Filippo Sabbadin",
    "Verificatore",
    "3h",
    "Francesco Fragonas",
    "Verificatore",
    "3h",
    "Gabriele Magnelli",
    "Verificatore",
    "3h",
  ),
  doc,
)

= Revisione Sprint 9
Durante l'incontro sono stati controllati i lavori svolti durante lo Sprint 9. Inoltre, il gruppo ha discusso sulle
correzioni apportate al documento Analisi dei requisiti da parte del prof. Cardin, e sono stati chiesti alcuni
chiarimenti via e-mail.
- Anche documenti di Tullio

= Assegnazione ruoli
- I *nuovi ruoli* per lo Sprint 10 sono:
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 8pt,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Membro*], [*Ruolo Sprint 9*], [*Ruolo Sprint 10*]),
  "Matteo Bazzan",
  "Progettista",
  "Progettista",
  "Francesco Fragonas",
  "Programmatore",
  "Progettista",
  "Gabriele Magnelli",
  "Responsabile",
  "Programmatore",
  "Luca Ribon",
  "Progettista",
  "Progettista",
  "Luca Rossi",
  "Progettista",
  "Responsabile",
  "Filippo Sabbadin",
  "Programmatore",
  "Progettista",
  "Yi Hao Zhuo",
  "Amministratore",
  "Amministratore",
)

= Azioni future
- #issue("185")[*Progressi norme di progetto*]
