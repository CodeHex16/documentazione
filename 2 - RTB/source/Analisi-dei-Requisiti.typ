#import "../../template/documenti.typ": *
#import "../../template/i-figured.typ"

#show: doc => documento(
  titolo: "Analisi dei Requisiti",
  data: [12/11/2024],
  ruoli: (
    "Matteo Bazzan",
    "",
    "Luca Ribon",
    "Redattore",
    "Francesco Fragonas",
    "Redattore",
    "Gabriele Magnelli",
    "",
    "Filippo Sabbadin",
    "Redattore - Verificatore",
    "Luca Rossi",
    "",
    "Yi Hao Zhuo",
    "Verificatore",
  ),
  sommario: [Analisi dei requisiti del capitolato C7],
  versioni: (
    "0.3.0",
    "23/12/2024",
    "Luca Ribon",
    "Aggiunti altri use case",
    "Filippo Sabbadin",
    "0.2.0",
    "27/11/2024",
    "Gabriele Magnelli",
    "Aggiunti use case amministratore",
    "Filippo Sabbadin",
    "0.1.0",
    "12/11/2024",
    "Francesco Fragonas",
    "Prima stesura",
    "Matteo Bazzan",
  ),
  doc,
)
// spaciugo per aggiungere l'indice delle immagini
#set page(numbering: "I")
#counter(page).update(3)
#show heading: i-figured.reset-counters.with(level: 0)
#show figure: i-figured.show-figure.with(level: 0)
#i-figured.outline(title: "Lista di immagini")
#pagebreak()
#set page(numbering: "1")
#counter(page).update(1)

= Introduzione
== Scopo del documento

Il presente documento descrive in dettaglio i *casi d'uso* e i *requisiti* relativi al progetto "#gloss[LLM], Assistente
Virtuale". Tali specifiche sono state elaborate a partire dall'analisi del capitolato C7, proposto da Ergon, e dagli incontri svolti online e in presenza con l'azienda.

== Scopo del prodotto
Il software da realizzare consiste in un #gloss[chatbot], basato su modelli linguistici (LLM), che un #gloss[fornitore], ad esempio dibevande o alimenti, può offrire ai propri clienti, i quali possono ottenere in modo semplice e immediato informazioni dettagliate sui prodotti o servizi disponibili, senza la necessità di contattare direttamente un operatore dell'azienda.

Il sistema prevede anche un'interfaccia dedicata all'azienda fornitrice, che consente la gestione dei clienti e dei documenti contenenti le informazioni di riferimento. Questi documenti saranno utilizzati dal modello linguistico per generare risposte accurate e personalizzate, garantendo un'esperienza utente ottimale. Inoltre l'interfaccia del fornitore permette di personalizzare graficamente la propria piattaforma tramite l'inserimento di un logo e la selezione di una palette colori.

= Descrizione del prodotto
Il sistema mira a semplificare il flusso informativo tra fornitori e clienti, rendendo l'accesso alle informazioni più rapido e indipendente da intermediari umani.

Attraverso questa soluzione, le aziende potranno migliorare la produttività interna, ridurre i tempi di risposta alle richieste dei clienti e ottimizzare la gestione dei documenti aziendali. Parallelamente, i clienti beneficeranno di un'esperienza utente fluida e accessibile, con risposte precise e aggiornate a qualsiasi ora.

Il progetto si propone inoltre di dimostrare come tecnologie LLM possano trasformare il modo in cui le aziende gestiscono il servizio clienti, ampliando le possibilità di mercato e rafforzando la fidelizzazione degli utenti.

L'integrazione di un'interfaccia di amministrazione offre agli operatori aziendali uno strumento versatile per monitorare e personalizzare il sistema, garantendo il massimo controllo sui contenuti e adattandolo rapidamente ai vari aggiornamenti di catalogo.

== Funzionalità del prodotto e requisiti

Il sistema dovrà offrire le seguenti funzionalità principali:

- *Per i clienti:*
  - Interrogare il chatbot tramite una piattaforma web per:
    - Ottenere descrizioni dettagliate di prodotti.
    - Conoscere disponibilità, varianti e caratteristiche tecniche di specifici articoli.
    - Ricevere suggerimenti basati su domande frequenti o richieste precedenti.
  - Ottenere risposte personalizzate, generate utilizzando documenti aziendali archiviati nel sistema.
  - Fornire #gloss[feedback] sul grado di soddisfazione delle risposte ricevute, per migliorare la qualità del sistema.

- *Per le aziende:*
  - Gestire clienti e documenti attraverso un'interfaccia di amministrazione user-friendly.
  - Configurare domande e risposte predefinite come base per il chatbot.
  - Caricare, aggiornare e mantenere i documenti aziendali utilizzati per il training del modello *LLM*.

== Requisiti tecnici

- *Architettura del sistema:*
  - Il sistema sarà composto da:
    - Un database per archiviare dati aziendali e documenti.
    - Un modello *LLM* preesistente, selezionato tra le opzioni disponibili (es. *BLOOM*, *llama*, *ChatGPT*, *Claude*, ecc.).
    - API REST per la comunicazione tra il modello e le interfacce utente.
    - Un'interfaccia grafica per l'interazione tra utenti e chatbot, ottimizzata per dispositivi mobili e web.

- *Esecuzione e scalabilità:*
  - Il sistema sarà eseguibile in ambienti containerizzati (es. Docker).
  - Supporta la scalabilità attraverso l'inizializzazione di nodi stateless, per rispondere a un numero variabile di richieste simultanee.

== Glossario
Per facilitare la comprensione di questo documento, viene fornito un glossario che chiarisce il significato dei termini specifici utilizzati nel contesto del progetto. Ogni termine di glossario è contrassegnato con un asterisco "\*" in apice e collegato direttamente alla pagina web del glossario, permettendo così di accedere immediatamente alla definizione completa del termine. Le definizioni sono disponibili nel documento #link("https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf")[Glossario.pdf] e nella seguente pagina web: #link("https://codehex16.github.io/glossario").

=== Riferimenti normativi:

- #gloss[Norme di progetto] v1.0.0:

- Capitolato C7 - #gloss[Assistente Virtuale] Ergon:
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")

=== Riferimenti informativi:

- "Analisi e descrizione delle funzionalità: #gloss[Use case] e relativi diagrammi (UML)":\
#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")

= Descrizione

== Obiettivi del prodotto

Il progetto ha come obiettivo la creazione di una webapp che fornisce un modello di chatbot con cui l’utente può interagire e inviare messaggi per chiedere informazioni sui prodotti forniti.
Con il chatbot, gli utenti possono ottenere risposte immediate, risparmiare tempo e completare le azioni desiderate senza bisogno di un supporto umano diretto, rendendo l'interazione con la webapp più veloce ed efficiente.

== Funzionalità del prodotto

L’applicazione permette di:

- creare un #gloss[account] dotato di email e password;
- accedere al proprio account sempre con la coppia email e password scelte durante la registrazione
- modificare dati dell’utente (es email, password)
- Scrittura ed invio di messagi
- Modificare il numero di messaggi recenti visualizzabili
- modificare il colore principale dell’aplicazione (chiaro o scuro)

== Utenti e caratteristiche

La webapp è rivolta verso ristoratori che vogliono offrire un’assistenza veloce verso i clienti. I ristoratori, dopo essersi registrati, possono inserire, modificare ed eliminare informazioni sui propri prodotti. Gli utenti, registrati o no, possono poi scrivere al chatbot per richiedere queste informazioni.

= Use Cases

== Introduzione

Nelle seguenti sezioni verranno descritti tutti i possibili casi d'uso, cioè tutti i modi in cui gli attori, definiti più avanti, possono interagire con l'applicazione.

== Attori

- Utente non registrato
- Admin registrato

== Riferimenti

= Use Case
== Login fornitore
*Attori principali:*
- Fornitore;
*Descrizione:*
- Un fornitore vuole accedere alla piattaforma per la configurazione del proprio chatbot e per interagire con esso;
*Precondizioni:*
- Il fornitore è in possesso delle proprie credenziali;
- Il fornitore ha già effettuato il primo login e cambiato la password temporanea;
- Il fornitore non è già autenticato;
*Postcondizioni:*
- Se il fornitore ha inserito le credenziali corrette, accede alla piattaforma;
*Scenario Principale:*
- L’utente/fornitore ha inserito l’indirizzo e-mail e la password al fine di accedere alla webapp;
- Il sistema riceve la richiesta di accesso e verifica le credenziali;
*Generalizzazioni*:
- Primo login fornitore;
*Estensioni:*
- Credenziali errate;
*Inclusioni:*
- Inserimento e-mail;
- Inserimento password;
- Possibilità "Resta connesso";

== Primo login fornitore
*Attori principali:*
- Fornitore;
*Attori secondari:*
- Amministratore;
- Sistema;
*Descrizione:*
- Un fornitore vuole accedere per la prima volta alla piattaforma a lui dedicata per gestire il suo chatbot ed
  eventualmente utilizzarlo;
*Precondizioni:*
- La piattaforma è stata correttamente configurata dall'amministratore;
- Il fornitore non ha mai effettuato l'accesso alla piattaforma;
- Il fornitore deve essere in possesso delle sue credenziali fornite dall'amministratore della piattaforma;
*Postcondizioni:*
- Il fornitore ha effettuato il primo accesso alla piattaforma;
- Il fornitore ha cambiato la password temporanea con una nuova password;
*Scenario Principale:*
- L'amministratore:
  - configura la piattaforma per il fornitore;
  - condivide le credenziali temporanee per l'accesso alla piattaforma;
- Il fornitore:
  - accede alla piattaforma;
  - inserisce l'indirizzo e-mail e la password temporanea fornitegli dall'amministratore;
  - se ha inserito le credenziali corrette, aggiorna la password;
- Il sistema:
  - riceve le credenziali inserite dal fornitore;
  - verifica la correttezza delle credenziali;
  - se le credenziali sono corrette richiede al fornitore di cambiare la password temporanea con una nuova;
    - reindirizza alla piattaforma;
  - se le credenziali sono errate, restituisce un errore e permette di reinserirle;
*Estensioni:*
- Credenziali errate;
- Password scelta non valida;
*Inclusioni:*
- Inserimento e-mail;
- Inserimento password;
- Possibilità "Resta connesso";

=== Credenziali errate
*Attori principali:*
- Fornitore;
- Cliente;
*Descrizione:*
- Un utente cercando di compiere il login ha inserito delle credenziali errate;
*Precondizioni:*
- Le credenziali associate all'utente esistono nella piattaforma;
- L'utente ha inserito delle credenziali errate;
*Postcondizioni:*
- Il sistema restituisce un errore indicando che la registrazione è fallita, con alcune informazioni sul perché del fallimento;
*Scenario Principale:*
- Il fornitore ha inserito l’e-mail e la password;
- Il sistema ha ricevuto le credenziali per la registrazione ma queste non sono valide, pertanto viene visualizzato un messaggio d'errore;

// Non è necessario gestirla perché l'utente viene creato dall'Amministratore:
// === Inserimento e-mail già in uso
// *Attori principali:*
// - Fornitore non registrato;
// *Descrizione:*
// - Un fornitore non registrato vuole registrarsi per interagire e usufruire dei servizi offerti dalla web app;
// *Precondizioni:*
// - L'utente ha inserito le credenziali e inviato al sistema la richiesta di registrazione;
// *Postcondizioni:*
// - Il sistema ha ricevuto le credenziali inviate dall’utente, ma l’e-mail è già registrata nel sistema, quindi invia un
//   messaggio d’errore all’utente;
// *Scenario Principale:*
// - L’utente ha inserito l’indirizzo e-mail e l’username al fine di registrarsi;
// - Il sistema invia un messaggio d’errore indicando all’utente che l’e-mail inserita è già in uso nel sistema e il
//   tentativo di registrazione fallisce;

== UC 1-Registrazione
#figure(image("../imgs/UC1-Registrazione.png", width: 95%), caption: [UC1 - Registrazione])
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
-L'admin inserisce l'e-mail e l'username scelto;\
-Il sistema verifica la correttezza dell'indirizzo e-mail e dell'username. Se sono entrambe corrette registra il nuovo utente/admin ed invia una mail al nuovo utente/admin con la password temporanea che va cambiata al primo login;\
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
-L'admin ha inserito la prima delle due credenziali necessarie alla registrazione: l'indirizzo e-mail;\
*Scenario Principale:*\
-L'admin inserisce, nella richiesta di registrazione, l'indirizzo e-mail;\

=== UC 1.2-Inserimento Username
*Attori principali:*\
-Admin non registrato;\
*Descrizione:*\
-Un admin non registrato vuole registrarsi per interagire
e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
-L'admin deve avere una connessione stabile e scegliere un username valido;\
*Postcondizioni:*\
-L'admin ha inserito la seconda delle due credenziali necessarie alla registrazione: l'username;\
*Scenario Principale:*\
-L'admin inserisce, nella richiesta di registrazione, l'username;\

== UC 2-Registrazione Fallita
*Attori principali:*\
-Admin non registrato;\
*Descrizione:*\
-Un admin non registrato cercando di registrarsi per interagire e usufruire dei servizi offerti dalla web app non ci è riuscito perché ha fallito cercando di registrarsi con un indirizzo e-mail non valido o un username già in uso o non conforme alle indicazioni;\
*Precondizioni:*\
-L'admin ha cercato di registrarsi ma ha fallito;\
*Postcondizioni:*\
-Il sistema restituisce un errore indicando che la registrazione è fallita, con alcune informazioni sul perché del fallimento;\
*Scenario Principale:*\
-L'admin ha inserito l'e-mail e l'username scelto;\
-Il sistema ha ricevuto le credenziali per la registrazione ma queste non sono valide e pertanto viene inviato all'admin un messaggio d'errore in cui viene specificato che non può essere registrato;\

=== UC 2.1.1-Inserimento e-mail già in uso
*Attori principali:*\
-Admin non registrato;
*Descrizione:*
-Un admin non registrato vuole registrarsi per interagire
e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
-L'utente/admin ha inserito le credenziali e inviato al sistema la richiesta di registrazione;\
*Postcondizioni:*\
-Il sistema ha ricevuto le credenziali inviate dall'utente/admin, ma l'e-mail è già registrata nel sistema, quindi invia un messaggio d'errore all'utente;\
*Scenario Principale:*\
-L'utente/admin ha inserito l'indirizzo e-mail e l'username al fine di registrarsi;\
-Il sistema invia un messaggio d'errore indicando all'utente che l'e-mail inserita è già in uso nel sistema e il tentativo di registrazione fallisce;\

=== UC 2.1.2-Inserimento e-mail non valida
*Attori principali:*\
-Utente/Admin non registrato;\
*Descrizione:*\
-Un utente/admin non registrato vuole registrarsi per interagire
e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
-L'utente/admin ha inserito le credenziali e inviato al sistema la richiesta di registrazione;\
*Postcondizioni:*\
-Il sistema ha ricevuto le credenziali inviate dall'utente/admin, ma l'e-mail non è valida, quindi invia un messaggio d'errore all'utente;\
*Scenario Principale:*\
-L'utente/admin ha inserito l'indirizzo e-mail e l'username al fine di registrarsi;\
-Il sistema invia un messaggio d'errore indicando all'utente che l'e-mail inserita non è valida e il tentativo di registrazione fallisce;\

=== UC 2.2.1-Inserimento username già in uso
*Attori principali:*\
-Utente/Admin non registrato;\
*Descrizione:*\
-Un utente/admin non registrato vuole registrarsi per interagire
e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
-L'utente/admin ha inserito le credenziali e inviato al sistema la richiesta di registrazione;\
*Postcondizioni:*\
-Il sistema ha ricevuto le credenziali inviate dall'utente/admin, ma l'username è già registrato nel sistema, quindi invia un messaggio d'errore all'utente;\
*Scenario Principale:*\
-L'utente/admin ha inserito l'indirizzo e-mail e l'username al fine di registrarsi;
-Il sistema invia un messaggio d'errore indicando all'utente che l'username inserito è già in uso nel sistema e il tentativo di registrazione fallisce;\

=== UC 2.2.2-Inserimento username non valido
*Attore principale:*\
-Utente/Admin non registrato;\
*Descrizione:*\
-Un utente/admin non registrato vuole registrarsi per interagire
e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
-L'utente/admin ha inserito le credenziali e inviato al sistema la richiesta di registrazione;\
*Postcondizioni:*\
-Il sistema ha ricevuto le credenziali inviate dall'utente/admin, ma l'e-mail non è valida, quindi invia un messaggio d'errore all'utente;\
*Scenario Principale:*\
-L'utente/admin ha inserito l'indirizzo e-mail e l'username al fine di registrarsi;
-Il sistema invia un messaggio d'errore indicando all'utente che l'e-mail inserita non è valida e il tentativo di registrazione fallisce;\

== Login
*Attore principale:*\
-Utente/Admin registrato;\
*Descrizione:*\
-Un utente/admin registrato vuole accedere per interagire
e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
-L'utente/admin è in possesso e a conoscenza delle proprie credenziali;\
*Postcondizioni:*\
-Il sistema ha ricevuto le credenziali inviate dall'utente/admin, e se sono valide permette l'accesso dell'utente/admin alla #gloss[webapp] e ai suoi servizi;\
*Scenario Principale:*\
-L'utente/admin ha inserito l'indirizzo e-mail e la password al fine di accedere alla webapp;
-Il sistema riceve la richiesta di accesso e verifica le credenziali ;\
*Estensioni:*\
-Primo login (cambio password temporanea);\
-Login fallito;\

// === Inserimento e-mail non valida
// *Attori principali:*
// - Cliente/fornitore non registrato;
// *Descrizione:*
// - Un utente non registrato vuole registrarsi per interagire e usufruire dei servizi offerti dalla web app;
// *Precondizioni:*
// - L'utente ha inserito le credenziali e inviato al sistema la richiesta di registrazione;
// *Postcondizioni:*
// - Il sistema ha ricevuto le credenziali inviate dall’utente, ma l’e-mail non è valida, quindi invia un messaggio d’errore all’utente;
// *Scenario Principale:*
// - L’utente ha inserito l’indirizzo e-mail al fine di registrarsi;
// - Il sistema invia un messaggio d’errore indicando all’utente che l’e-mail inserita non è valida e il tentativo di registrazione fallisce;

=== Inserimento e-mail
*Attori principali:*
- Fornitore;
- Cliente;
*Descrizione:*
- Un utente inserisce il suo indirizzo e-mail per effettuare il login;
*Precondizioni:*
- L'e-mail dell'utente deve essere presente nel sistema;
- L'utente deve essere in possesso dell' e-mail a lui associata;
*Scenario Principale:*
- L’utente ha inserito l’indirizzo e-mail necessaria per effettuare l'accesso;

=== Inserimento password
*Attori principali:*
- Fornitore;
- Cliente;
*Descrizione:*
- Un utente inserisce la sua password per effettuare il login;
*Precondizioni:*
- La password dell'utente deve essere presente nel sistema;
- L'utente deve essere in possesso della password a lui associata;
*Scenario Principale:*
- L’utente ha inserito la password necessaria per effettuare l'accesso

=== Possibilità "Resta connesso"
*Attori principali:*
- Fornitore;
- Cliente;
*Descrizione:*
- Un utente vuole mantenere l'accesso attivo al fine di non dover effettuare il login, inserendo le credenziali, ogni volta che ha intenzione di accedere alla web app;
*Precondizioni:*
- Le credenziali dell'utente devono essere presenti nel sistema;
- L'utente deve essere possedere le credenziali necessarie per l'accesso;
- L'utente deve inserire le credenziali corrette;
*Postcondizioni:*
- È stata salvata la preferenza dell'utente relativa al salvataggio delle credenziali;
*Scenario Principale:*
- L’utente inserisce le credenziali
- Solo se l'utente seleziona l'opzione "Resta connesso", il sistema mantiene in memoria locale le credenziali per un futuro login senza doverle richiedere all'utente;

// TODO: rendere coerente con il resto degli use case
=== Password scelta non valida
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- Un utente/fornitore registrato ha effettuato il suo primo accesso e ora deve scegliere una nuova password che sostituisca quella temporanea usata per effettuare il primo login;
*Precondizioni:*
- L'utente/fornitore deve aver effettuato il suo primo accesso;
*Postcondizioni:*
- L’utente/fornitore ha scelto e inserito la sua nuova password che, però, non rispetta le indicazioni fornitegli, quindi dovrà cambiarla;
*Scenario Principale:*
- L’utente/fornitore inserisce la password nuova;
- Il sistema verifica la password inserita e la trova non conforme, quindi invia un messaggio d'errore all'utente/fornitore con la richiesta di scegliere un'altra password valida;

// TODO: rendere coerente con il resto degli use case
== Logout
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- Un utente/fornitore registrato vuole effettuare il logout disconnettendosi dal sistema;
*Precondizioni:*
- L'utente/fornitore vuole disconnettersi dal sistema e per farlo deve premere il pulsante di logout;
*Postcondizioni:*
- Il sistema ha ricevuto la richiesta di logout e la effettua;
*Scenario Principale:*
- L’utente/fornitore preme il pulsante di logout;
- Il sistema riceve la richiesta di logout e disconnette l'utente/fornitore dal sistema;

// TODO: == Accesso alle impostazioni (lo considero uno use case ??)

// TODO: rendere coerente con il resto degli use case
== Cambio e-mail/username
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- Un utente/fornitore registrato vuole cambiare l'e-mail/username a cui è associato il suo account;
*Precondizioni:*
- L'utente/fornitore deve aver effettuato il login;
- L'utente/fornitore deve accedere alle impostazioni e alla sezione "Cambio e-mail/username";
*Postcondizioni:*
- Il sistema effettua un controllo sulla validità dell'e-mail/username e se valida conferma il cambiamento dell'e-mail/username;
*Scenario Principale:*
- L’utente/fornitore invia la richiesta di cambio e-mail/username inserendo la nuova e-mail/username scelta;
- Il sistema riceve la richiesta, controlla che l'e-mail/username sia valida e, se lo è, conferma il cambiamento dell'e-mail/username;
*Estensioni:*
- Cambio e-mail/username fallito (e-mail/username già in uso);
- Cambio e-mail/username fallito (e-mail/username non valida);

// TODO: rendere coerente con il resto degli use case
== Cambio password
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- Un utente/fornitore registrato vuole cambiare la password del proprio account;
*Precondizioni:*
- L'utente/fornitore deve aver effettuato il login;
- L'utente/fornitore deve accedere alle impostazioni e alla sezione "Cambio password";
*Postcondizioni:*
- Il sistema effettua un controllo sulla validità della password e se valida conferma il cambiamento della password;
*Scenario Principale:*
- L’utente/fornitore invia la richiesta di cambio password inserendo la nuova password scelta;
- Il sistema riceve la richiesta, controlla che la password sia valida e se lo è conferma il cambiamento della password;
*Estensioni:*
- Cambio password fallito (password non valida);

// TODO: rendere coerente con il resto degli use case
== Recupero password
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- Un utente/fornitore registrato vuole recuperare la password del proprio account;
*Precondizioni:*
- L'utente/fornitore prima di effettuare il login ha premuto il pulsante "Passowrd dimenticata", oppure
- L'utente/fornitore deve accedere alle impostazioni e alla sezione "Recupero password";
- L'utente7fornitore deve possedere l'e-mail/username a cui è associato il suo account e inserirla nella sezione apposita così da poter ricevere tramite e-mail la password associata al suo account;
*Postcondizioni:*
- Il sistema effettua un controllo sulla validità dell'e-mail ricevuta e se valida invia a tale e-mail la password recuperata;
*Scenario Principale:*
- L’utente/fornitore invia la richiesta di recupero password inserendo l'e-mail/username associata al proprio account;
- Il sistema riceve la richiesta, controlla che l'e-mail/username sia valida e, se lo è, invia alla e-mail la password recuperata;

// TODO: rendere coerente con il resto degli use case
== Scrittura e Invio messaggio
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- Un utente/fornitore registrato vuole porre una domanda o in generale comunicare con il chatbot;
*Precondizioni:*
- L'utente/fornitore deve avere una connessione stabile;
- L'utente/fornitore deve aver effettuato il login;
- L'utente/fornitore deve accedere alla sezione relativa alla comunicazione con il chatbot;
- L'utente/fornitore deve accedere all'area di testo su cui scrivere il messaggio ;
*Postcondizioni:*
- L'utente/fornitore ha scritto e inviato il messaggio al chatbot;
*Scenario Principale:*
- L’utente/fornitore scrive e invia il messaggio al chatbot;
- Il chatbot riceve il messaggio, lo analizza e procede a rispondere;
*Possibili Estensioni/Errori ???*

// TODO: rendere coerente con il resto degli use case
== Ricezione risposta
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- Il chatbot ha ricevuto un messaggio, lo ha analizzato e procede fornendo una risposta;
*Precondizioni:*
- L'utente/fornitore deve avere una connessione stabile;
- L'utente/fornitore deve aver inviato un messaggio al chatbot;
*Postcondizioni:*
- L'utente/fornitore ha ricevuto la risposta dal chatbot chatbot;
*Scenario Principale:*
- Il chatbot ha elaborato e inviato una risposta all'utente/fornitore;

// TODO: rendere coerente con il resto degli use case
== Valutazione Risposta
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- L'utente/fornitore ha ricevuto la risposta dal chatbot e vuole dare un feedback su tale risposta tramite l'opzione "Pollice su/giù";
*Precondizioni:*
- L'utente/fornitore deve aver effettuato il login;
- L'utente/fornitore deve aver inviato un messaggio al chatbot;
- L'utente/fornitore deve aver ricevuto una risposta dal chatbot;
- L'utente/fornitore deve premere il "Pollice in su" se pensa che la risposta sia stata coerente con la domanda, altrimenti preme "Pollice in giù";
*Postcondizioni:*
- L'utente/fornitore ha valutato la risposta data dal chatbot e quindi inviato un feedback;
*Scenario Principale:*
- L'utente/fornitore ha ricevuto una risposta dal chatbot e valutato tale risposta con l'opzione "Pollice su/giù";

// TODO: rendere coerente con il resto degli use case
== Visualizzazione Storico Chat
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- Un utente/fornitore registrato vuole visualizzare lo storico delle chat avute con il chatbot;
*Precondizioni:*
- L'utente/fornitore deve aver effettuato il login;
- L'utente/fornitore deve accedere alle impostazioni e alla premere sul pulsante "Visualizza storico chat";
*Postcondizioni:*
- L'utente/fornitore accede alla sezione "Visualizza storico chat";
*Scenario Principale:*
- L’utente/fornitore ha effettuato il login, ha acceduto alle impostazioni e premuto sul pulsante "Visuallizza storico chat", quindi accede alla sezione corrispondente;

// TODO: rendere coerente con il resto degli use case
== Modifica visualizzazione tempo storico chat (da 30 a 60 giorni e simili)
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- Un utente/fornitore registrato vuole cambiare il periodo di tempo di visualizzazione dello storico delle chat avute con il chatbot;
*Precondizioni:*
- L'utente/fornitore deve aver effettuato il login;
- L'utente/fornitore deve accedere alla sezione "Visualizza storico chat" nelle impostazioni;
- L'utente/fornitore deve premere il pulsante per modificare il periodo di tempo di visualizzazione dello storico delle chat avute con il chatbot;
- L'utente/fornitore sceglie il nuovo periodo di tempo su cui visualizzare lo storico delle chat avvenute con il chatbot;
*Postcondizioni:*
- L'utente ha modificato il periodo di tempo su cui visualizzare lo storico delle chat avvenute con il chatbot;
*Scenario Principale:*
- L’utente/fornitore ha effettuato il login, ha acceduto alle impostazioni, alla sezione "Visuallizza storico chat" e modificato il periodo di tempo su cui visualizare lo storico delle chat avvenute con il chatbot;

// TODO: rendere coerente con il resto degli use case
== Selezione Dark/Light Mode
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- Un utente/fornitore registrato vuole modificare i colori dell'interfaccia della web-app tramite l'opzioine "Dark/Light mode";
*Precondizioni:*
- L'utente/fornitore deve aver effettuato il login;
- L'utente/fornitore deve accedere alle impostazioni e alla premere sul pulsante "Dark/Light mode";
- L'utente/fornitore deve scegliere una delle due opzioni "Dark mode" o "Light mode";
*Postcondizioni:*
- L'utente/fornitore ha scelto una delle opzioni tra "Dark mode" o "Light mode";
- Il sistema ha modificato l'interfaccia con l'opzione scelta dall'utente/fornitore;
*Scenario Principale:*
- L’utente/fornitore ha effettuato il login, ha acceduto alle impostazioni modificato il colore dell'interfaccia tramite l'opzione "Dark/Light mode";

// TODO: rendere coerente con il resto degli use case
== Caricare il proprio logo
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- Un utente/fornitore registrato vuole caricare il proprio logo tramite l'opzione "Carica logo" per personalizzare l'interfaccia della web-app;
*Precondizioni:*
- L'utente/fornitore deve aver effettuato il login;
- L'utente/fornitore deve accedere alle impostazioni e alla sezione "Carica logo";
- L'utente/fornitore deve caricare il proprio logo nella sezione apposita;
*Postcondizioni:*
- L'utente/fornitore inserito il proprio logo;
- Il sistema ha effettuato un controllo di validità del formato del logo, e se il logo è risultato valido lo ha inserito nell'interfaccia;
*Scenario Principale:*
- L’utente/fornitore ha effettuato il login, ha acceduto alle impostazioni, alla sezione "Carica logo" e inserito il proprio logo;
- Il sistema ha controllato il formato del logo caricato e se conforme lo ha inserito nell'interaccia;
*Estensioni*:
- Formato logo non valido;

// TODO: rendere coerente con il resto degli use case
== Formato logo non valido
*Attori principali:*
- Utente/fornitore registrato;
*Descrizione:*
- Un utente/fornitore registrato ha cercato di caricare il proprio logo tramite l'opzione "Carica logo", ma il logo è in un formato non valido/supportato;
*Precondizioni:*
- L'utente/fornitore ha cercato di caricare il prorio logo, ma ha fallito;
*Postcondizioni:*
- Il sistema ha effettuato un controllo di validità del formato del logo ed è risultato non valido, quindi viene inviato un messaggio d'errore all'utente/fornitore;
*Scenario Principale:*
- L’utente/fornitore ha caricato il proprio logo;
- Il sistema ha controllato il formato del logo caricato ed è risultato non valido quindi ha inviato un messaggio d'errore all'utente/fornitore;

== Selezione palette colori
*Attori principali:*
- Fornitore;
*Descrizione:*
- Un fornitore autenticato vuole selezionare una palette di colori per personalizzare l'interfaccia della web app;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alla sezione "Palette colori";
*Postcondizioni:*
- Il fornitore ha selezionato una palette di colori;
- Il sistema ha modificato l'interfaccia con la palette di colori scelta il fornitore;
*Scenario Principale:*
- Il fornitore completa il login;
- Il fornitore entra nella sezione "Palette colori";
- Il fornitore sceglie l'insieme di colori che comporranno la palette tramite un #gloss[color picker] oppure inserendo i codici esadecimali dei colori, se dei colori non vengono scelti vengono mantenuti i colori di della palette precedente;
- Il fornitore salva le scelte effettuate;

== Visualizzare statistiche domanda-risposta
*Attori principali:*
- Fornitore;
*Descrizione*:
- Un fornitore autenticato vuole visualizzare le statistiche relative alle interazioni tra clienti e chatbot;
*Precondizioni*:
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alla sezione "Statistiche";
- Il fornitore deve avere almeno un cliente che ha interagito con il chatbot;
*Postcondizioni*:
- Vengono mostrate le statistiche relative alle interazioni tra clienti e chatbot;
*Scenario Principale*:
- Il fornitore completa il login;
- Il fornitore accede alla sezione "Statistiche";
- Il fornitore visualizza le statistiche relative alle interazioni tra clienti e chatbot, se necessario tramite grafici o tabelle;
*Estensioni*:
- Inserimento filtri di visualizzazione;
=== Inserimento filtri di visualizzazione
*Attori principali:*
- Fornitore;
*Descrizione*
- Un fornitore autenticato vuole filtrare le statistiche relative alle interazioni tra clienti e chatbot;
*Precondizioni*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alla sezione "Statistiche";
- Il fornitore deve avere almeno un cliente che ha interagito con il chatbot;
*Postcondizioni*
- Vengono applicati i filtri alle statistiche relative alle interazioni tra clienti e chatbot;
*Scenario Principale*
- Il fornitore completa il login;
- Il fornitore accede alla sezione "Statistiche";
- Il fornitore inserisce i filtri di visualizzazione desiderati;
- Il fornitore visualizza le statistiche relative alle interazioni tra clienti e chatbot, filtrate in base ai filtri inseriti;

== Aggiunta account cliente
*Attori principali:*
- Fornitore;
*Descrizione*
- Un fornitore autenticato vuole aggiungere un account per un cliente in modo che quest'ultimo possa accedere al chatbot;
*Precondizioni*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alla sezione "Gestione account clienti";
*Postcondizioni*
- Viene aggiunto un account per un cliente;
*Scenario Principale*
- Il fornitore completa il login;
- Il fornitore accede alla sezione "Gestione account clienti";
- Il fornitore inserisce i dati del cliente per creare un account;
- Il fornitore conferma l'aggiunta dell'account;
*Estensioni*
- Inserimento di parametri dell'account non validi;
- Inserimento di un account già esistente;
=== Inserimento di parametri dell'account non validi
*Attori principali:*
- Fornitore;
*Descrizione*
- Un fornitore autenticato vuole aggiungere un account per un cliente in modo che quest'ultimo possa accedere al chatbot, ma inserisce dei parametri non validi;
*Precondizioni*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alla sezione "Gestione account clienti";
- Il fornitore deve aver inserito dei parametri non validi per l'account;
*Postcondizioni*
- Viene visualizzato un messaggio di errore che indica che i parametri inseriti non sono validi;
- L'inserimento del nuovo account non va a buon fine;
*Scenario Principale*
- Il fornitore completa il login;
- Il fornitore accede alla sezione "Gestione account clienti";
- Il fornitore inserisce i dati del cliente per creare un account, ma inserisce dei parametri non validi;
- Il fornitore conferma l'aggiunta dell'account;
- Il sistema mostra un messaggio di errore il quale indica che i parametri inseriti non sono validi;
=== Inserimento di un account già esistente
*Attori principali:*
- Fornitore;
*Descrizione*:
- Un fornitore autenticato vuole aggiungere un account per un cliente in modo che quest'ultimo possa accedere al chatbot, ma tenta di inserisce un account già esistente;
*Precondizioni*:
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alla sezione "Gestione account clienti";
- L'account cliente inserito dal fornitore è già esistente;
*Postcondizioni*:
- Viene visualizzato un messaggio di errore che indica che l'account inserito è già esistente;
- L'inserimento del nuovo account non va a buon fine;
*Scenario Principale*:
- Il fornitore completa il login;
- Il fornitore accede alla sezione "Gestione account clienti";
- Il fornitore inserisce i dati del cliente per creare un account, ma inserisce un account già esistente;
- Il fornitore conferma l'aggiunta dell'account;
- Il sistema mostra un messaggio di errore il quale indica che l'account inserito è già esistente;

== Eliminazione dell'account cliente
*Attori principali:*
- Fornitore;
*Descrizione*
- Un fornitore autenticato vuole eliminare un account di un cliente in modo che quest'ultimo non possa più accedere al chatbot;
*Precondizioni*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alla sezione "Gestione account clienti";
*Postcondizioni*
- Viene eliminato un account di un cliente;
*Scenario Principale*
- Il fornitore completa il login;
- Il fornitore accede alla sezione "Gestione account clienti";
// Corner case non devono essere gestiti perché i metodi di selezione dell'account da eliminare costringono il fornitore ad eliminare solo account esistenti:
- Il fornitore seleziona l'account del cliente da eliminare tra una lista di quelli disponibili, oppure usa il bottone di eliminazione relativo ad un account specifico tra quelli visualizzati;
- Il fornitore conferma l'eliminazione dell'account;
// TODO: Viene richiesto l'inserimento di una password per confermare l'eliminazione dell'account oppure una conferma più complessa;

// TODO: probabile che manchino altri use case fornitore
