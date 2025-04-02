#import "../../../../template/verbale.typ": *


#show: doc => verbale(
  titolo: "Coordinamento Sprint 10",
  ordine-del-giorno: (
    "Revisione Sprint 9",
    "Analisi sullo stato di avanzamento",
    "Correzione a seguito di RTB",
    "Discussione sulle nuove norme di progetto riguardo lo sviluppo",
    "Coordinamento per lo Sprint 10",
  ),
  data: [26/03/2025],
  ora: [15:00-18:00],
  tipo: "interno",
  versioni: ("0.1.0", "26/03/2025", "Filippo Sabbadin", "Prima stesura", "",),
  presenze: (
    "Matteo Bazzan",
    "Verificatore",
    "3h",
    "Luca Ribon",
    "Verificatore",
    "3h",
    "Filippo Sabbadin",
    "Relatore",
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
correzioni suggerite al documento Analisi dei requisiti da parte del prof. Cardin, e sono stati chiesti alcuni
chiarimenti via e-mail.//- Anche documenti di prof. Vardanega
== Correzioni sull'Analisi dei requisiti

== Discussione sulle nuove norme di progetto riguardo lo sviluppatore

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
- #issue("7", repo: "MVP")[*Studio architettura Suppl-AI*]
- #issue("321")[*Diario di bordo 13*]
- #issue("325")[*Verifica struttura manuale utente*]
- #issue("6", repo: "Suppl-AI")[*Definire l'interfaccia fornitore*]
- #issue("7", repo: "LLM-API")[*Implementare architettura LLM-API*]
- #issue("6", repo: "LLM-API")[*Progettazione Architettura LLM-API*]
- #issue("16", repo: "MVP")[*Diagramma delle classi iniziale per discutere dell'architettura*]
- #issue("299")[*Studio struttura e contenuto Manuale sviluppatore*]