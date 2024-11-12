#import "../../template/documenti.typ" : *


#show : doc => documento(
    titolo: "Norme di Progetto",
    data: [12/11/2024],
    ruoli : (
        "Matteo Bazzan","",
        "Luca Ribon","",
        "Francesco Fragonas","",
        "Gabriele Magnelli","",
        "Filippo Sabbadin","Redattore",
        "Luca Rossi", "",
        "Yi Hao Zhuo", ""
    ),
    sommario: [Norme di progetto],
    
    versioni : (
      "0.1.0","12/11/2024","Filippo Sabbadin","Prima stesura", ""
    ),
    doc,
)

= Introduzione

== Glossario
Nel seguente documento verranno usati termini tecnici che potrebbero avere un significato diverso dall'uso generale.
Per facilitare la comprensione, questi termini avranno il seguente stile:
#gloss[esempio]

== Scopo del documento
Questo documento ha lo scopo di delineare le principali fasi di sviluppo, i ruoli e le responsabilità dei membri del team CodeHex16. Qui verrà fornita una guida per tutte le #gloss[practice] utilizzate dal gruppo e il way of working, fornendo una visione chiara e strutturata dell'intero percorso.

== Scopo del prodotto
Lo scopo di questo progetto è lo sviluppo e l'implementazione di un assistente virtuale o #gloss[chatbot], in grado di interagire con gli utenti in modo naturale e intelligente. L'assistente virtuale sarà progettato per rispondere a richieste specifiche, elaborare informazioni in tempo reale e migliorare l'efficienza operativa.

Il chatbot sarà basato su modelli linguistici #gloss[LLM] (Large Language Models) e dovrà garantire un'esperienza fluida e coerente per gli utenti, tramite una #gloss[webapp].

== Riferimenti
- Capitolato C7 - Assistente Virtuale Ergon:
https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf

- Sito del gruppo CodeHex16:
https://codehex16.github.io/

- Repository della documentazione del progetto:
https://github.com/CodeHex16/documentazione