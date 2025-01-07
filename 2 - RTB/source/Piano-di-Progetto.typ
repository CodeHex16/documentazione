#import "../../template/documenti.typ" : *

#let pseudoheading(body) = {
  set align(center)
  set par(justify: false)
  smallcaps(body)
}

#show : doc => documento(
    titolo: "Piano di Progetto",
    data: [24/10/2024],
    ruoli : (
        "Matteo Bazzan","",
        "Luca Ribon","Redattore",
        "Francesco Fragonas","",
        "Gabriele Magnelli","",
        "Filippo Sabbadin","Verificatore",
        "Luca Rossi", "",
        "Yi Hao Zhuo", ""
    ),
    sommario: [],
    
    versioni : (
      "0.4.0","05/01/2025","Francesco Fragonas","Aggiunta sezione Pianificazione del lavoro e Periodi di sviluppo", "",
      "0.3.0","18/12/2024","Francesco Fragonas","Aggiunta sezione analisi dei rischi", "Filippo Sabbadin",
      "0.2.0","05/12/2024","Luca Rossi","Aggiunta sezione preventivo", "Matteo Bazzan",
      "0.1.0","24/10/2024","Luca Ribon","Definizione della struttura base e definizone delle linee guida per la stesura", "Filippo Sabbadin"
    ),
    doc,
)

= Introduzione
== Glossario
Nel documento verranno evidenziati diversi termini tramite #gloss[questo stile], questi, se premuti, reindirizzeranno alla definizione del termine nel glossario. In questo modo sarà possibile chiarire i termini tecnici o ambigui.
== Scopo del documento
Il documento #gloss[Piano di Progetto] ha come obbiettivo quello di definire le attività e nello specifico di:
- pianificare lo svolgimento delle attività
- valutare lo stato di avanzamento del progetto
- stimare i costi e le risorse necessarie, e aggiornare le stime ad ogni periodo, in modo da poter sempre gestire l'allocazione delle risorse nel modo più efficiente possibile
  - questo punto comprende anche un'analisi dei rischi in cui si può incorrere durante lo svolgimento del progetto; in questo modo possiamo prevenire o mitigare il più possibile le potenziali difficoltà future
// Decidere se integrare ulteriori dettagli riguardo al prodotto (stack tecnologico, ...)
== Scopo del prodotto
Il prodotto consiste nella creazione di un'interfaccia in stile #gloss[chatbot], accessibile tramite interfaccia mobile, che delle aziende fornitrici possono configurare in modo che l'#gloss[assistente virtuale] conosca il contesto aziendale e possa rispondere alle domande dei clienti del #gloss[fornitore].
L'assistente virtuale sfrutta un #gloss[LLM] per comprendere il constesto tramite l'analisi dei documenti aziendali.
Il fornitore, tramite un'#gloss[interfaccia web] di amministrazione, potrà inserire i documenti aziendarli, memorizzare delle domande e delle risposte predefinite e gestire gli #gloss[account] dei clienti.

// Decidere se riportare il preventivo fatto inizialmente o se fare riferimento al documento dedicato; da aggiornare con un resoconto dopo ogni fase
= Preventivo
Il preventivo è stato calcolato considerando i costi orari dei diversi ruoli coinvolti e il numero stimato di ore per ciascuno, basandosi su un'analisi dettagliata delle attività necessarie per il progetto. 
Di seguito sono riportate tabelle riepilogative che mostrano sia il compenso totale che il compenso orario per ogni ruolo, oltre alla distribuzione delle ore tra i membri del team.

== Dettagli Preventivo per Ruoli

#table(
  columns: (1.5fr, 1fr, 1fr, 1fr),
  inset: 8pt,
  align: (x,y) => if(x==0 and y>0 and y< 7) {left} else {center+horizon},
  fill: (x,y) => if (y== 0 or y == 7) { luma(230) },
  table.header(
    [*Ruolo*], [*Costo/Ora*], [*Ora/Ruolo*], [*Totale Ruolo*], 
  ),
  "Responsabile","30","63","1890",
  "Amministratore","20","70","1400",
  "Analista","25","75","1875",
  "Progettista","25","119","2975",
  "Programmatore","15","177","2655",
  "Verificatore","15","140","2100",
  "Totale","",[*644 h*],[*€ 12.895*]
)
== Distribuzione delle Ore per Membri
#table(
  columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 8pt,
  align: (x,y) => if(x==0 and y>0) {left} else {center+horizon},
  fill: (x,y) => if y== 0 or x==7 { luma(230) },
  table.header(
    [*Membro*], [*Resp.*], [*Amm.*], [*Anal.*], [*Proget.*], [*Prog.*], [*Verif.*], [*Totale*]
  ),
  "Ribon","9","10","11","17","25","20","92",
  "Bazzan","9","10","11","17","25","20","92",
  "Fragonas","9","10","11","17","25","20","92",
  "Magnelli","9","10","11","17","25","20","92",
  "Sabbadin","9","10","11","17","25","20","92",
  "Rossi","9","10","10","17","26","20","92",
  "Zhuo","9","10","10","17","26","20","92",
)

- *Metodo di calcolo*: i costi orari sono stati stimati sulla base di #gloss[standard] di mercato e di esperienze precedenti. Le ore totali per ogni ruolo sono state calcolate considerando il numero di attività assegnate e il livello di complessità delle stesse.

// Per ogni categoria descrivere i rischi, la probabilità che questi accadano, con che frequenza, le conseguenze e l'importanza di queste conseguenze, dei possibili modi per prevenirli o mitigarli.
= Analisi dei rischi

Questa sezione del Piano di Progetto ha lo scopo di identificare, analizzare e gestire i rischi che potrebbero influire sull'avanzamento delle attività e sul raggiungimento degli obiettivi prefissati. L'analisi dei rischi è essenziale per mitigare gli impatti di eventuali problematiche e garantire una gestione efficace delle difficoltà riscontrate durante lo sviluppo del progetto.

L'approccio adottato prevede l'identificazione delle principali categorie di rischio, la valutazione del grado di pericolosità e la definizione di azioni preventive e piani di mitigazione per affrontare eventuali criticità. Le categorie principali considerate includono:

- *Rischi organizzativi*: problemi legati a pianificazione, gestione delle risorse, comunicazione e rispetto di tempi o budget.
- *Rischi tecnici*: difficoltà con strumenti, tecnologie, integrazioni o imprevisti hardware/software.
- *Rischi di analisi e progettazione*: errori nella comprensione dei requisiti, specifiche poco chiare o cambiamenti significativi durante il progetto.

Secondo lo standard ISO/IEC 31000:2009, la gestione dei rischi si articola in cinque fasi chiave:

1. *Identificazione dei rischi*:
  #h(2em)
  - Riconoscere le fonti di rischio, le aree di impatto e le cause che potrebbero influenzare gli obiettivi del progetto.
  - Utilizzare attività di brainstorming per generare un elenco completo dei rischi potenziali e valutare le circostanze che potrebbero determinare il loro verificarsi.

2. *Analisi dei rischi*:
  #h(2em)
  - Valutare la probabilità e l’impatto di ciascun rischio per comprenderne la gravità.

3. *Valutazione dei rischi*:
  #h(2em)
  - Stabilire le priorità tra i rischi identificati, determinando quali richiedono interventi immediati o piani di mitigazione.

4. *Trattamento dei rischi*:
  #h(2em)
  - Implementare misure per ridurre la probabilità di accadimento e minimizzare i danni, come azioni preventive, soluzioni tecniche o piani di emergenza.

5. *Monitoraggio e revisione dei rischi*:
  #h(2em)
  -  Integrare il controllo dei rischi nel processo di gestione del progetto e effettuare verifiche periodiche per aggiornare la situazione.

== Rischi organizzativi
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x,y) => if(y>0) {left} else {center+horizon},
  fill: (x,y) => if y==0 { luma(180)} else if (y==2 or y==4){luma(230)},
  table.header(
    table.cell(
      colspan: 2
    )[*Comunicazione inefficace*]
  ),
  [*Descrizione*],[Una comunicazione scarsa o inefficace tra i membri del team o tra team diversi può portare a fraintendimenti, errori e rallentamenti nei tempi di esecuzione],
  [*Probabilità*],[Alta],
  [*Pericolosità*],[Alta],
  [*Rilevamento*],[Monitoraggio della qualità e frequenza delle riunioni di aggiornamento, analisi dei #gloss[feedback], misurazione delle performance del team],
  [*Piano di contingenza*],[Implementare strumenti di comunicazione efficaci (#gloss[GitHub], #gloss[Telegram]), riunioni regolari di aggiornamento, definire chiaramente i canali di comunicazione]
)
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x,y) => if(y>0) {left} else {center+horizon},
  fill: (x,y) => if y==0 { luma(180)} else if (y==2 or y==4){luma(230)},
  table.header(
    table.cell(
      colspan: 2
    )[*Imprecisioni nella pianificazione delle attività*]
  ),
  [*Descrizione*],[Errori nella pianificazione possono derivare da scarsa comprensione dei requisiti, stime errate di risorse o tempi, o inesperienza del team],
  [*Probabilità*],[Alta],
  [*Pericolosità*],[Alta],
  [*Rilevamento*],[Confronto periodico con il Piano di Progetto e monitoraggio delle attività tramite strumenti come board su GitHub. Ritardi costanti sono segnali chiave],
  [*Piano di contingenza*],[Revisionare il Piano di Progetto per aggiornare tempistiche e risorse. In caso di difficoltà, il Responsabile riassegna risorse o posticipa attività]
)
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x,y) => if(y>0) {left} else {center+horizon},
  fill: (x,y) => if y==0 { luma(180)} else if (y==2 or y==4){luma(230)},
  table.header(
    table.cell(
      colspan: 2
    )[*Impegni personali e universitari*]
  ),
  [*Descrizione*],[Gli impegni accademici o personali dei membri del team possono interferire con il rispetto delle scadenze del progetto],
  [*Probabilità*],[Media],
  [*Pericolosità*],[Media],
  [*Rilevamento*],[Monitoraggio delle scadenze tramite #gloss[meeting] regolari e verifica delle disponibilità segnalate su un calendario condiviso in Google Fogli],
  [*Piano di contingenza*],[Concordare una pianificazione flessibile basata sulle disponibilità indicate. In caso di necessità, ridistribuire le attività o posticipare #gloss[task] meno prioritari]
)

== Rischi tecnici
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x,y) => if(y>0) {left} else {center+horizon},
  fill: (x,y) => if y==0 { luma(180)} else if (y==2 or y==4){luma(230)},
  table.header(
    table.cell(
      colspan: 2
    )[*Inesperienza*]
  ),
  [*Descrizione*],[Il team potrebbe non avere l’esperienza necessaria nelle competenze specifiche richieste dal progetto, portando a errori, inefficienze o rallentamenti nel lavoro],
  [*Probabilità*],[Media],
  [*Pericolosità*],[Media],
  [*Rilevamento*],[Valutazione delle competenze iniziali del team, feedback regolari durante il progresso del progetto],
  [*Piano di contingenza*],[Studio indivuduale delle nuove tecnologie con allineamento continuo fra i membri del gruppo]
)
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x,y) => if(y>0) {left} else {center+horizon},
  fill: (x,y) => if y==0 { luma(180)} else if (y==2 or y==4){luma(230)},
  table.header(
    table.cell(
      colspan: 2
    )[*Problemi di disponibilità e performance delle API LLM*]
  ),
  [*Descrizione*],[Le API LLM potrebbero andare offline o non soddisfare le aspettative in termini di performance, impattando il funzionamento del sistema],
  [*Probabilità*],[Bassa],
  [*Pericolosità*],[Alta],
  [*Rilevamento*],[Monitoraggio continuo delle API e gestione di errori o malfunzionamenti],
  [*Piano di contingenza*],[In caso di problemi, usare risposte predefinite o caching dei dati precedenti finché le API non sono nuovamente disponibili]
)

== Rischi di analisi e progettazione
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x,y) => if(y>0) {left} else {center+horizon},
  fill: (x,y) => if y==0 { luma(180)} else if (y==2 or y==4){luma(230)},
  table.header(
    table.cell(
      colspan: 2
    )[*Impegni personali e universitari*]
  ),
  [*Descrizione*],[Cambiamenti imprevisti richiesti dall'azienda #gloss[proponente] o da nuove esigenze emerse durante il progetto],
  [*Probabilità*],[Alta],
  [*Pericolosità*],[Media],
  [*Rilevamento*],[Segnalazioni da parte del cliente o analisi delle modifiche richieste rispetto al piano iniziale],
  [*Piano di contingenza*],[Effettuare una buona analisi iniziale dei requisiti e mantenere un dialogo costante con l'azienda proponente, cercando di prevedere modifiche potenziali e valutare il loro impatto in anticipo]
)
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x,y) => if(y>0) {left} else {center+horizon},
  fill: (x,y) => if y==0 { luma(180)} else if (y==2 or y==4){luma(230)},
  table.header(
    table.cell(
      colspan: 2
    )[*Errori nella progettazione dell'architettura*]
  ),
  [*Descrizione*],[Una progettazione inadeguata può compromettere scalabilità e performance, rendendo difficile la gestione del sistema],
  [*Probabilità*],[Media],
  [*Pericolosità*],[Alta],
  [*Rilevamento*],[Monitoraggio continuo delle prestazioni tramite test di carico, benchmark e analisi delle aree critiche per identificare potenziali problemi di performance o scalabilità],
  [*Piano di contingenza*],[Revisione dell'architettura prima dello sviluppo avanzato, con correzioni tempestive in caso di problemi]
)

// Rischi effettivamente incontrati e come sono stati affrontati
//= Difficoltà affrontate

// Spiegare pianificazione del lavoro (#gloss[sprint] da una settimana ecc...), metodo di lavoro, milestone e prodotti al raggiungimento di ogni milestone, cosa è stato fatto nei vari periodi atti al raggiungimento delle milestone
= Pianificazione del lavoro
La *pianificazione del progetto* si basa su un modello iterativo e incrementale, con lo scopo di garantire un monitoraggio continuo del progresso e una gestione efficace delle attività. Abbiamo deciso di suddividere il lavoro in sprint, ognuno dei quali inizia con un incontro per stabilire obiettivi e analizzare eventuali difficoltà, e si conclude con una retrospettiva sul lavoro svolto. Questo approccio ci ha permesso di adattarci rapidamente alle necessità del progetto, mantenendo una visione chiara delle priorità e dei risultati attesi.

== Organizzazione degli sprint
Gli sprint rappresentano le unità operative fondamentali per il lavoro del gruppo. Inizialmente della durata di una settimana, sono stati successivamente estesi a due settimane per consentire una pianificazione più realistica delle attività.
Ogni sprint inizia con un incontro di pianificazione durante il quale:

- Si analizzano le task concluse, in lavorazione e non ancora iniziate.
- Vengono fissati nuovi obiettivi con priorità e peso relativi.

A fine sprint, si tiene una retrospettiva per valutare il progresso, identificare eventuali ostacoli e migliorare il processo di lavoro.

== Gestione delle task
Le task costituiscono le unità operative elementari del lavoro e vengono gestite tramite una board di GitHub. Ogni task è associata a un responsabile, un peso, una priorità e un ruolo specifico.
Per monitorare l’efficienza e il tempo impiegato, ogni attività è stata tracciata nel dettaglio, includendo la durata prevista e quella effettiva. Questi dati sono riportati su un foglio Google condiviso, che offre una panoramica in tempo reale dell’avanzamento complessivo del progetto.

Questo approccio consente una chiara distribuzione dei compiti, facilitando il controllo del progresso e l’individuazione di eventuali criticità nel raggiungimento degli obiettivi.

= Periodi di sviluppo
== Introduzione
Il progetto è stato suddiviso in tre macroperiodi principali, ciascuno associato a una milestone cruciale:

- *#gloss[RTB] (Requirements and Technology Baseline)*: Focus sull'#gloss[analisi dei requisiti], sulla definizione delle tecnologie e sulla preparazione di un Proof of Concept (#gloss[PoC]).
- *PB (Product Baseline)*: Concentrato sull'implementazione delle funzionalità principali e sulla verifica dell'architettura progettata.
- *CA (Customer Acceptance)*: Dedicato al completamento, alla validazione finale del prodotto e alla consegna al cliente.

Questa suddivisione consente una chiara definizione degli obiettivi di breve e medio termine, facilitando il monitoraggio dell’avanzamento e l’identificazione tempestiva di eventuali criticità.

Ciascun macroperiodo è composto da sprint di durata variabile (inizialmente di una settimana, poi portata a due settimane). Gli sprint rappresentano unità operative chiave, durante le quali vengono svolte attività specifiche con obiettivi ben definiti. Per ogni sprint, il team tiene una riunione iniziale per pianificare le task e una retrospettiva finale per valutare i risultati.

Al termine di ogni macroperiodo, viene effettuata una revisione complessiva del lavoro svolto, analizzando l’aderenza agli obiettivi prefissati e pianificando le attività per la fase successiva.



== Periodo RTB
*Periodo*: 18/11/2024 - *IN CORSO*

#pseudoheading[*Obiettivi principali*]

- *Analisi dettagliata dei requisiti*: Identificazione e classificazione dei requisiti funzionali e non funzionali del progetto.
- *Studio delle tecnologie*: Esplorazione delle tecnologie proposte e valutazione della loro adeguatezza.
- *Proof of Concept (PoC)*: Realizzazione di una demo iniziale per verificare la fattibilità tecnica del progetto.
- *Documentazione*: Produzione dei documenti fondamentali, tra cui Analisi dei Requisiti, Glossario, Piano di Progetto e #gloss[Norme di Progetto].

Durante questo periodo, il team ha lavorato intensamente sulla comprensione delle esigenze del cliente e sulla definizione delle basi tecnologiche. L’obiettivo era garantire che tutte le scelte progettuali e tecniche fossero ben motivate e supportate da un'adeguata analisi preliminare.

=== Sprint 1
*Intervallo temporale*: 18/11/2024 - 24/11/2024

Durante lo *Sprint 1*, della durata di una settimana, il gruppo si è concentrato principalmente sulla definizione delle tecnologie da utilizzare per il progetto. In seguito a una discussione con l'azienda proponente, sono stati analizzati i requisiti tecnologici, comprese le opzioni per lo sviluppo dell’app e la scelta degli strumenti da impiegare. Sono state inoltre avviate le attività per la stesura del glossario tecnico, con la creazione di una pagina web ad hoc per il glossario stesso.

#pseudoheading[*Attività svolte*]

- *Analisi app nativa vs #gloss[webapp]*: Discussione con l’azienda per valutare la possibilità di sviluppare una webapp invece di un’app nativa, come inizialmente richiesto nel capitolato.
- *Analisi framework frontend*: Studio dei framework frontend nel caso in cui si decidesse di optare per una webapp.
- *Analisi LLM*: Valutazione dei modelli linguistici (LLM) disponibili per generare le risposte, con focus su parametri come le lingue supportate e i requisiti di training.
- *Analisi database SQL*: Confronto tra diversi database SQL per individuare la soluzione più adeguata al caso d'uso del progetto.
- *Creazione e aggiornamento del Glossario*: Redazione del documento glossario con i termini tecnici fondamentali e creazione della relativa pagina web nel sito, che sarà aggiornata durante il progetto.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint1-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint1-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

=== Sprint 2
*Intervallo temporale*: 25/11/2024 - 01/12/2024

Durante lo *Sprint 2*, il gruppo ha proseguito i lavori avviati nello Sprint 1, concentrandosi principalmente sull’elaborazione dei documenti fondamentali per il progetto. Sono state definite le attività relative ai documenti “Analisi dei Requisiti”, “Glossario”, “Norme di Progetto” e “Piano di Progetto”. Inoltre, si è proceduto con l’aggiornamento dei ruoli dei membri del gruppo, tenendo conto delle necessità del progetto.

#pseudoheading[*Attività svolte*]

- *Aggiornamento del glossario*: Aggiornamento dei termini tecnici utilizzati nei nuovi documenti creati durante lo Sprint 2.
- *Individuazione #gloss[use case] dell’interfaccia utente*: Definizione preliminare degli use case legati all’interfaccia utente.
- *Individuazione use case amministratore*: Studio e definizione iniziale degli use case relativi all’interfaccia amministrativa.
- *Inizio stesura Analisi dei Requisiti*: Redazione della sezione “Descrizione del prodotto” nel documento “Analisi dei Requisiti”.
- *Studio delle Norme di Progetto*: Analisi e definizione della struttura e dei contenuti principali per il documento “Norme di Progetto”.
- *Studio del Piano di Progetto*: Analisi e definizione della struttura e dei contenuti principali per il documento “Piano di Progetto”.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint2-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint2-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

=== Sprint 3
*Intervallo temporale*: 02/12/2024 - 08/12/2024

Durante lo *Sprint 3*, il gruppo ha continuato le attività avviate negli sprint precedenti, concentrandosi sul completamento e l’aggiornamento dei principali documenti di progetto. È stata effettuata una rotazione dei ruoli tra i membri del team per migliorare la distribuzione del carico di lavoro e consentire una maggiore flessibilità operativa. Inoltre, sono stati introdotti nuovi #gloss[branch] nel repository per gestire le #gloss[pull request] e mantenere una maggiore coerenza nella collaborazione.

#pseudoheading[*Attività svolte*]

- *Stesura del Piano di Progetto*: Continuazione del documento, con focus sulle sezioni di pianificazione temporale e risorse necessarie.
- *Stesura delle Norme di Progetto*: Espansione e completamento delle norme per garantire coerenza e standardizzazione durante lo sviluppo.
- *Stesura dell'Analisi dei Requisiti*: Aggiunta degli use case principali e finalizzazione dell’introduzione al documento.
- *Aggiornamento del glossario*: Inserimento di nuovi termini emersi durante lo sviluppo dei documenti.
- *Gestione repository*: Introduzione di branch dedicati per i principali documenti (Analisi dei Requisiti, Norme di Progetto, Piano di Progetto) per una migliore gestione delle pull request.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint3-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint3-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

=== Sprint 4
*Intervallo temporale*: 09/12/2024 - 22/12/2024

Con lo *Sprint 4* il team ha deciso di estendere la durata degli sprint a due settimane per affrontare in modo più efficace task complesse e migliorare la gestione della rotazione dei ruoli. Durante questo sprint, il focus principale è stato la realizzazione del Proof of Concept (PoC) per il frontend, testando due framework diversi, #gloss[Svelte] e #gloss[Vue.js], e il proseguimento nella stesura dei principali documenti di progetto.

Inoltre è stato svolto un *incontro online* con il referente dell’azienda Ergon Informatica per ottenere chiarimenti essenziali sull’utilizzo degli LLM e sulla struttura del sistema. Questo ha permesso di delineare meglio l’Analisi dei Requisiti e di avviare la pianificazione del Proof of Concept (PoC).

#pseudoheading[*Attività svolte*]

- *Stesura Norme di Progetto*: Continuazione del documento, con un focus sulla definizione di norme per il codice e i processi di sviluppo.
- *Realizzazione PoC per l’interfaccia web*: Implementazione di un prototipo di interfaccia web utilizzando i framework Svelte e Vue.js, al fine di confrontarne complessità e tempi di sviluppo.
- *Aggiornamento Glossario*: Revisione e aggiornamento dei termini tecnici sulla base del lavoro svolto nello Sprint 4.
- *Stesura Verbale Esterno*: Creazione del verbale relativo all’incontro online con l’azienda Ergon Informatica.
- *Definizione Use Case dell’interfaccia cliente e fornitore*: Proseguimento nella definizione degli use case del sistema, con particolare attenzione alle interfacce cliente e fornitore.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint4-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint4-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

== Periodo PB
*Periodo*: *DA DEFINIRE*

#pseudoheading[*Obiettivi principali*]

- *Progettazione architetturale*: Definizione dell’architettura del sistema e delle scelte di design.
- *Implementazione delle funzionalità principali*: Sviluppo del prodotto partendo dal Proof of Concept, con particolare attenzione alle funzionalità chiave.
- *Integrazione delle tecnologie*: Collegamento delle componenti tecnologiche per garantire un sistema coerente.
- *Documentazione avanzata*: Produzione di Diagrammi delle Classi, Manuale Utente e Manuale Sviluppatore.
In questo periodo, il team si è concentrato sulla trasformazione del PoC in un prodotto funzionante, implementando le funzionalità principali richieste e validandone il comportamento attraverso test preliminari.

== Periodo CA
*Periodo*: *DA DEFINIRE*

#pseudoheading[*Obiettivi principali*]

- *Validazione finale del prodotto*: Esecuzione di test conclusivi per garantire che il prodotto soddisfi tutti i requisiti.
- *Ottimizzazioni finali*: Correzione degli ultimi bug e miglioramento delle prestazioni.
- *Aggiornamento dei documenti*: Revisione e completamento della documentazione per la consegna finale.
- *Consegna al cliente*: Preparazione e presentazione del prodotto finale.
L’obiettivo principale di questo periodo è stato garantire che il prodotto fosse pronto per l’accettazione finale da parte del cliente, con particolare attenzione alla qualità e alla completezza.


// Riportare le risorse (immagini, grafici, ecc...) utilizzate per la stesura del documento
= Risorse e riferimenti
