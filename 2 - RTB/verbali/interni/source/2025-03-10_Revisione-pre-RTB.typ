#import "../../../../template/verbale.typ": *

#show : doc => verbale(
  titolo: "Revisione pre-RTB",
  ordine-del-giorno: (
    "Revisione generale dei documenti",
    "Controllo stato del PoC",
    "Stesura slide presentazione",
    "Organizzazione nuovo incontro con Ergon",
  ),
  data: [10/03/2025],
  ora: [15:00-18:00],
  tipo: "interno",
  versioni: ("0.1.0", "10/03/2025", "Filippo Sabbadin", "Prima stesura", "",),
  presenze: (
    "Matteo Bazzan",
    "Verificatore",
    "3h",
    "Luca Ribon",
    "Verificatore",
    "4h",
    "Filippo Sabbadin",
    "Relatore",
    "3h",
    "Francesco Fragonas",
    "Verificatore",
    "4h",
    "Gabriele Magnelli",
    "Verificatore",
    "3h",
    "Yi Hao Zhuo",
    "Verificatore",
    "4h",
    "Luca Rossi",
    "Verificatore",
    "4h",
  ),
  doc,
)

= Revisione generale dei documenti
Durante l'incontro sono stati analizzati i documenti "Analisi dei requisiti","Piano di progetto","Piano di qualifica" e "Norme
di progetto", tutti portati alla versione "1.0.0".

= Controllo stato del PoC
Il PoC è stato preparato e testato, risultando funzionante e pronto per la presentazione.

= Stesura slide presentazione
Sono state stese le slide per la presentazione del PoC, spiegando il motivo della scelta della relizzazione di una
webapp anziché di un'applicazione usando .NET MAUI. Vi è stata posta molta attenzione a presentare in modo chiaro e
conciso le motivazioni delle scelte delle tecnologie utilizzate confrontandole con altre, spiegandone la scelta. Viene
messo a confronto:
- Docker con LXC;
- Svelte con Vue.js e React; 
- FastAPI con Flask; 
- MongoDB con Postgre;
- ChromaDB con Milvus;
- GPT-o4-mini con gli altri LLM proposti dall'azienda più quelli semore di OpenAI, guardando anche il prezzo.
Inoltre sono state aggiunte delle slide con i risultati di test eseguiti con i seguenti strumenti: Svelte, MongoDB,
ChromaDB, GPT-o4-mini.

= Organizzazione nuovo incontro con Ergon
Il gruppo ha deciso di organizzare un incontro con l'azienda Ergon per presentare il PoC. L'incontro è stato fissato per
il giorno 14/03/2025 alle ore 10:00.

= Azioni future
Il gruppo ha pianificato le seguenti azioni da eseguire per la prossima settimana:
- incontro con l'azienda Ergon;
- terminare le slide per la presentazione RTB (con il prof. Cardin);
- stesura delle slide per la presentazione RTB (con il prof. Tullio);