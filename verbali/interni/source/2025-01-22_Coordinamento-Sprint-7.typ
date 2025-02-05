#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Coordinamento Sprint 7",
    ordine-del-giorno: ("Revisione Sprint 6", "Discussione chiavi API fornite", "Discussione architettura base del PoC", "Discussione struttura del repo","Coordinamento per lo Sprint 7"),
    data: [06/01/2025],
    ora: [15:30-18:00],
    tipo: "interno",
    versioni: (
      "0.1.0","22/01/2025","Matteo Bazzan","Prima stesura",""
    ),
    presenze: (
        "Matteo Bazzan", "Relatore", "2h",
        "Luca Ribon","Verificatore", "2h",
        "Filippo Sabbadin", "Verificatore", "2h",
        "Francesco Fragonas", "Verificatore", "2h",
        "Yi Hao Zhuo", "Verificatore", "2h",
    ),
    doc,
)

= Revisione Sprint 6
Durante la riunione è stato analizzato il lavoro svolto nello *Sprint 6*, e dato l'elevato numero di task non concluse (a causa del periodo di sessione) abbiamo deciso di ri-schedularle al prossimo sprint.

= Discussione chiavi API di OpenAI
L'azienda Ergon ha fornito le chiavi API per l'utilizzo dei modelli LLM di OpenAI. Sono state condivise le credenziali per l'accesso alla piattaforma con tutti i membri del gruppo, ed è stato spiegato come utilizzarle per effettuare le prime prove.

= Discussione architettura base del PoC e struttura del Repository
Abbiamo pensato di strutturare il PoC in quattro parti principali:
- *Suppl-AI*: la webapp che ospiterà il chatbot
- *Suppl-Admin*: la webapp per gli amministratori che permetterà di gestire il chatbot, caricare documenti e creare il profilo degli utenti che utilizzeranno il chatbot
- *Database API*: il server che si occuperà di gestire le richieste del frontend
- *LLM Backend*: il server che si occuperà di gestire le richieste al modello LLM

Sono state create nuove repository su GitHub per ospitare i codici sorgente di questi componenti.

= Coordinamento Sprint 7
È stato deciso che lo Sprint 7 avrà una durata di 3 settimane per permettere di completare le task non concluse nello Sprint 6, e per permettere ai membri del gruppo di concentrasi sugli esami rimanenti.

È stato deciso anche di aumentare il numero di analisti per permettere di completare le task di analisi rimaste indietro e fissare un incontro con il Prof. Cardin per discutere dell'analisi dei requisiti.

- I *nuovi ruoli* per lo Sprint 7 sono:
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 8pt,
  fill: (x,y) => if (y== 0) { luma(230) },
  table.header(
    [*Membro*], [*Ruolo Sprint 6*], [*Ruolo Sprint 7*]
  ),
  "Matteo Bazzan","Verificatore","Verificatore",
  "Francesco Fragonas","Progettista","Programmatore",
  "Gabriele Magnelli","Responsabile","Amministratore",
  "Luca Ribon","Amministratore","Analista",
  "Luca Rossi","Verificatore","Responsabile",
  "Filippo Sabbadin","Analista","Analista",
  "Yi Hao Zhuo","Verificatore","Programmatore"
)

= Azioni future
- Incontro con il Prof. Cardin
- #issue("185")[*Progressi norme di progetto*]
- #issue("180")[*Aggiornare il piano di progetto con lo sprint 6*]
- #issue("151")[*Continuare stesura piano di qualifica*]
- #issue("184")[*Stesura requisiti nell'analisi dei requisiti*]
- #issue("153")[*Continuare stesura norme di progetto*]
- #issue("1", repo: "AdminPanel")[*Iniziare front-end di Pagina amministratore*]
- #issue("1", repo: "LLM-API")[*Inzio PoCchino LLM/Backend*]
