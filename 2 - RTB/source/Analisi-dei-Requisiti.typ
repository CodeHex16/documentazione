#import "../../template/documenti.typ": *
#import "../../template/i-figured.typ"

#show: doc => documento(titolo: "Analisi dei Requisiti", data: [12/11/2024], ruoli: (
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
), sommario: [Analisi dei requisiti del capitolato C7], versioni: (
  "0.5.0",
  "11/01/2025",
  "Filippo Sabbadin",
  "Corretti use case sul login, aggiunte immagini con i grafici UML",
  "!!!!!!!!!!!!!!!!!!!",
  "0.4.0",
  "06/01/2025",
  "Luca Ribon",
  "Aggiunti altri use case, corretti alcuni dei precedenti",
  "Filippo Sabbadin",
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
), doc)
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

== Scopo e Descrizione del Prodotto
Il progetto consiste nella realizzazione di un *chatbot* basato su modelli linguistici (*LLM*) pensato per i
**fornitori** di beni, come bevande o alimenti, da offrire ai propri clienti. Questo sistema consente ai clienti di
ottenere in modo semplice e immediato informazioni dettagliate sui prodotti o servizi disponibili, senza la necessità di
contattare direttamente un operatore dell'azienda.

Il chatbot si integra con un'interfaccia dedicata al fornitore, che permette di:

- Gestire i clienti e i documenti contenenti le informazioni di riferimento utilizzate dal modello linguistico per
  generare risposte accurate e personalizzate.
- Personalizzare graficamente la piattaforma tramite l'inserimento del logo aziendale e la selezione di una palette
  colori.

== Obiettivi del sistema

- **Semplificazione del flusso informativo**: riduce i tempi di risposta alle richieste dei clienti e rende l'accesso alle
  informazioni rapido e indipendente da intermediari umani.
- **Ottimizzazione della produttività aziendale**: semplifica la gestione dei documenti e migliora la produttività
  interna.
- **Esperienza utente migliorata**: garantisce risposte precise e aggiornate in qualsiasi momento, offrendo un'interazione
  fluida e accessibile.

== Benefici

Il progetto vuole dimostrare come le tecnologie *LLM* possano trasformare la gestione del servizio clienti, ampliando le
possibilità di mercato e rafforzando la fidelizzazione degli utenti. L'integrazione di un'interfaccia di amministrazione
offre agli operatori aziendali uno strumento versatile per monitorare e personalizzare il sistema, garantendo il massimo
controllo sui contenuti e una rapida adattabilità agli aggiornamenti di catalogo.

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

== Glossario
Per facilitare la comprensione di questo documento, viene fornito un glossario che chiarisce il significato dei termini
specifici utilizzati nel contesto del progetto. Ogni termine di glossario è contrassegnato con un asterisco "\*" in
apice e collegato direttamente alla pagina web del glossario, permettendo così di accedere immediatamente alla
definizione completa del termine. Le definizioni sono disponibili nel documento #link("https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf")[Glossario.pdf] e
nella seguente pagina web: #link("https://codehex16.github.io/glossario").

=== Riferimenti normativi:
- #gloss[Norme di progetto] v1.0.0

- Capitolato C7 - #gloss[Assistente Virtuale] Ergon:

#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")

=== Riferimenti informativi:
- Slide T06 del corso di Ingegneria del software - Analisi dei requisiti:
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T06.pdf")

- "Analisi e descrizione delle funzionalità: #gloss[Use case] e relativi diagrammi (UML)":\
#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")

== Funzionalità del prodotto

L’applicazione permette di:

- creare un #gloss[account] dotato di email e password;
- accedere al proprio account sempre con la coppia email e password scelte durante la registrazione
- modificare dati dell’utente (es email, password)
- Scrittura ed invio di messagi
- Modificare il numero di messaggi recenti visualizzabili
- modificare il colore principale dell’aplicazione (chiaro o scuro)

== Utenti e caratteristiche

La webapp è rivolta verso ristoratori che vogliono offrire un’assistenza veloce verso i clienti. I ristoratori, dopo
essersi registrati, possono inserire, modificare ed eliminare informazioni sui propri prodotti. Gli utenti, registrati o
no, possono poi scrivere al chatbot per richiedere queste informazioni.

= Use Cases

== Introduzione

Nelle seguenti sezioni verranno descritti tutti i possibili casi d'uso, cioè tutti i modi in cui gli attori, definiti
più avanti, possono interagire con l'applicazione.

== Attori
*Amministratore*: rappresenta la persona o il gruppo di persone che si occupa della distribuzione e configurazione del
sistema per tutti i fornitori. Gestisce anche gli account dei fornitori.\
In questo caso va interpretato come l'azienda Ergon Informatica Srl.\
Questo utente ha accesso ad un'#gloss[interfaccia web] di configurazione del chatbot e di gestione degli account dei
clienti.\
*Cliente*: rappresenta il cliente finale che acquista prodotti dal fornitore e che ha la possibilità di interagire con
il chatbot del fornitore per ottenere informazioni sui prodotti o servizi offerti.\
*Fornitore*: reppresenta l'azienda che fornisce dei prodotti ai propri clienti, ogni fornitore ha una sua istanza di
chatbot; è una generalizzazione di Cliente infatti, oltre a poter accedere al proprio chatbot, può anche fornire il
contesto tramite dei documenti aziendali o #gloss[FAQ] e personalizzare graficamente l'interfaccia variando logo e
palette colori.\
// TODO: capire se tenerlo ->
*Sistema*: rappresenta il #gloss[backend] del sistema, incluso quello dell'LLM quando viene interrogato.\
Quando si parla di *utente* si intende un utente generico che compie operazioni accessibili sia ai fornitori che ai
clienti.

#figure(image("../imgs/attori.png", width: 70%), caption: "Lista degli attori")

== UC1 - Login
#figure(
  image("../imgs/login.png", width: 90%),
  caption: "Inserimento e-mail e password fornitore + possibilità 'Resta connesso'",
)
*Attori principali:*
- Fornitore/Cliente;
*Attori secondari:*
- Sistema;
*Descrizione:*
- Un utente vuole accedere alla piattaforma per la configurazione del proprio chatbot e per interagire con esso;
*Precondizioni:*
- L'utente è in possesso delle proprie credenziali;
- L'utente ha già effettuato il primo login e cambiato la password temporanea;
- L'utente non è già autenticato;
*Postcondizioni:*
- Se l'utente ha inserito le credenziali corrette, accede alla piattaforma;
*Scenario Principale:*
- L'utente ha inserito l’indirizzo e-mail e la password alla piattaforma dedicata;
- L'utente riceve la richiesta di accesso e verifica le credenziali;
*Generalizzazioni*:
- Primo login fornitore;
- Primo login cliente;
*Estensioni:*
- Credenziali errate;
- Sistema non raggiungibile;
*Inclusioni:*
- Inserimento e-mail;
- Inserimento password;
- Possibilità "Resta connesso";

=== UC1.1 - Inserimento e-mail
#figure(
  image("../imgs/inserimento-email-password.png", width: 90%),
  caption: "Inserimento e-mail e password fornitore + possibilità 'Resta connesso'",
)
*Attori principali:*
- Fornitore/Cliente;
*Attori secondari:*
- Sistema;
*Precondizioni:*
- L'utente deve essere registrato;
- L'utente deve essere in possesso della sua e-mail;
*Postcondizioni:*
- L'utente ha inserito la sua e-mail;
*Scenario principale:*
- L'utente inserisce la sua e-mail nella casella che la richiede;
*Estensioni:*
- E-mail non valida;

=== UC1.2 - Inserimento password
*Attori principali:*
- Fornitore/Cliente;
*Attori secondari:*
- Sistema;
*Precondizioni:*
- L'utente deve essere registrato;
- L'utente deve essere in possesso della sua password;
*Postcondizioni:*
- L'utente ha inserito la sua password;
*Scenario principale:*
- L'utente inserisce la sua password nella casella che la richiede;
*Estensioni:*
- Password non valida;

=== UC1.3 - E-mail non valida
*Attori principali:*
- Fornitore/Cliente;
*Attori secondari:*
- Sistema;
*Precondizioni:*
- L'utente ha inserito un'e-mail sbagliata;
*Postcondizioni:*
- Il sistema notifica l'utente che la mail inserita è sbagliata;
- L'utente non può effettuare il login;
*Scenario principale:*
- L'utente inserisce un'e-mail sbagliata e il sistema dà errore;

=== UC1.4 - Password non valida
*Attori principali:*
- Fornitore/Cliente;
*Attori secondari:*
- Sistema;
*Precondizioni:*
- L'utente ha inserito una password sbagliata o che non rispetta le condizioni;
*Postcondizioni:*
- Il sistema notifica l'utente che la password inserita è sbagliata;
- L'utente non può effettuare il login;
*Scenario principale:*
- L'utente inserisce una password sbagliata e il sistema dà errore;

== UC2 - Primo login fornitore
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
- Sistema non raggiungibile;
*Inclusioni:*
- Inserimento password;
- Possibilità "Resta connesso";
/*
== UC3 - Login cliente
*Attori principali:*
- Cliente;
*Attori secondari:*
- Sistema;
*Descrizione:*
- Un cliente vuole accedere alla piattaforma per interagire con il chatbot del fornitore;
*Precondizioni:*
- Il cliente è in possesso delle proprie credenziali;
- Il cliente ha già effettuato il primo login e cambiato la password temporanea;
- Il cliente non è già autenticato;
*Postcondizioni:*
- Se il cliente ha inserito le credenziali corrette, accede alla piattaforma;
*Scenario Principale:*
- Il cliente ha inserito l’indirizzo e-mail e la password al fine di accedere alla webapp;
- Il sistema riceve la richiesta di accesso e verifica le credenziali;
*Generalizzazioni*:
- Primo login cliente;
*Estensioni:*
- Credenziali errate;
- Sistema non raggiungibile;
*Inclusioni:*
- Inserimento password;
- Possibilità "Resta connesso";

=== UC3.1 - Inserimento e-mail cliente
#figure(
  image("../imgs/email-password-cliente.png", width: 80%),
  caption: "Inserimento e-mail e password cliente + possibilità 'Resta connesso'",
)
=== UC3.2 - Inserimento password cliente
*/
== UC4 - Primo login cliente
*Attori principali:*
- Cliente;
*Attori secondari:*
- Fornitore;
- Sistema;
*Descrizione:*
- Un cliente vuole accedere per la prima volta alla piattaforma per interagire con il chatbot del fornitore;
*Precondizioni:*
- Le credenziali del cliente sono state corretamente inserite dal fornitore;
- Il cliente non ha mai effettuato l'accesso alla piattaforma;
- Il cliente deve essere in possesso delle sue credenziali fornite dal fornitore;
*Postcondizioni:*
- Il cliente ha effettuato il primo accesso alla piattaforma;
- Il cliente ha cambiato la password temporanea con una nuova password;
*Scenario Principale:*
- Il fornitore:
  - inserisce l'account del cliente nella piattaforma;
  - condivide le credenziali temporanee per l'accesso alla piattaforma;
- Il cliente:
  - accede alla piattaforma;
  - inserisce l'indirizzo e-mail e la password temporanea fornitegli dal fornitore;
  - se ha inserito le credenziali corrette, aggiorna la password;
- Il sistema:
  - riceve le credenziali inserite dal cliente;
  - verifica la correttezza delle credenziali;
  - se le credenziali sono corrette richiede al cliente di cambiare la password temporanea con una nuova;
    - reindirizza alla piattaforma;
  - se le credenziali sono errate, restituisce un errore e permette di reinserirle;
*Estensioni:*
- Credenziali errate;
- Sistema non raggiungibile;
*Inclusioni:*
- Inserimento password;
- Possibilità "Resta connesso";

== UC5 - Credenziali errate
*Attori principali:*
- Sistema;
*Attori secondari:*
- Fornitore/cliente;
*Descrizione:*
- Un utente cercando di compiere il login ha inserito delle credenziali errate;
*Precondizioni:*
- Il sistema ha ricevuto le credenziali inserite dall'utente;
*Postcondizioni:*
- Il sistema restituisce un errore indicando che la l'operazione è fallita, con alcune informazioni sul perché del
  fallimento;
*Scenario Principale:*
- Il sistema ha ricevuto le credenziali inserite dall'utente ma queste non sono quelle corrette, pertanto viene
  visualizzato un messaggio d'errore;
*Estensioni:*
- Sistema non raggiungibile;

== UC6 - Possibilità "Resta connesso"
*Attori principali:*
- Fornitore/cliente;
*Attori secondari:*
- Sistema;
*Descrizione:*
- Un utente vuole mantenere l'accesso attivo al fine di non dover effettuare il login, inserendo le credenziali, ogni
  volta che ha intenzione di accedere alla web app;
*Precondizioni:*
- Le credenziali dell'utente devono essere presenti nel sistema;
- L'utente deve essere possedere le credenziali necessarie per l'accesso;
- L'utente deve inserire le credenziali corrette;
*Postcondizioni:*
- È stata salvata la preferenza dell'utente relativa al salvataggio delle credenziali;
*Scenario Principale:*
- L’utente inserisce le credenziali
- Solo se l'utente seleziona l'opzione "Resta connesso", il sistema mantiene in memoria locale le credenziali per un
  futuro login senza doverle richiedere all'utente;

== UC7 - Cambio password
#figure(image("../imgs/cambio-password.png", width: 80%), caption: "Cambio password")
*Attori principali:*
- Fornitore/cliente;
*Attori secondari:*
- Sistema;
*Descrizione:*
- Un utente vuole cambiare la password del proprio account;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve accedere alle impostazioni e alla sezione "Cambio password";
*Postcondizioni:*
- Il sistema effettua un controllo sulla validità della password e se valida conferma il cambiamento della password;
*Scenario Principale:*
- L’utente invia la richiesta di cambio password inserendo la nuova password scelta;
- Il sistema riceve la richiesta, controlla che la password sia valida e se lo è conferma il cambiamento della password;
*Estensioni:*
- Password non valida;
- Sistema non raggiungibile;

== UC8 - Recupero password
*Attori principali:*
- Fornitore/cliente;
*Attori secondari:*
- Sistema;
*Descrizione:*
- Un utente vuole recuperare la password del proprio account;
*Precondizioni:*
- L'utente deve possedere l'e-mail a cui è associato il suo account e inserirla nella sezione apposita così da poter
  ricevere tramite e-mail la password associata al suo account;
- L'utente ha premuto il pulsante "Passowrd dimenticata";
*Postcondizioni:*
- Il sistema invia le istruzioni per il recupero della password se la mail inserita è valida;
*Scenario Principale:*
- L’utente invia la richiesta di recupero password inserendo l'e-mail associata al proprio account;
- Il sistema riceve la richiesta, controlla che l'e-mail sia valida e, se lo è, invia alla e-mail le istruzioni per il
  recupero della password;
*Estensioni:*
- Credenziali errate;
- Sistema non raggiungibile;
- Inserimento password;

== UC9 - Logout
#figure(image("../imgs/logout.png", width: 50%), caption: "Cambio password")
*Attori principali:*
- Forntitore/cliente;
*Attori secondari:*
- Sistema;
*Descrizione:*
- Un utente vuole effettuare il logout disconnettendosi dal sistema;
*Precondizioni:*
- L'utente deve aver effettuato il login;
*Postcondizioni:*
- Il sistema ha ricevuto la richiesta di logout e la effettua;
*Scenario Principale:*
- L’utente preme il pulsante di logout;
- Il sistema riceve la richiesta di logout e disconnette l'utente dal sistema;

== UC10 - Visualizzazione delle chat
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole visualizzare le delle chat avute con il chatbot;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente preme sul pulsante "Visualizza chat";
*Postcondizioni:*
- L'utente accede alla sezione "Visualizza chat";
*Scenario Principale:*
- L’utente preme sul pulsante "Visuallizza chat", quindi accede alla sezione corrispondente;
*Estensioni:*
- Sistema non raggiungibile;

== UC11 - Scrittura e invio messaggio
*Attori principali:*
- Fornitore/cliente;
*Attori secondari:*
- Sistema;
*Descrizione:*
- Un utente vuole comunicare con il chatbot;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve accedere alla sezione dedicata alla comunicazione con il chatbot;
*Postcondizioni:*
- L'utente invia il messaggio al chatbot;
*Scenario Principale:*
- L’utente scrive e invia il messaggio al chatbot;
- Il sistema riceve il messaggio, lo analizza e procede a rispondere;
*Estensioni*
- Sistema non raggiungibile;

== UC12 Ricezione risposta
*Attori principali:*
- Fornitore/cliente;
*Attori secondari:*
- Sistema;
*Descrizione:*
- Il chatbot ha ricevuto un messaggio, lo ha analizzato e procede fornendo una risposta;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve aver inviato un messaggio al chatbot;
*Postcondizioni:*
- L'utente ha ricevuto la risposta dal chatbot;
*Scenario Principale:*
- Il chatbot ha elaborato e restituito una risposta;
- La risposta viene mostrata all'utente tramite;
*Estensioni:*
- Sistema non raggiungibile;

== UC13 - Valutazione risposta
*Attori principali:*
- Fornitore/cliente;
*Attori secondari:*
- Sistema;
*Descrizione:*
- L'utente ha ricevuto la risposta dal chatbot e vuole dare un feedback su tale risposta tramite l'opzione "Pollice
  su/giù";
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve aver inviato un messaggio al chatbot;
- L'utente deve aver ricevuto una risposta dal chatbot;
*Postcondizioni:*
- Il feedback dell'utente viene registrato dal sistema;
*Scenario Principale:*
- L'utente ha ricevuto una risposta dal chatbot e valutato tale risposta con l'opzione "Pollice su" o "Pollice giù";
- Il sistema registra il feedback dell'utente;
*Estensioni:*
- Sistema non raggiungibile;

== UC14 - Selezione Dark/Light Mode
*Attori principali:*
- Fornitore/cliente;
*Attori secondari:*
- Sistema;
*Descrizione:*
- Un utente vuole modificare il tema dell'interfaccia della web-app tramite l'opzione "Dark/Light mode";
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve accedere alle impostazioni;
*Postcondizioni:*
- Il sistema ha modificato l'interfaccia lato client con l'opzione scelta dall'utente;
*Scenario Principale:*
- L'utente modifica il tema dell'interfaccia tramite l'opzione "Dark/Light mode";
- Il sistema modifica il tema dell'interfaccia lato client con l'opzione scelta dall'utente;

//////////////////////////////////////////////////////////////////////////
// FORNITORE
//////////////////////////////////////////////////////////////////////////
== UC15 - Modifica della durata dello storico delle chat
*Attori principali:*
- Fornitore;
*Attore secondario:*
- Sistema;
*Descrizione:*
- Il fornitore vuole cambiare limite massimo di tempo per cui viene salvato lo storico delle chat;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alle impostazioni;
*Postcondizioni:*
- Viene modificato limite di tempo di memorizzazione dello storico;
*Scenario Principale:*
- Il fornitore modifica il periodo di tempo su cui visualizare lo storico delle chat avvenute con il chatbot e lo
  conferma;
- Il sistema memorizza la nuova impostazione;
*Estensioni:*
- Sistema non raggiungibile;

== UC16 - Caricare il proprio logo
*Attori principali:*
- Fornitore;
*Attori secondari:*
- Sistema;
*Descrizione:*
- Un fornitore vuole caricare il proprio logo per personalizzare l'interfaccia della web-app;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alle impostazioni
*Postcondizioni:*
- Il sistema ha effettuato un controllo di validità del formato del logo, e se il logo è risultato valido lo ha inserito
  nell'interfaccia;
*Scenario Principale:*
- Il fornitore accede alla sezione "Carica logo" e inserisce il proprio logo;
- Il sistema controlla il formato del logo caricato e se conforme lo utilizza nell'interaccia;
*Estensioni*:
- Formato logo non valido;

== UC17 - Formato logo non valido
*Attori principali:*
- Sistema;
*Attori secondari:*
- Fornitore;
*Descrizione:*
- Il fornitore ha cercato di caricare il proprio logo tramite l'opzione "Carica logo", ma il logo è in un formato non
  valido/supportato;
*Precondizioni:*
- Il fornitore ha caricato un logo;
- Il sistema ha ricevuto il logo caricato;
*Postcondizioni:*
- Viene inviato un messaggio d'errore al fornitore;
*Scenario Principale:*
- Il sistema riceve il logo caricato dal fornitore e dopo aver verificato che il formato non è valido, invia un messaggio
  d'errore al fornitore;

== UC18 - Selezione palette colori
*Attori principali:*
- Fornitore;
*Attori secondari:*
- Sistema;
*Descrizione:*
- Un fornitore vuole selezionare una palette di colori per personalizzare l'interfaccia della web app;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alle impostazioni;
*Postcondizioni:*
- Il sistema ha modificato l'interfaccia con la palette di colori scelta il fornitore;
*Scenario Principale:*
- Il fornitore entra nella sezione "Palette colori";
- Il fornitore sceglie l'insieme di colori che comporranno la palette tramite un #gloss[color picker] oppure inserendo i
  codici esadecimali dei colori, se dei colori non vengono scelti vengono mantenuti i colori di della palette precedente;
- Il fornitore salva le scelte effettuate;
- Il sistema modifica l'interfaccia con i colori scelti dal fornitore;

== UC19 - Visualizzare statistiche domanda-risposta
*Attori principali:*
- Fornitore;
*Attori secondari:*
- Sistema;
*Descrizione*:
- Un fornitore vuole visualizzare le statistiche relative alle interazioni tra clienti e chatbot;
*Precondizioni*:
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alle impostazioni;
- Il fornitore deve avere almeno un cliente che ha interagito con il chatbot;
*Postcondizioni*:
- Vengono mostrate le statistiche relative alle interazioni tra clienti e chatbot;
*Scenario Principale*:
- Il fornitore accede alla sezione "Statistiche";
- Il sistema mostra le statistiche relative alle interazioni tra clienti e chatbot, se necessario tramite grafici o
  tabelle;
*Estensioni*:
- Inserimento filtri di visualizzazione;
- Sistema non raggiungibile;

== UC20 - Inserimento filtri di visualizzazione
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
- Il fornitore inserisce i filtri di visualizzazione desiderati;
- Il sistema applica i filtri alle statistiche;

== UC21 - Aggiunta account cliente
*Attori principali:*
- Fornitore;
*Attori secondari:*
- Sistema;
*Descrizione:*
- Un fornitore autenticato vuole aggiungere un account per un cliente in modo che quest'ultimo possa accedere al chatbot;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alla sezione "Gestione account clienti";
*Postcondizioni:*
- Viene aggiunto un account per un cliente;
*Scenario Principale:*
- Il fornitore inserisce i dati del cliente per creare un account;
- Viene richiesta la password del fornitore per confermare l'aggiunta;
- Il fornitore conferma l'aggiunta dell'account;
- Il sistema aggiunge l'account per il cliente;
*Estensioni:*
- Inserimento di parametri dell'account non validi;
- Inserimento di un account già esistente;
- Inserimento password;
- Sistema non raggiungibile;

== UC22 - Inserimento di parametri dell'account non validi
*Attori principali:*
- Sistema;
*Attori secondari:*
- Fornitore;
*Descrizione:*
- Un fornitore autenticato vuole aggiungere un account per un cliente in modo che quest'ultimo possa accedere al chatbot,
  ma inserisce dei parametri non validi;
*Precondizioni:*
- Il sistema ha ricevuto i parametri dell'account inseriti dal fornitore;
*Postcondizioni:*
- Viene visualizzato un messaggio di errore che indica che i parametri inseriti non sono validi;
- L'inserimento del nuovo account non va a buon fine;
*Scenario Principale:*
- Il sistema riceve i parametri dell'account inseriti dal fornitore, ma questi non sono validi;
- Il sistema mostra un messaggio di errore il quale indica che i parametri inseriti non sono validi;

== UC23 - Inserimento di un account già esistente
* Attori principali:*
- Sistema;
* Attori secondari:*
- Fornitore;
*Descrizione:*
- Un fornitore autenticato vuole aggiungere un account per un cliente in modo che quest'ultimo possa accedere al chatbot,
  ma tenta di inserisce un account già esistente;
*Precondizioni:*
- Il sistema ha ricevuto i parametri dell'account inseriti dal fornitore;
*Postcondizioni:*
- Viene visualizzato un messaggio di errore che indica che l'account inserito è già esistente;
- L'inserimento del nuovo account non va a buon fine;
*Scenario Principale:*
- Il sistema riceve i parametri dell'account inseriti dal fornitore, ma questo è già presente nel sistema;
- Il sistema mostra un messaggio di errore il quale indica che l'account inserito è già esistente;

== UC24 - Eliminazione dell'account cliente
*Attori principali:*
- Fornitore;
*Attori secondari:*
- Sistema;
*Descrizione*
- Un fornitore autenticato vuole eliminare un account di un cliente in modo che quest'ultimo non possa più accedere al
  chatbot.\ In questo caso non vengono gestiti i corner case in cui il fornitore elimina un account non esistente o
  selezionando credenziali errate, poiché i metodi di selezione dell'account da eliminare costringono il fornitore ad
  eliminare solo account esistenti;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alla sezione "Gestione account clienti";
*Postcondizioni:*
- Viene eliminato un account di un cliente;
*Scenario Principale:*
- Il fornitore seleziona l'account del cliente da eliminare tra una lista di quelli disponibili, oppure usa il bottone di
  eliminazione relativo ad un account specifico tra quelli visualizzati;
- Viene richiesta la password del fornitore per confermare l'eliminazione;
- Il fornitore conferma l'eliminazione dell'account;
- Il sistema elimina l'account del cliente;
*Estensioni:*
- Inserimento password;
- Sistema non raggiungibile;
/*
== UC25 - Inserimento password
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente inserisce la sua password per effettuare il login;
*Precondizioni:*
- La password dell'utente deve essere presente nel sistema;
- L'utente deve essere in possesso della password a lui associata;
*Scenario Principale:*
- L’utente ha inserito la password necessaria per effettuare l'accesso
*Estensioni:*
- Password scelta non valida;
*/
== UC25 - Password scelta non valida
*Attori principali:*
- Sistema;
*Attori secondari:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole cambiare la propria password ma ne sceglie una non valida;
*Precondizioni:*
- L'utente deve aver effettuato il suo primo accesso;
- Il sistema deve aver ricevuto la password inserita dall'utente;
*Postcondizioni:*
- Viene richiesta un'altra password;
*Scenario Principale:*
- Il sistema riceve la password inserita dall'utente;
- Il sistema verifica la password inserita e la trova non conforme ai requisiti, quindi invia un messaggio d'errore
  all'utente con la richiesta di scegliere un'altra password valida;

== UC26 - Sistema non raggiungibile
*Attori principali:*
- Sistema;
*Descrizione:*
- Il sistema non è raggiungibile;
*Precondizioni:*
- Il sistema è stato configurato;
*Postcondizioni:*
- Viene notificato il problema all'utente;
*Scenario Principale:*
- L'utente tenta di compiere un'operazione che richiede la comunicazione con il sistema, ma il sistema non è
  raggiungibile;
- Il sistema mostra un messaggio d'errore all'utente tramite il client;


// TODO: use case cliente login...
