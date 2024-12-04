#import "../../template/documenti.typ" : *


#show : doc => documento(
    titolo: "Norme di Progetto",
    data: [12/11/2024],
    ruoli : (
        "Matteo Bazzan","",
        "Luca Ribon","",
        "Francesco Fragonas","",
        "Gabriele Magnelli","",
        "Filippo Sabbadin","Redattore, Verificatore",
        "Luca Rossi", "",
        "Yi Hao Zhuo", ""
    ),
    sommario: [Norme di progetto],
    
    versioni : (
      "0.1.0","12/11/2024","Filippo Sabbadin","Prima stesura", "Gabriele Magnelli",
      "0.1.1","30/11/2024","Francesco Fragonas","Revisione Introduzione", "Filippo Sabbadin",
      "0.2.0","30/11/2024","Francesco Fragonas","Redazione Processi di accordo", "Filippo Sabbadin"
    ),
    doc,
)

= Introduzione

== Scopo del documento
Questo documento ha lo scopo di delineare le principali fasi di sviluppo, i ruoli e le responsabilità dei membri del team CodeHex16. Al suo interno, viene fornita una guida completa per tutte le #gloss[Practice] adottate dal gruppo e per il #gloss[Way of Working], garantendo un approccio strutturato e organizzato alle attività collaborative.

Il documento non si limita a fornire una panoramica iniziale ma si propone come un riferimento dinamico, soggetto a revisioni e aggiornamenti continui. Tale approccio incrementale assicura che il contenuto resti sempre aggiornato rispetto alle esigenze del progetto e alle best practices emergenti, consentendo al gruppo di adattarsi rapidamente a nuovi requisiti o cambiamenti contestuali.


== Scopo del prodotto
Il progetto prevede lo sviluppo di un #gloss[Chatbot] avanzato, basato su modelli linguistici #gloss[LLM] (Large Language Models), pensato per migliorare la comunicazione tra aziende fornitrici e i loro clienti. Questo assistente virtuale permetterà agli utenti di ottenere rapidamente e in modo intuitivo informazioni dettagliate su prodotti o servizi offerti, eliminando la necessità di contattare direttamente l’azienda.


Il sistema includerà anche un’interfaccia dedicata per le aziende fornitrici, offrendo strumenti per gestire i clienti e i documenti di riferimento che contengono le informazioni necessarie. Questi documenti saranno utilizzati dal modello linguistico per generare risposte personalizzate e accurate, garantendo un’esperienza utente ottimale. L'intero sistema sarà accessibile tramite una #gloss[Webapp], assicurando una gestione efficiente e una fruizione semplice per tutti gli utenti coinvolti.


== Glossario
Per agevolare la comprensione del presente documento, è stato predisposto un glossario che spiega il significato dei termini specifici utilizzati nel contesto del progetto. Per facilitare la comprensione, questi termini avranno il seguente stile:
#gloss[Esempio]

Le definizioni sono disponibili nel documento Glossario.pdf e possono essere consultate anche tramite la seguente pagina web:
#link(
"https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf"
)[Glossario.pdf]


== Riferimenti
- Capitolato C7 - Assistente Virtuale Ergon:
https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf

- Sito del gruppo CodeHex16:
https://codehex16.github.io/

- Repository della documentazione del progetto:
https://github.com/CodeHex16/documentazione

-Glossario:
Documento: https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf
Pagina web: https://codehex16.github.io/glossario.html

= Processi di accordo

== Processo di fornitura

Il processo di fornitura è strutturato in conformità agli esiti previsti dalla clausola 6.1.2 dello #gloss[Standard] ISO/IEC/IEEE 12207:2017. Tale processo include la definizione di requisiti concordati, l’analisi dei rischi associati, e la pianificazione di tempi e costi. 

=== Scopo e descrizione

Il processo di fornitura è finalizzato a garantire la realizzazione di un prodotto o servizio che soddisfi i requisiti concordati tra #gloss[Proponente] e #gloss[Committente]. L'accordo tra le parti deve definire in modo chiaro i requisiti, le tempistiche e i costi da rispettare. Prima di stipulare tale accordo, il #gloss[Fornitore] avrà condotto un’analisi dettagliata del progetto proposto, identificando i rischi correlati e stabilendo le linee guida necessarie per gestirli efficacemente.

=== Rapporti con il  proponente

Il gruppo CodeHex16 manterrà un dialogo attivo e regolare con il Proponente per tutta la durata del progetto didattico, con l'obiettivo di raccogliere il maggior numero possibile di #gloss[Feedback] sulla correttezza e qualità del lavoro svolto. La comunicazione si articolerà in due modalità principali:

1- Scritta (asincrona) utilizzata per comunicazioni di breve durata, condivisione di verbali e materiale informativo e attività di coordinamento;

2- Incontri online (sincrona) utilizzati per chiarimenti sul capitolato, approfondimenti relativi ai casi d'uso e requisiti e feedback sul lavoro svolto.


Il testo è chiaro, ma può essere migliorato leggermente per una maggiore fluidità e precisione:

I #gloss[Meeting] saranno organizzati con cadenza variabile e fissati tramite e-mail in base alle necessità riscontrate durante lo sviluppo del progetto. Tutti i dettagli discussi durante questi incontri saranno documentati in verbali, con particolare attenzione alle decisioni prese. I verbali saranno disponibili al seguente link:

#link("https://github.com/CodeHex16/documentazione/tree/main/verbali/esterni")[Verbali esterni - https://github.com/CodeHex16/documentazione/tree/main/verbali/esterni]

=== Documentazione prodotta

In questa sezione viene illustrata la documentazione prodotta dal gruppo nel processo di fornitura, che sarà messa a disposizione del Proponente, Ergon Informatica, e dei Committenti, i professori Tullio Vardanega e Riccardo Cardin.

==== Valutazione dei capitolati

Nel documento #link("https://codehex16.github.io/docs/1%20-%20candidatura/Valutazione-Capitolati.pdf")[Valutazione Capitolati], il gruppo ha analizzato tutte le proposte di capitolato, fornendo per ciascuna una breve descrizione, una panoramica dello stack tecnologico previsto e una valutazione finale. La scelta del capitolato è stata effettuata considerando diversi criteri, tra cui l'interesse dei membri del gruppo per il progetto, la sua rilevanza nel contesto lavorativo e la fattibilità complessiva.

==== Preventivo dei costi

Nel documento #link("https://codehex16.github.io/docs/1%20-%20candidatura/Preventivo-Costi-e-Impegni.pdf")[Preventivo Costi e Impegni] è stata stabilita una data di consegna stimata del progetto, definita in accordo con tutti i membri del gruppo. La pianificazione tiene conto degli impegni personali di ciascun membro e prevede una stima delle ore settimanali da dedicare al progetto. Inoltre, dopo aver definito tutti i ruoli, è stata elaborata una tabella con la previsione delle ore che ogni membro deve svolgere per ciascun ruolo, garantendo una rotazione prestabilita per bilanciare equamente il carico di lavoro.

=== Analisi dei Rischi

Nel documento #link("")[Analisi dei Rischi] ...

==== Analisi dei requisiti

Nel documento #link("https://codehex16.github.io/docs/2%20-%20RTB/Analisi-dei-Requisiti.pdf")[Analisi dei Requisiti], il gruppo ha definito tutti gli #gloss[Use Case] e i requisiti, frutto di un’attenta analisi del capitolato e della comprensione dell’utilizzo finale del progetto. Questa definizione è stata concordata con il referente dell’azienda proponente durante gli incontri svolti.

==== Piano di progetto

Nel documento #link("https://codehex16.github.io/docs/2%20-%20RTB/Piano-di-Progetto.pdf")[Piano di Progetto] è stato pianificato l'avanzamento del progetto suddiviso nei 3 periodi chiave (Candidatura, RTB e PB) con una particolare attenzione agli #gloss[Sprint] settimanali effettuati. Per ognuno è stato descritto il lavoro svolto, il rendiconto delle ore e dei costi in base ai ruoli assegnati e le task future previste. 

==== Piano di qualifica

Nel documento #link("")[Piano di Qualifica] ...

=== Strumenti utilizzati

Per lo svolgimento del progetto abbiamo utilizzato i seguenti strumenti:

- *Telegram* per la comunicazione all'interno del gruppo
- *Discord* per i meet interni
- *Zoom* per i meet esterni con il referente dell'azienda Ergon Informatica
- *GitHub* per organizzare tutti i documenti e file sorgente del progetto
- *GitHub Issue* per assegnare task ad ogni membro avendo un rendiconto preciso dei ruoli e delle ore svolte per ogni sprint, con l'assegnazione di label e milestone specifiche
- *Google Fogli* per organizzare incontri con la compilazione di un calendario settimanale e per fissare le ore svolte avendo una visione generale dell'andamento del progetto
- *Typst* per la stesura di tutti i documenti e verbali
- *Canva* per la realizzazione delle presentazioni per i Diari di Bordo settimanali
- *Notion* per organizzare appunti e documenti non ufficiali

