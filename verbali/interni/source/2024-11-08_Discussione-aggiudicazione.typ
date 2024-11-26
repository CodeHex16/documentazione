#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Discussione successiva all'aggiudicazione",
    ordine-del-giorno: ("Ulteriore analisi del capitolato", "Gestione issue e milestone", "Comunicazione con Proponente"),
    data: [08/11/2024],
    ora: [15:00-17:20],
    tipo: "interno",
    versioni: (
      "0.2.0","26/11/2024","Yi Hao Zhuo","Aggiunta link glossario","",
      "0.1.0","08/11/2024","Francesco Fragonas","Prima stesura", "Gabriele Magnelli"
    ),
    presenze: (
        "Matteo Bazzan","Verificatore","2h20min",
        "Luca Ribon","Amministratore" ,"2h20min",
        "Francesco Fragonas", "Responsabile", "2h20min",
        "Gabriele Magnelli","Verificatore","2h20min",
        "Filippo Sabbadin","Verificatore","2h",
    ),
    doc,
)

= Ulteriore analisi del capitolato
Il gruppo ha dedicato la sessione odierna a un'analisi più approfondita del capitolato per identificare eventuali dubbi e questioni da chiarire con il referente dell'azienda. Sono stati individuati alcuni punti critici che necessitano di ulteriori dettagli e discussione. Questi temi saranno la base di partenza per la stesura dell'analisi dei requisiti, che guiderà le fasi successive dello sviluppo del progetto.

= Definizione formale dello strumento di gestione issue e milestone
Per una gestione efficace delle attività di sviluppo, il gruppo ha scelto di utilizzare #gloss[GitHub Issue] e #gloss[GitHub Milestone] come strumenti principali di monitoraggio e pianificazione.
- *GitHub Issue* sarà utilizzato per tracciare e risolvere task, bug e problematiche emergenti.
  Sono state definite le seguenti label per meglio identificare le issue relative alla documentazione:
  - redazione: stesura di documenti
  - verifica: verifica dei documenti redatti
- *GitHub Milestone* consentirà di organizzare le attività in traguardi temporali, facilitando il controllo delle scadenze e il raggiungimento degli obiettivi progettuali.

= Comunicazione con Proponente
È stato concordato di contattare il referente dell'azienda via email per informarlo formalmente dell'aggiudicazione del progetto e per sottoporre alcuni dubbi emersi durante la riunione, in particolare riguardo alla parte tecnica e alla definizione di requisiti più dettagliati.

= Azioni future
- Ogni membro del team condurrà un'*analisi individuale delle tecnologie proposte*, esaminando #gloss[.NET MAUI] e la possibilità di costruire una #gloss[webapp] con tecnologie alternative, oltre a valutare modelli di linguaggio #gloss[LLM] proposti nel capitolato, con particolare attenzione a prestazioni, compatibilità con la lingua italiana e conformità ai requisiti del progetto.
- Il gruppo preparerà un elenco di *domande per il referente aziendale* riguardanti chiarimenti sui requisiti, preferenze tecnologiche, struttura dei dati da elaborare con l'LLM e priorità delle funzionalità richieste.