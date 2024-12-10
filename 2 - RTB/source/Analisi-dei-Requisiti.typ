#import "../../template/documenti.typ" : *


#show : doc => documento(
    titolo: "Analisi dei Requisiti",
    data: [12/11/2024],
    ruoli : (
        "Matteo Bazzan","",
        "Luca Ribon","",
        "Francesco Fragonas","Redattore",
        "Gabriele Magnelli","",
        "Filippo Sabbadin","Verificatore",
        "Luca Rossi", "",
        "Yi Hao Zhuo", ""
    ),
    sommario: [Analisi dei requisiti del capitolato C7],
    
    versioni : (
      "0.2.0","27/11/2024","Gabriele Magnelli","Aggiunti use case amministratore","Filippo Sabbadin",
      "0.1.0","12/11/2024","Francesco Fragonas","Prima stesura", "Matteo Bazzan"
    ),
    doc,
)

= Introduzione
== Scopo del documento
Il presente documento descrive in dettaglio i *casi d'uso* e i *requisiti* relativi al progetto "#gloss[LLM], Assistente Virtuale". Tali specifiche sono state elaborate a partire dall'analisi del capitolato C7, proposto da Ergon, e dagli incontri svolti online e in presenza con l'azienda.

== Scopo del prodotto
Il software da realizzare consiste in un #gloss[chatbot] avanzato, basato su modelli linguistici (LLM), che un fornitore, ad esempio di bevande o alimenti, può offrire ai propri, i quali possono ottenere in modo semplice e immediato informazioni dettagliate sui prodotti o servizi disponibili, senza la necessità di contattare direttamente l'azienda.

Il sistema prevede anche un'interfaccia dedicata all'azienda fornitrice, che consente la gestione dei clienti e dei documenti contenenti le informazioni di riferimento. Questi documenti saranno utilizzati dal modello linguistico per generare risposte accurate e personalizzate, garantendo un'esperienza utente ottimale.

= Descrizione del prodotto
Il sistema mira a semplificare il flusso informativo tra aziende e clienti, rendendo l’accesso alle informazioni più rapido e indipendente da intermediari umani.

Attraverso questa soluzione, le aziende potranno migliorare la produttività interna, ridurre i tempi di risposta alle richieste dei clienti e ottimizzare la gestione dei documenti aziendali. Parallelamente, i clienti beneficeranno di un’esperienza utente fluida e accessibile, con risposte precise e aggiornate a qualsiasi ora.

Il progetto si propone inoltre di dimostrare come tecnologie LLM possano trasformare il modo in cui le aziende gestiscono il servizio clienti, ampliando le possibilità di mercato e rafforzando la fidelizzazione degli utenti.

L'integrazione di un'interfaccia di amministrazione offre agli operatori aziendali uno strumento versatile per monitorare e personalizzare il sistema, garantendo il massimo controllo sui contenuti e adattandolo rapidamente alle mutevoli esigenze del mercato.

== Funzionalità del prodotto e requisiti

Il sistema dovrà offrire le seguenti funzionalità principali:

- **Per i clienti:**
  - Interrogare il chatbot tramite una piattaforma mobile o web per:
    - Ottenere descrizioni dettagliate di prodotti.
    - Conoscere disponibilità, varianti e caratteristiche tecniche di specifici articoli.
    - Ricevere suggerimenti basati su domande frequenti o richieste precedenti.
  - Ottenere risposte personalizzate, generate utilizzando documenti aziendali archiviati nel sistema.
  - Fornire feedback sul grado di soddisfazione delle risposte ricevute, per migliorare la qualità del sistema.

- **Per le aziende:**
  - Gestire clienti e documenti attraverso un'interfaccia di amministrazione user-friendly.
  - Configurare domande e risposte predefinite come base per il chatbot.
  - Caricare, aggiornare e mantenere i documenti aziendali utilizzati per il training del modello *LLM*.

== Requisiti tecnici

- **Architettura del sistema:**
  - Il sistema sarà composto da:
    - Un database per archiviare dati aziendali e documenti.
    - Un modello *LLM* preesistente, selezionato tra le opzioni disponibili (es. *BLOOM*, *Falcon*, o *Italia by iGenius*).
    - API REST per la comunicazione tra il modello e le interfacce utente.
    - Un’interfaccia grafica per l’interazione tra utenti e chatbot, ottimizzata per dispositivi mobili e web.

- **Esecuzione e scalabilità:**
  - Il sistema sarà eseguibile in ambienti containerizzati (es. Docker).
  - Supporta la scalabilità attraverso l’inizializzazione di nodi stateless, per rispondere a un numero variabile di richieste simultanee.

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
= Use Case
== UC 1-Registrazione
*Attori principali*: \
   -Admin non registrato; \
*Descrizione*:\
   -Un admin non registrato vuole registrarsi per interagire   
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'admin deve avere una connessione stabile;
*Postcondizioni*:\
   -Il sistema conferma all'utente/admin che l'iscrizione è avvenuta      
    con successo, altrimenti viene restituito un errore   
    indicando che la registrazione è fallita;\
*Scenario Principale:*\
   -L’admin inserisce l’e-mail e l’username scelto;\
   -Il sistema verifica la correttezza dell’indirizzo e-mail e dell’username. Se sono entrambe corrette registra il nuovo utente/admin ed invia una mail al nuovo utente/admin con la password temporanea che va cambiata al primo login;\
*Estensioni:*\
   -Registrazione fallita;\
   
=== UC 1.1-Inserimento e-mail
*Attori principali:*\
   -Admin non registrato;\
*Descrizione:*\
   -Un admin non registrato vuole registrarsi per interagire  
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'admin deve avere una connessione stabile e scegliere un username valido;\
*Postcondizioni:*\
   -L’admin ha inserito la prima delle due credenziali necessarie alla registrazione: l’indirizzo e-mail;\
*Scenario Principale:*\
   -L’admin inserisce, nella richiesta di registrazione, l’indirizzo e-mail;\
   	
=== UC 1.2-Inserimento Username
*Attori principali:*\
   -Admin non registrato;\
*Descrizione:*\
   -Un admin non registrato vuole registrarsi per interagire  
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'admin deve avere una connessione stabile e scegliere un username valido;\
*Postcondizioni:*\
   -L’admin ha inserito la seconda delle due credenziali necessarie alla registrazione: l’username;\
*Scenario Principale:*\
   -L’admin inserisce, nella richiesta di registrazione, l’username;\

