#import "../../template/documenti.typ" : *


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
      "0.3.0","18/12/2024","Francesco Fragonas","Aggiunta sezione analisi dei rischi", "",
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
  [*Rilevamento*],[Monitoraggio della qualità e frequenza delle riunioni di aggiornamento, analisi dei feedback, misurazione delle performance del team],
  [*Piano di contingenza*],[Implementare strumenti di comunicazione efficaci (GitHub, Telegram), riunioni regolari di aggiornamento, definire chiaramente i canali di comunicazione]
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
  [*Rilevamento*],[Monitoraggio delle scadenze tramite meeting regolari e verifica delle disponibilità segnalate su un calendario condiviso in Google Fogli],
  [*Piano di contingenza*],[Concordare una pianificazione flessibile basata sulle disponibilità indicate. In caso di necessità, ridistribuire le attività o posticipare task meno prioritari]
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
  [*Descrizione*],[Cambiamenti imprevisti richiesti dall'azienda proponente o da nuove esigenze emerse durante il progetto],
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
= Difficoltà affrontate

// Spiegare pianificazione del lavoro (#gloss[sprint] da una settimana ecc...), metodo di lavoro, milestone e prodotti al raggiungimento di ogni milestone, cosa è stato fatto nei vari periodi atti al raggiungimento delle milestone
= Pianificazione
== RTB
// == PB
// == CA

// Riportare le risorse (immagini, grafici, ecc...) utilizzate per la stesura del documento
= Risorse e riferimenti
