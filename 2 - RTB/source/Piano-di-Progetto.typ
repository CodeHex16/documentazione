#import "../../template/documenti.typ" : *


#show : doc => documento(
    titolo: "Piano di Progetto",
    data: [24/10/2024],
    ruoli : (
        "Matteo Bazzan","",
        "Luca Ribon","Redattore",
        "Francesco Fragonas","",
        "Gabriele Magnelli","",
        "Filippo Sabbadin","",
        "Luca Rossi", "",
        "Yi Hao Zhuo", ""
    ),
    sommario: [],
    
    versioni : (
      "0.1.0","24/10/2024","Luca Ribon","Prima stesura", ""
    ),
    doc,
)

= Introduzione

== Glossario
Nel documento verranno evidenziati diversi termini tramite #gloss[questo stile], questi, se premut, reindirizzeranno alla definizone del termine nel glossario. In questo modo sarà possibile chiarire i termini tecnici o ambigui.

== Scopo del documento
Il documento Piano di Progetto ha come obbiettivo quello di definire le attività e nello specifico di:
- pianificare lo svolgimento delle attività
- valutare lo stato di avanzamento del progetto
- stimare i costi e le risorse necessarie, in modo da poter gestire l'allocazione delle risorse

== Scopo del prodotto
Il prodotto consiste nella creazione di un'interfaccia in stile #gloss[chatbot] che le aziende fornitrici possono configurare in modo che questa conosca il contesto aziendale e possa rispondere alle domande dei loro clienti.
Il contesto viene costruito attraverso l'analisi di documenti aziendali.
Il fornitore, tramite un'#gloss[interfaccia web] di amministrazione, potrà inserire i documenti aziendarli, memorizzare delle domande e delle risposte predefinite e gestire gli #gloss[account] dei clienti.

== Preventivo


= Analisi dei rischi


= Milestone
== RTB
== PB