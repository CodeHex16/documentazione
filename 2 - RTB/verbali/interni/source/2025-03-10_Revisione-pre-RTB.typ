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
  presenze: (
    "Matteo Bazzan",
    "Verificatore",
    "2.30h",
    "Luca Ribon",
    "Verificatore",
    "3h",
    "Filippo Sabbadin",
    "Relatore",
    "2.30h",
    "Francesco Fragonas",
    "Verificatore",
    "3h",
    "Gabriele Magnelli",
    "Verificatore",
    "2.30h",
    "Yi Hao Zhuo",
    "Verificatore",
    "3h",
    "Luca Rossi",
    "Verificatore",
    "3h",
  ),
  doc,
)

= Revisione generale dei documenti
Durante l'incontro sono stati analizzati i documenti "#gloss[Analisi dei requisiti]","#gloss[Piano di progetto]","Piano di qualifica" e "Norme
di progetto", prima di portarli alla versione "1.0.0".

= Controllo stato del PoC
Il PoC è stato preparato e testato, risultando funzionante e pronto per la presentazione.

= Stesura slide presentazione
Sono state redatte le slide per la presentazione del PoC, spiegando il motivo della scelta della realizzazione di una #gloss[webapp] anziché di un'applicazione usando .NET MAUI. Vi è stata posta molta attenzione a presentare in modo chiaro e conciso le motivazioni delle scelte delle tecnologie utilizzate confrontandole con altre, spiegandone la scelta. Viene
messo a confronto:
- Docker con LXC;
- #gloss[Svelte] con #gloss[Vue.js] e React; 
- FastAPI con Flask; 
- MongoDB con PostgreSQL;
- ChromaDB con Milvus;
- GPT-o4-mini con altri modelli, tra cui quelli proposti dal #gloss[proponente] nel capitolato e alcuni modelli individuati dal gruppo; in questo confronto è stato tenuto in considerazione anche il prezzo per #gloss[token].
Inoltre sono state aggiunte delle slide con i risultati di test eseguiti con i seguenti strumenti: Svelte, MongoDB, ChromaDB, GPT-o4-mini.

= Organizzazione nuovo incontro con Ergon
Il gruppo ha deciso di organizzare un incontro con l'azienda Ergon per presentare il PoC. L'incontro è stato fissato per il giorno 14/03/2025 alle ore 10:00.

= Azioni future
Il gruppo ha pianificato le seguenti azioni da eseguire per la prossima settimana:
- incontro con l'azienda Ergon;
- #link("https://github.com/CodeHex16/documentazione/issues/244")[terminare le slide per la presentazione RTB (con il prof. Cardin)];
- stesura delle slide per la presentazione RTB (con il prof. Vardanega);