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
Il documento Piano di Progetto ha come obbiettivo quello di definire le attività e nello specifico di:
- pianificare lo svolgimento delle attività
- valutare lo stato di avanzamento del progetto
- stimare i costi e le risorse necessarie, e aggiornare le stime ad ogni periodo, in modo da poter sempre gestire l'allocazione delle risorse nel modo più efficiente possibile
  - questo punto comprende anche un'analisi dei rischi in cui si può incorrere durante lo svolgimento del progetto; in questo modo possiamo prevenire o mitigare il più possibile le potenziali difficoltà future
// Decidere se integrare ulteriori dettagli riguardo al prodotto (stack tecnologico, ...)
== Scopo del prodotto
Il prodotto consiste nella creazione di un'interfaccia in stile #gloss[chatbot], accessibile tramite interfaccia mobile, che delle aziende fornitrici possono configurare in modo che l'#gloss[assistente virtuale] conosca il contesto aziendale e possa rispondere alle domande dei clienti del fornitore.
L'assistente virtuale sfrutta un #gloss[LLM] per comprendere il constesto tramite l'analisi dei documenti aziendali.
Il fornitore, tramite un'#gloss[interfaccia web] di amministrazione, potrà inserire i documenti aziendarli, memorizzare delle domande e delle risposte predefinite e gestire gli #gloss[account] dei clienti.

// Decidere se riportare il preventivo fatto inizialmente o se fare riferimento al documento dedicato; da aggiornare con un resoconto dopo ogni fase
= Preventivo

// Per ogni categoria descrivere i rischi, la probabilità che questi accadano, con che frequenza, le conseguenze e l'importanza di queste conseguenze, dei possibili modi per prevenirli o mitigarli.
= Analisi dei rischi
== Rischi organizzativi
== Rischi tecnici
== Rischi di analisi e progettazione

// Rischi effettivamente incontrati e come sono stati affrontati
= Difficoltà affrontate

// Spiegare pianificazione del lavoro (sprint da una settimana ecc...), metodo di lavoro, milestone e prodotti al raggiungimento di ogni milestone, cosa è stato fatto nei vari periodi atti al raggiungimento delle milestone
= Pianificazione
== RTB
// == PB
// == CA

// Riportare le risorse (immagini, grafici, ecc...) utilizzate per la stesura del documento
= Risorse e riferimenti
