#import "../../template/documenti.typ" : *


#show : doc => documento(
    titolo: "Analisi dei Requisiti",
    data: [12/11/2024],
    ruoli : (
        "Matteo Bazzan","",
        "Luca Ribon","",
        "Francesco Fragonas","Redattore",
        "Gabriele Magnelli","",
        "Filippo Sabbadin","",
        "Luca Rossi", "",
        "Yi Hao Zhuo", ""
    ),
    sommario: [Analisi dei requisiti del capitolato C7],
    
    versioni : (
      "0.1.0","12/11/2024","Francesco Fragonas","Prima stesura", ""
    ),
    doc,
)
= Introduzione
== Scopo del documento
Il presente documento descrive in dettaglio i *casi d'uso* e i *requisiti* relativi al progetto "LLM, Assistente Virtuale". Tali specifiche sono state elaborate a partire dall'analisi del capitolato C7, proposto da Ergon, e dagli incontri svolti online e in presenza con l'azienda.

== Scopo del prodotto
Il software da realizzare consiste in un chatbot avanzato, basato su modelli linguistici (LLM), che un fornitore, ad esempio di bevande o alimenti, può offrire ai propri, i quali possono ottenere in modo semplice e immediato informazioni dettagliate sui prodotti o servizi disponibili, senza la necessità di contattare direttamente l'azienda.

Il sistema prevede anche un'interfaccia dedicata all'azienda fornitrice, che consente la gestione dei clienti e dei documenti contenenti le informazioni di riferimento. Questi documenti saranno utilizzati dal modello linguistico per generare risposte accurate e personalizzate, garantendo un'esperienza utente ottimale.

== Glossario
Per facilitare la comprensione di questo documento, viene fornito un glossario che chiarisce il significato dei termini specifici utilizzati nel contesto del progetto. Ogni termine di glossario è contrassegnato con un asterisco "\*" in apice e collegato direttamente alla pagina web del glossario, permettendo così di accedere immediatamente alla definizione completa del termine. 

Le definizioni sono disponibili nel documento
#link(
"https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf"
)[Glossario.pdf]
e nella seguente pagina web:

#link(
"https://codehex16.github.io/glossario"
)

== Riferimenti
