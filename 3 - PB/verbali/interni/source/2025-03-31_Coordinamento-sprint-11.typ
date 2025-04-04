#import "../../../../template/verbale.typ": *


#show: doc => verbale(
  titolo: "Coordinamento Sprint 11",
  ordine-del-giorno: (
    "Revisione Sprint 10",
    "Analisi sullo stato di avanzamento",
    "Primo design interfaccia amministratore",
    "Discussione architettura frontend",
    "Chiarimenti sui documenti manuale utente e sviluppatore",
    "Coordinamento per lo Sprint 11",
  ),
  data: [31/03/2025],
  ora: [17:00-19:00],
  tipo: "interno",
  versioni: ("0.1.0", "31/03/2025", "Filippo Sabbadin", "Prima stesura", "",),
  presenze: (
    "Matteo Bazzan",
    "Verificatore",
    "2h",
    "Luca Ribon",
    "Verificatore",
    "2h",
    "Filippo Sabbadin",
    "Relatore",
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
Durante la riunione del 31 Marzo 2025 sono stati discussi i risultati dello Sprint 10, iniziati con un controllo sullo
stato dei documenti.

== Discussione architettura frontend
All'inizio della riunione sono state discusse le scelte prese per l'architettura da usare per il frontend e come
rappresentarla. Visto che erano ancora presenti dei dubbi, il gruppo ha deciso di inviare un'e-mail al prof. Cardin per
chiedere chiarimenti sulla rappresentazione con i grafici UML delle classi e anche su alcune correzioni del professore
al documento Analisi dei requisiti.

== Primo design interfaccia amministratore
Durante la riunione è stata presentata una bozza per il design della homepage dell'amministratore. Questa schermata sarà
visualizzata dall'amministratore appena avrà effettuato il login. L'abbozzo prevede una schermata divisa in tre parti
principali, e si può navigare scorrendo lateralmente con tre pallini sotto che indicano la posizione nella pagina. Ogni
pagina presenta circa quattro pulsanti, che aprono una nuova pagina con le proprie funzionalità.

== Chiarimenti sui documenti manuale utente e sviluppatore
Alla fine della riunione è stata presa la decisione di chiedere chiarimenti all'azienda Ergon riguardo al manuale
utente, in quanto suggerito dal prof. Vardanega durante il precedente diario di bordo. Più precisamente nell'e-mail
veniva chiesto al referente se bisogna fare un altro manuale utente per lo sviluppatore, o se il manuale utente è
sufficiente per entrambi gli utenti. Inoltre è stato chiesto un miglioramento al dataset, con un documento che fornisce
un'indicizzazione degli altri documenti per rendere le risposte del chatbot più naturali ed efficienti.

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
Per le azioni future, il gruppo ha deciso di continuare sempre con lo sviluppo dell'applicazione, iniziando ad
implementare anche il frontend, a seguito della progettazione dell'architettura:
- #issue("2", repo: "Database-API")[*Rivedere/continuare implementazione Database*]
- #issue("5", repo: "LLM-API")[*Implementazione backend LLM*]
- #issue("5", repo: "Suppl-AI")[*Implementazione interfaccia frontend amministratore*]

Inoltre si è deciso di continuare la stesura dei documenti nuovi e correggere quelli già esistenti:
- #issue("327")[*Stesura verbale interno 2025-03-31*]
- #issue("314")[*Stesura verbale interno 2025-03-26*]
- #issue("334")[*Diario di bordo 14*]
- #issue("324")[*Sistemare PdQ a seguito di RTB*]
- #issue("323")[*Sistemare retrospettiva PdP a seguito di RTB*]
- #issue("322")[*Sistemare NdP a seguito di RTB*]
- #issue("295")[*Aggiornare Piano di Progetto con Sprint 9 si può procedere*]
