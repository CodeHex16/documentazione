#import "../../../../template/verbale.typ": *


#show: doc => verbale(
  titolo: "Coordinamento Sprint 12",
  ordine-del-giorno: (
    "Revisione Sprint 11",
    "Analisi sullo stato di avanzamento",
    "Visione interfaccia amministratore",
    "Studio di gruppo per l’esecuzione dei servizi sui sistemi di tutti i membri",
    "Discussione sui documenti di progetto",
    "Coordinamento per lo Sprint 12",
  ),
  data: [09/04/2025],
  ora: [15:00-18:00],
  tipo: "interno",
  presenze: (
    "Matteo Bazzan",
    "Verificatore",
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
    "Relatore",
    "2h",
  ),
  doc,
)

= Revisione Sprint 11
Durante la riunione del 9 Aprile 2025 sono stati discussi i risultati dello Sprint 11, partendo dalla visione dell'interfaccia amministratore e quindi del lavoro svolto sulla parte #gloss[frontend].

== Visione interfaccia amministratore
All'inizio della riunione è stato visionato il lavoro svolto nella parte frontend. In particolare, nella pagina home visualizzata dall'amministratore appena avrà effettuato il login sarà presente una sezione composta da sei pulsanti con cui interagire per accedere alle seguenti pagine:
- *Gestione dei Clienti*;
- *Documenti Aziendali*;
- *Gestione #gloss[FAQ]*;
- *Statistiche*;
- *Gestione Piattaforma*;

Per quanto riguarda le pagine relative a *Gestione dei Clienti*, *Documenti Aziendali* e *Gestione FAQ* si è deciso di implementare le funzionalità di aggiunta, modifica ed eliminazione tramite dei pop-up appositi.

== Studio di gruppo per l’esecuzione dei servizi sui sistemi di tutti i membri
Successivamente alla visione dell'interfaccia amministratore i vari membri del gruppo hanno provato l'applicativo sui propri dispositivi verificando che tutto funzionasse correttamente senza nessun errore particolare.

== Discussione sui documenti di progetto
Alla fine della riunione è stato visionato lo stato di avanzamento dei documenti relativi all'intero progetto. In questa parte non ci sono stati particolari dubbi e quindi il gruppo ha deciso di proseguire con la loro stesura e/o correzione.

= Assegnazione ruoli
- I *nuovi ruoli* per lo Sprint 11 sono:
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 8pt,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Membro*], [*Ruolo Sprint 10*], [*Ruolo Sprint 11*]),
  "Matteo Bazzan",
  "Programmatore",
  "Analista",
  "Francesco Fragonas",
  "Programmatore",
  "Programmatore",
  "Gabriele Magnelli",
  "Amministratore",
  "Programmatore",
  "Luca Ribon",
  "Amministratore",
  "Programmatore",
  "Luca Rossi",
  "Responsabile",
  "Progettista",
  "Filippo Sabbadin",
  "Verificatore",
  "Progettista",
  "Yi Hao Zhuo",
  "Verificatore",
  "Programmatore",
)

= Azioni future
Per le azioni future, il gruppo ha deciso di continuare sempre con lo sviluppo dell'applicazione, continuando ad
implementare il frontend:
- #issue("14", repo: "Suppl-AI")[*Continuare l'implementazione  dell'interfaccia frontend amministratore*]
- #issue("18", repo: "Suppl-AI")[*Implementare la gestione dei colori che il fornitore può scegliere per personalizzare la piattaforma*]
- #issue("11", repo: "Database-API")[*Gestione dell'aggiunta dell'account utente parte backend*]

Inoltre si è deciso di continuare la stesura e/o la correzione dei documenti:
- #issue("351")[*Stesura verbale interno 2025-04-09*]
- #issue("353")[*Diario di bordo 15*]
- #issue("340")[*Sistemare grafici AdR*]
- #issue("337")[*Continuazione stesura Specifica Tecnica*]
- #issue("350")[*Aggiornare Piano di Progetto con Sprint 11*]
- #issue("355")[*Aggiungere metriche di qualità in NdP*]
