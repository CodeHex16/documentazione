#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Coordinamento Sprint 6",
    ordine-del-giorno: ("Revisione Sprint 5", "Coordinamento per lo Sprint 6", "Condivisione progressi documenti RTB","Scelta del modello LLM", "Schedulazione incontro con Ergon"),
    data: [06/01/2025],
    ora: [15:30-18:00],
    tipo: "interno",
    versioni: (
      "0.1.0","06/01/2025","Matteo Bazzan","Prima stesura","Luca Ribon"
    ),
    presenze: (
        "Matteo Bazzan", "Relatore", "2h30m",
        "Luca Ribon","Verificatore", "2h30m",
        "Filippo Sabbadin", "Verificatore", "2h",
        "Francesco Fragonas", "Verificatore", "2h",
        "Yi Hao Zhuo", "Verificatore", "2h30m",
        "Luca Rossi", "Verificatore", "1h",
    ),
    doc,
)

= Revisione Sprint 5
Durante la riunione è stato analizzato il lavoro svolto nello *Sprint 5*, in particolare sono stati condivisi i progressi e risolto alcuni dubbi sui seguenti documenti :
- Analisi dei Requisiti
- Norme di Progetto
- Piano di Qualifica
- Piano di Progetto

Inoltre è stato condiviso lo studio sui vari LLM in commercio. 

= Scelta del modello LLM
Durante lo Sprint 5 è stata condotta un’analisi dei modelli LLM disponibili si è deciso di utilizzare *GPT-4o mini* per i primi test. In caso di performance non in linea con i requisiti, si valuterà un modello più performante tra le offerte di OpenAI.

È stato scelto GPT-4o mini perché:
- *Comprensione*: Fornisce buone capacità di comprensione del linguaggio naturale, utili allo sviluppo di un chatbot.
- *Costo*: Presenta un costo molto contenuto:
  - \$0.150/1M input tokens
  - \$0.600/1M output tokens
- *Token*: Ha una finestra di contesto (context window) di 128,000 tokens, abbastanza per avere contesto sufficiente per rispondere correttamente alle domande poste al chatbot
- *Velocità*: Fornisce un output speed di 125.1 tokens al secondo, più veloce della media degli altri modelli
#figure(
  image("../imgs/gpt-4o-mini-pricing.png", width: 75%),
  caption: [
    Confronto tra i costi di input e output per un 1M di token di modelli OpenAI
  ],
)

#figure(
  image("../imgs/gpt-4o-mini-benchmark.png", width: 80%),
  caption: [
    Confronto delle prestazioni di GPT-4o mini con altri modelli concorrenti nelle categoria con cui viene valutata l'intelligenza degli LLM
  ],
)

= Schedulazione incontro con l'azienda Ergon
È necessario organizzare un incontro con l'azienda Ergon per:
- condividere gli use case finora individuati
- illustrare la scelta del modello LLM e richiedere le credenziali di accesso alla piattaforma di OpenAI, così da avviare i primi test tramite le API.

= Coordinamento Sprint 6
- I *nuovi ruoli* per lo Sprint 6 sono:
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 8pt,
  fill: (x,y) => if (y== 0) { luma(230) },
  table.header(
    [*Membro*], [*Ruolo Sprint 3*], [*Ruolo Sprint 4*]
  ),
  "Matteo Bazzan","Progettista","Verificatore",
  "Francesco Fragonas","Responsabile","Progettista",
  "Gabriele Magnelli","Amministratore","Responsabile",
  "Luca Ribon","Analista","Amministratore",
  "Luca Rossi","Analista","Verificatore",
  "Filippo Sabbadin","Verificatore","Analista",
  "Yi Hao Zhuo","Verificatore","Verificatore"
)

= Azioni future
- Incontro con l'azienda Ergon 
- #issue("133")[*Aggiornamento Glossario*]
- #issue("149")[*Sisteamare paginazione template typst*]
- #issue("150")[*Creazione diagrammi UML per gli Use Case*]
- #issue("151")[*Continuare stesura piano di qualifica*]
- #issue("153")[*Continuare stesura norme di progetto*]
- #issue("155")[*Aggiornare piano di progetto con sprint 5*]
- #issue("3", repo: "proof-of-concept")[*Iniziare PoC per LLM e Backend*]: Inizio dello studio e sviluppo della parte del PoC riguardante il backend e gli LLM


= Fonti
- #link("https://openai.com/index/gpt-4o-mini-advancing-cost-efficient-intelligence")[GPT-4o mini - OpenAI]
- #link("https://artificialanalysis.ai/models/gpt-4o-mini")[GPT-4o mini - Artificial Analysis]
