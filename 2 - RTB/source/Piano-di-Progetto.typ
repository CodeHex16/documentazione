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
== Rischi organizzativi
== Rischi tecnici
== Rischi di analisi e progettazione

// Rischi effettivamente incontrati e come sono stati affrontati
= Difficoltà affrontate

// Spiegare pianificazione del lavoro (#gloss[sprint] da una settimana ecc...), metodo di lavoro, milestone e prodotti al raggiungimento di ogni milestone, cosa è stato fatto nei vari periodi atti al raggiungimento delle milestone
= Pianificazione
== RTB
// == PB
// == CA

// Riportare le risorse (immagini, grafici, ecc...) utilizzate per la stesura del documento
= Risorse e riferimenti
