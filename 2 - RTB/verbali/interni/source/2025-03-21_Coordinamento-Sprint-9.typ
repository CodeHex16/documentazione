#import "../../../../template/verbale.typ": *

#show : doc => verbale(
  titolo: "Coordinamento sprint 9",
  ordine-del-giorno: ("Simulazione presentazione con il prof. Tullio", "Assegnazione ruoli", "Azioni future",),
  data: [19/03/2025],
  ora: [9:00-12:00],
  tipo: "interno",
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
    "Yi Hao Zhuo",
    "Verificatore",
    "3h",
    "Luca Rossi",
    "Verificatore",
    "3h",
  ),
  doc,
)

= Simulazione presentazione con il prof. Vardanega
Durante l'incontro sono state controllate le slide della presentazione da fare con il prof. Vardanega. Il gruppo ha fatto inoltre una prova di presentazione per verificare che tutto fosse corretto, ponendo attenzione ai contenuti e al tempo impiegato.

= Assegnazione Ruoli
I nuovi ruoli per lo sprint 9 sono i seguenti:
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 8pt,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Membro*], [*Ruolo Sprint 8*], [*Ruolo Sprint 9*]),
  "Matteo Bazzan",
  "Programmatore",
  "Progettista",
  "Francesco Fragonas",
  "Programmatore",
  "Programmatore",
  "Gabriele Magnelli",
  "Verificatore",
  "Responsabile",
  "Luca Ribon",
  "Analista",
  "Progettista",
  "Luca Rossi",
  "Amministratore",
  "Progettista",
  "Filippo Sabbadin",
  "Responsabile",
  "Programmatore",
  "Yi Hao Zhuo",
  "Analista",
  "Amministratore",
)

= Azioni future
Il gruppo ha discusso riguardo lo stato di avanzamento del progetto e delle attività da svolgere per il prossimo sprint.
Sono stati assegnati i seguenti compiti:
- #issue("301", "Diagrammi delle classi iniziale per discutere dell'architettura", repo: "documentazione").
- #issue("302", "Correggere Adr a seguito di TB", repo: "documentazione").
- #issue("303", "Diario di bordo 12", repo: "documentazione").
- #issue("298", "Studio struttura e contenuto Manuale utente", repo: "documentazione").
- #issue("2", "Studio configurazione CI/CD per la parte di testing di python", repo: "MVP").
- #issue("3", "Studio ottimizzazione contesto/RAG dell'LLM", repo: "LLM-API").