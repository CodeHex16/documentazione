#import "../../template/documenti.typ": *

#show: doc => documento(
  titolo: "Analisi dei Requisiti",
  data: [12/11/2024],
  ruoli: (
    "Matteo Bazzan",
    "",
    "Luca Ribon",
    "",
    "Francesco Fragonas",
    "Redattore",
    "Gabriele Magnelli",
    "",
    "Filippo Sabbadin",
    "",
    "Luca Rossi",
    "",
    "Yi Hao Zhuo",
    "",
  ),
  sommario: [Analisi dei requisiti del capitolato C7],
  versioni: (
    "",
    "08/12/2024",
    "Luca Ribon",
    "Aggiunta use case amministratore e piccole correzioni",
    "",
    "0.1.0",
    "12/11/2024",
    "Francesco Fragonas",
    "Prima stesura",
    "Matteo Bazzan",
  ),
  doc,
)

= Introduzione
== Scopo del documento
Il presente documento descrive in dettaglio i *casi d'uso* e i *requisiti* relativi al progetto "LLM, Assistente
Virtuale". Tali specifiche sono state elaborate a partire dall'analisi del capitolato C7, proposto da Ergon, e dagli incontri svolti online e in presenza con l'azienda.

== Scopo del prodotto
Il software da realizzare consiste in un chatbot, basato su modelli linguistici (LLM), che un fornitore, ad esempio dibevande o alimenti, può offrire ai propri clienti, i quali possono ottenere in modo semplice e immediato informazioni dettagliate sui prodotti o servizi disponibili, senza la necessità di contattare direttamente un operatore dell'azienda.

Il sistema prevede anche un'interfaccia dedicata all'azienda fornitrice, che consente la gestione dei clienti e dei documenti contenenti le informazioni di riferimento. Questi documenti saranno utilizzati dal modello linguistico per generare risposte accurate e personalizzate, garantendo un'esperienza utente ottimale. Inoltre l'interfaccia del fornitore permette di personalizzare graficamente la propria piattaforma tramite l'inserimento di un logo e la selezione di una palette colori.

// TODO: grafico attori, con generalizzazione
=== Attori
*Amministratore*: rappresenta la persona o il gruppo di persone che si occupa della distribuzione e configurazione del sistema per tutti i fornitori. Gestisce anche gli account dei fornitori.\
In questo caso va interpretato come l'azienda Ergon Informatica Srl.\
Questo utente ha accesso ad un'interfaccia web di configurazione del chatbot e di gestione degli account dei clienti.\
*Cliente*: rappresenta il cliente finale che acquista prodotti dal fornitore e che ha la possibilità di interagire con il chatbot del fornitore per ottenere informazioni sui prodotti o servizi offerti.\
*Fornitore*: reppresenta l'azienda che fornisce dei prodotti ai propri clienti, ogni fornitore ha una sua istanza di chatbot; è una generalizzazione di Cliente infatti, oltre a poter accedere al proprio chatbot, può anche fornire il contesto tramite dei documenti aziendali o FAQ e personalizzare graficamente l'interfaccia variando logo e palette colori. \
// TODO: capire se tenerlo ->
*Sistema*: rappresenta il backend del sistema, incluso quello dell'LLM quando viene interrogato.\

== Glossario
Per facilitare la comprensione di questo documento, viene fornito un glossario che chiarisce il significato dei termini specifici utilizzati nel contesto del progetto. Ogni termine di glossario è contrassegnato con un asterisco "\*" in apice e collegato direttamente alla pagina web del glossario, permettendo così di accedere immediatamente alla definizione completa del termine. Le definizioni sono disponibili nel documento #link("https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf")[Glossario.pdf] e nella seguente pagina web: #link("https://codehex16.github.io/glossario").

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
- Il fornitore sceglie l'insieme di colori che comporranno la palette tramite un color picker oppure inserendo i codici esadecimali dei colori, se dei colori non vengono scelti vengono mantenuti i colori di della palette precedente;
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