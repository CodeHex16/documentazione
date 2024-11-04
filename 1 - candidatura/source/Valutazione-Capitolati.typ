#import "../../template/documenti.typ" : *


#show : doc => documento(
    titolo: "Valutazione dei capitolati",
    data: [24/10/2024],
    ruoli : (
        "Matteo Bazzan","Redattore",
        "Luca Ribon","Responsabile",
        "Francesco Fragonas","Verificatore",
        "Gabriele Magnelli","Verificatore",
        "Filippo Sabbadin","Verificatore",
        "Luca Rossi", "Verificatore",
        "Yi Hao Zhuo", "Verificatore"
    ),
    sommario: [Valutazioni sui capitolati proposti \ con tecnologie richieste e considerazioni],
    
    versioni : (
        "0.3.0","31/10/2024","Gabriele Magnelli","Revisione, correzione valutazione capitolato C3", "",
        "0.2.0","30/10/2024","Luca Ribon","Revisione, correzione errori e aggiunta di parti mancanti", "",
        "0.1.0","24/10/2024","Matteo Bazzan","Prima stesura", ""
    ),
    doc,
)


= Scopo del documento
Lo scopo del documento è valutare i capitolati proposti, e indicare i motivi che hanno portato alla scelta del capitolato C7 e all'esclusione degli altri. \
Tutti i capitolati sono consultabili alla pagina 
#link(
"https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/Capitolati.html"
)[Capitolati].
= Capitolato scelto
== C7 - Assistente Virtuale | Ergon
=== Descrizione
Il capitolato propone la realizzazione di un sistema che prevede un'interfaccia mobile in formato _chatbot_ che permette all'utente di interagire, tramite linguaggio naturale in forma testuale, con un assistente virtuale.\
L'assistente virtuale sfrutta un LLM (Large Language Model) che dovrà essere in grado di rispondere alle richieste poste dall'utente basandosi sul contesto aziendale del fornitore; quest'ultimo viene fornito tramite documenti aziendali in formato .pdf, .docx e .txt.
=== Stack tecnologico
Le tecnologie necessarie per la realizzazione del progetto sono:
- *Database relazionale* a scelta tra quelli presenti sul mercato, utilizzato per la memorizzazione dei dati (sottoforma di vettori) relativi al contesto aziendale.
- *LLM (Large Language Model)* per la costruzione delle risposte da dare all'utente; è stata fornita una lista da cui scegliere, tra questi risaltano #underline()[BLOOM e Falcon IA] in quanto maggiormente avanzati e adatti a contesti multi lingua.
- *API REST* per mettere in comunicazione chatbot e il LLM.
- *Comunicazione e manipolazione del database* per le quali sono state proposte due opzioni tra cui scegliere in base al modello LLM che utilizzeremo:
  - utilizzare un componente software intermedio (#underline()[middleware]) come ad esempio un file JSON.
  - utilizzare le API standard fornite dalle tecnologie scelte (#underline()[Open Database Connectivity]).
- *Interfaccia utente* tramite app mobile per la quale vengono consiglieti il framework #underline()[.NET MAUI] o le #underline()[tecnologie Android native], anche se è possibile optare per soluzioni web.
=== Valutazione
Il gruppo ha concordato nell'assegnare la massima priorità al capitolato n. 7. Questo capitolato si è distinto per diversi aspetti ritenuti cruciali:
- La concretezza del progetto, che si presta ad essere applicato in scenari reali.
- La forte integrazione di intelligenza artificiale, in particolare con l'uso di modelli linguistici di grandi dimensioni (LLM), elemento chiave che soddisfa l’interesse del gruppo per l’IA.
- La rilevanza del progetto in ambito lavorativo: si tratta di una soluzione che potrebbe essere ampiamente richiesta da diverse aziende, soprattutto nell'ottica di sviluppo di assistenti virtuali e chatbot avanzati.
- Inoltre il referente dell'azienda si è dimostrato disponible nel comunicare e risolvere i nostri dubbi fin da subito e l'azienda disponibile a fornire il materiale necessario per lo svolgimento del progetto (compreso un riscontro "diretto" con il team di sviluppo dell'azienda nel caso si optasse per .NET MAUI).

= Capitolati non scelti
== C1 - Artificial QI | Zucchetti
=== Descrizione
L'azienda propone di sviluppare un'applicazione per effettuare il ranking di diversi LLM basandosi su dei test che misurano le performance nel rispondere a delle domande predeterminate.
Il progetto prevede la creazione di un'interfaccia user-friendly per caricare, modificare ed eliminare i dati utilizati per la fase di ranking.
È previsto anche l'utilizzo di un sistema esterno attraverso una API Rest secondo lo standard OpenAPI 3.1 da usare come esempio di valutazione.
=== Stack tecnologico
Le tecnologie necessarie per la realizzazione del progetto sono:
- *LLM*.
- *API Rest* secondo lo standard *OpenAPI 3.1*.
- *Database* per l'archiviazione delle domande da fare al modello e risposte da confrontare.
=== Valutazione
Nonostante l'interesse del gruppo per l'argomento, il capitolato in questione non è stato scelto perché è risultato poco concreto e limitato dal punto di vista di applicazioni nel mondo reale. 

== C2 - Vimar GENIALE | Vimar
=== Descrizione
Viene proposta la creazione di un chatbot messo a disposizione 24 ore su 24. Il chatbot in questione, tramite un applicativo web, fornisce informazioni sui vari dispositivi forniti dall'azienda, ad esempio può aiutare un operatore sul campo nelle varie fasi del processo di installazione di un qualsiasi prodotto Vimar.
=== Stack tecnologico
- *LLM*.
- Infrastruttura con utilizzo della tecnologia *container*.
- Infrastruttura *Amazon Web Services* (opzionale).
=== Valutazione
Questo progetto si distingue per la sua somiglianza con il capitolato 7, ma con alcune differenze importanti:
- L'output del sistema non è basato su dati predefiniti, ma viene generato a partire da informazioni estratte direttamente dal sito web di Vimar, il che aggiunge una dimensione dinamica rilevante.
- La presenza di un sistema di risposta intelligente, che sfrutta dati aziendali reali e richiede una forte integrazione con le tecnologie web.

== C3 - Automatizzare le routine digitali tramite l’intelligenza generativa | Var Group
=== Descrizione
Il progetto prevede lo sviluppo di un servizio ad agenti dove gli utenti possono disegnare localmente un workflow sfruttando le API dei software locali e l’intelligenza artificiale in cloud per automatizzare attività quotidiane che l’utente svolge manualmente.
=== Stack tecnologico
- *Generative AI di AWS*.
- MongoDB (*database*).
- Sviluppo Agent Windows:
    - *Python / C\#*.
    - *React* per le interfaccia applicative web.
- Sviluppo Agent Apple:
    - *Swift*.
    - *Swift UI* per le interfaccia.
- Creazione di *interfaccia drag & drop*.
- Sviluppo API Cloud con *Node.js*, *Python*, *TypeScript*.

=== Valutazione
Il capitolato in questione presenta un dominio tecnologico molto ampio che potrebbe aver messo in difficoltà alcuni membri del gruppo ed inoltre presenta varie analogie con gli altri capitolati, come il fatto di usare l'IA per assistere l'utente, anche se in questo caso si tratta di organizzare le attività dell'utente invece di rispondere a delle sue necessità immediate.\ Tuttavia, il settore di interesse non è stato ritenuto particolarmente stimolante da parte del gruppo, anche per il fatto che altri capitolati usano tecnologie simili in ambiti più interessanti.



== C4 - NearYou - Smart custom advertising platform | SyncLab
=== Descrizione
L'azienda ha proposto di realizzare un sistema che, in base ai dati ottenuti dalla profilazione degli utenti e alla loro posizione geografica, genera tramite LLM degli annunci dedicati agli utenti.
Il progetto prevede la realizzazione di un componente software per la generazione dei dati GPS simulati.
Inoltre è necessaria un'interfaccia composta da una mappa per la visualizzazione degli annunci generati per gli utenti.
=== Stack tecnologico
- *Python* per sviluppare il framework per la simulazione dei dati.
- *Apache Kafka, HiveMQ, RabbitMQ* per disaccoppiare lo stream di informazioni provenienti dai simulatori.
- *LLM*.
- *Database*.
=== Valutazione
Questo capitolato presenta elementi tecnologici interessanti:
- Tecnologie legate alla personalizzazione della pubblicità e all’analisi dei dati, con un focus su algoritmi di machine learning per ottimizzare campagne pubblicitarie.
- Potenziale di utilizzo nel marketing digitale, settore in forte espansione, che richiede soluzioni sempre più innovative per raggiungere target specifici.
- Sfida tecnica interessante, che consentirebbe al gruppo di esplorare nuove aree di sviluppo software, pur mantenendo una certa complessità gestibile.
Tuttavia la parte di intelligenza artificiale è meno marcata rispetto alla prima scelta.

== C5 - 3Dataviz | Sanmarco Informatica
=== Descrizione
L'azienda propone la creazione di grafici 3D per aiutare ad avere una migliore visualizzazione dei dati per rendere più semplice l'interpretazione dei dati rappresentati.
=== Stack tecnologico
Per la parte 3D del progetto, l'azienda propone l'uso delle seguenti librerie Java:
- *three.js*.
- *d3js*.
Propone anche i seguenti framework frontend:
- *Angular*.
- *React*.
=== Valutazione
Questo progetto si differenzia dagli altri in quanto richiede di sviluppare un ambiente 3D interattivo in cui l'utente può analizzare e visionare i dati tramite dei grafici.\
Nonostante l'originalità, soprattutto nelle tecnologie proposte, del progetto, questo non rispecchia gli interessi del gruppo.

== C6 - Sistema di Gestione di un Magazzino Distribuito | M31
=== Descrizione
Il capitolato propone un sistema di gestione magazzino che ottimizza le scorte automaticamente, sincronizza i dati in tempo reale tra i magazzini, implementa riassortimenti predittivi tramite machine learning e gestisce i conflitti negli aggiornamenti simultanei.
Svolge un ruolo importante anche l'alto livello di efficienza richiesto.
=== Stack tecnologico
Le tecnologie necessarie per la realizzazione del progetto sono:
- *Node.js* e *Nest.js* per lo sviluppo dei microservizi. 
- *Go* per lo svilupppo di componenti ad alte prestazioni. 
- *NATS* o *Apache Kafka* per l'interazione tra i microservizi.
- *Google Cloud Platform* che può fornire anche delle istanze *Kubernetes* per l'hosting dei sistemi di orchestrazione. 
- *MongoDB* per la memorizzazione di dati non strutturati, mentre *PostgreSQL* potrà essere impiegato per la persistenza di dati strutturati. 
- *Redis* come sistema di caching. 
- *Angular* e *SPAs* (Single Page Applications) per il frontend.
=== Valutazione
Il progetto richiede l'uso della programmazione distribuita e ciò lo contraddistingue dal punto di vista tecnico, infatti era stato uno dei capitolati inizialmente considerati, ma infine scartato per la presenza di altri progetti più interessanti.  

== C8 - Requirement Tracker Plug-in VSCode | bluewind
=== Descrizione
Il capitolato propone un plugin di VSCode per il tracciamento automatico dei requisiti nel codice sorgente, con funzionalità di analisi basate su intelligenza artificiale per suggerire miglioramenti sia al codice che ai requisiti, inclusi quelli derivati dalla documentazione hardware. Il sistema è progettato per essere espandibile con nuove funzionalità. 
=== Stack tecnologico
Vengono consigliate le seguenti tecnologie:
- *Visual Studio Code Extension API* per costruire un'architettura modulare. 
- *API REST* per connettersi a modelli di AI per l'analisi del codice e dei requisiti.
- *Python o Node.js* per l'integrazione con le API di AI.
- *LLM* per analisi semantiche.
- *Ollama*, o una delle alternative per il deployment locale di LLM (opzionale).
=== Valutazione
In questo caso il capitolato rispecchia una realtà concreta per un qualsiasi gruppo che lavora ad un progetto di una certa dimensione e che ha bisogno di una conferma, o riscontro, immediata sulle dipendeze del progetto stesso.\
Nonostante ciò il capitolato non coincide con gli interessi del gruppo.

== C9 - BuddyBot | azzurrodigitale
=== Descrizione
Il capitolato propone la creazione di Buddy Bot, una piattaforma web innovativa che funge da assistente virtuale intelligente, progettata per semplificare e ottimizzare la gestione dei dati relativi a progetti aziendali. Integrando diverse fonti di dati attraverso API di terze parti e sfruttando le più recenti tecnologie di intelligenza artificiale, offre un'esperienza utente intuitiva consultabile attraverso un'interfaccia chat.

=== Stack tecnologico
Le tecnologie necessarie per la realizzazione del progetto sono:
- *OpenAI* per le funzionalità di *NPL* (comprensione del testo e generazione delle risposte).
- *Node/NestJS*, un framework per lo sviluppo di applicazioni server-side.
- *Langchain* per integrare modelli di AI in modo versatile.
- *Spring Boot*, un framework Java per creare applicazioni standalone.
- *Angular*, un framework frontend per la costruzione di applicazioni web.
=== Valutazione
Questo progetto è simile ad altri capitolati proposti e in generale non convince appieno per le teconlogie proposte, anche se è stato un progetto preso, inizialmente, in considerazione dal gruppo.