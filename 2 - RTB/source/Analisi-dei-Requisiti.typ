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
  "0.6.0",
  "31/01/2025",
  "Filippo Sabbadin, Luca Ribon",
  "Aggiunta sezione requisiti, migliorati use case esistenti",
  "!!VERIFICATORE!!",
  "0.5.0",
  "11/01/2025",
  "Filippo Sabbadin",
  "Corretti use case sul login, aggiunte immagini con i grafici UML",
  "Yi Hao Zhuo",
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
#i-figured.outline(target-kind: table, title: [Lista di tabelle])
#pagebreak()
#set page(numbering: "1")
#counter(page).update(1)

= Introduzione

== Scopo e Descrizione del Prodotto

Il progetto consiste nella realizzazione di un *#gloss[chatbot]* basato su modelli linguistici (*#gloss[LLM]*) pensato
per i *fornitori* di beni, come bevande o alimenti, da offrire ai propri clienti. Questo sistema consente ai clienti di
ottenere in modo semplice e immediato informazioni dettagliate sui prodotti o servizi disponibili, senza la necessità di
contattare direttamente un operatore dell'azienda.

Il chatbot si integra con un'interfaccia dedicata al #gloss[fornitore], che permette di:

- Gestire i clienti e i documenti contenenti le informazioni di riferimento utilizzate dal modello linguistico per
  generare risposte accurate e personalizzate.
- Personalizzare graficamente la piattaforma tramite l'inserimento del logo aziendale e la selezione di una palette
  colori.

== Obiettivi del sistema

- *Semplificazione del flusso informativo*: riduce i tempi di risposta alle richieste dei clienti e rende l'accesso alle
  informazioni rapido e indipendente da intermediari umani.
- *Ottimizzazione della produttività aziendale*: semplifica la gestione dei documenti e migliora la produttività interna.
- *Esperienza utente migliorata*: garantisce risposte precise e aggiornate in qualsiasi momento, offrendo un'interazione
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
- Slide T06 del corso di Ingegneria del software - #gloss[Analisi dei requisiti]:

#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T06.pdf")

- "Analisi e descrizione delle funzionalità: #gloss[Use case] e relativi diagrammi (#gloss[UML])":

#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")

== Funzionalità del prodotto

L'applicazione permette di:

- creare un #gloss[account] dotato di email e password;
- accedere al proprio account sempre con la coppia email e password scelte durante la registrazione
- modificare dati dell'utente (es email, password)
- Scrittura ed invio di messagi
- Modificare il numero di messaggi recenti visualizzabili
- modificare il colore principale dell'aplicazione (chiaro o scuro)

== Utenti e caratteristiche
La #gloss[webapp] è rivolta verso ristoratori che vogliono offrire un'assistenza veloce verso i clienti. I ristoratori,
dopo essersi registrati, possono inserire, modificare ed eliminare informazioni sui propri prodotti. Gli utenti,
registrati o no, possono poi scrivere al chatbot per richiedere queste informazioni.

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
// *Sistema*: rappresenta il #gloss[backend] del sistema, incluso quello dell'LLM quando viene interrogato.\
Quando si parla di *utente* si intende un utente generico che compie operazioni accessibili sia ai fornitori che ai clienti.

#figure(image("../imgs/attori.png", width: 70%), caption: "Lista degli attori")

== UC1 - Login
#figure(
  image("../imgs/login.png", width: 90%),
  caption: "Inserimento e-mail e password fornitore + possibilità 'Resta connesso'",
)
*Attori principali:*
- Fornitore/Cliente;
*Descrizione:*
- Un utente vuole accedere alla piattaforma per la configurazione del proprio chatbot e per interagire con esso;
*Precondizioni:*
- L'utente è in possesso delle proprie credenziali;
- L'utente ha già effettuato il primo login e cambiato la password temporanea;
- L'utente non è già autenticato;
*Postcondizioni:*
- Se l'utente ha inserito le credenziali corrette, accede alla piattaforma;
*Scenario Principale:*
- L'utente ha inserito l'indirizzo e-mail e la password alla piattaforma dedicata;
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

\
#figure(
  image("../imgs/inserimento-email-password.png", width: 90%),
  caption: "Inserimento e-mail e password fornitore + possibilità 'Resta connesso'",
)
=== UC1.1 - Inserimento e-mail
*Attori principali:*
- Fornitore/Cliente;
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
  - se ha inserito le credenziali corrette, chiede di aggiornare la password;
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
*Descrizione:*
- Un cliente vuole accedere alla piattaforma per interagire con il chatbot del fornitore;
*Precondizioni:*
- Il cliente è in possesso delle proprie credenziali;
- Il cliente ha già effettuato il primo login e cambiato la password temporanea;
- Il cliente non è già autenticato;
*Postcondizioni:*
- Se il cliente ha inserito le credenziali corrette, accede alla piattaforma;
*Scenario Principale:*
- Il cliente ha inserito l'indirizzo e-mail e la password al fine di accedere alla webapp;
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
  - se ha inserito le credenziali corrette, chiede di aggiornare la password;
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
- L'utente inserisce le credenziali
- Solo se l'utente seleziona l'opzione "Resta connesso", il sistema mantiene in memoria locale le credenziali per un
  futuro login senza doverle richiedere all'utente;

== UC??? - Cambio e-mail
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole cambiare l'e-mail del proprio account;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve accedere alle impostazioni e alla sezione "Cambio e-mail";
*Postcondizioni:*
- Il sistema effettua un controllo sulla validità della e-mail e se valida conferma il cambiamento
dell'e-mail; *Scenario Principale:*
- L'utente invia la richiesta di cambio e-mail inserendo la nuova e-mail scelta;
- Il sistema riceve la richiesta, controlla che la e-mail sia valida e se lo è conferma il cambiamento della e-mail;
*Estensioni:*
- Inserimento e-mail;
- Sistema non raggiungibile;

== UC7 - Cambio password
#figure(image("../imgs/cambio-password.png", width: 90%), caption: "Cambio password")
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole cambiare la password del proprio account;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve accedere alle impostazioni e alla sezione "Cambio password";
*Postcondizioni:*
- Il sistema effettua un controllo sulla validità della password e se valida conferma il cambiamento della password;
*Scenario Principale:*
- L'utente invia la richiesta di cambio password inserendo la nuova password scelta;
- Il sistema riceve la richiesta, controlla che la password sia valida e se lo è conferma il cambiamento della password;
*Estensioni:*
- Inserimento password;
- Sistema non raggiungibile;

== UC8 - Recupero password
#figure(image("../imgs/recupero-password.png", width: 80%), caption: "Recupero password")
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole recuperare la password del proprio account;
*Precondizioni:*
- L'utente deve possedere l'e-mail a cui è associato il suo account e inserirla nella sezione apposita così da poter
  ricevere tramite e-mail la password associata al suo account;
- L'utente ha premuto il pulsante "Passowrd dimenticata";
*Postcondizioni:*
- Il sistema invia le istruzioni per il recupero della password se la mail inserita è valida;
*Scenario Principale:*
- L'utente invia la richiesta di recupero password inserendo l'e-mail associata al proprio account;
- Il sistema riceve la richiesta, controlla che l'e-mail sia valida e, se lo è, invia alla e-mail le istruzioni per il
  recupero della password;
*Estensioni:*
- Sistema non raggiungibile;
- Inserimento password;

== UC9 - Logout
#figure(image("../imgs/logout.png", width: 50%), caption: "Logout")
*Attori principali:*
- Forntitore/cliente;
*Descrizione:*
- Un utente vuole effettuare il logout disconnettendosi dal sistema;
*Precondizioni:*
- L'utente deve aver effettuato il login;
*Postcondizioni:*
- Il sistema ha ricevuto la richiesta di logout e la effettua;
*Scenario Principale:*
- L'utente preme il pulsante di logout;
- Il sistema riceve la richiesta di logout e disconnette l'utente dal sistema;

//Modificato nello sprint 7
== UC10 - Visualizzazione della lista delle chat
#figure(
  image("../imgs/visualizzazione-scrittura-messaggio.png", width: 80%),
  caption: "Visualizzazione ed invio dei messaggi",
)
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole visualizzare le chat avute con il chatbot;
*Precondizioni:*
- L'utente deve aver effettuato il login;
*Postcondizioni:*
- L'utente visualizza la #gloss[homepage] con la lista delle chat;
*Scenario Principale:*
- L'utente vede la lista di tutte le chat;
*Estensioni:*
- Sistema non raggiungibile;

//Filippo: Use case aggiunti nello sprint 7
/////////////////////////

== UC10.1 - Creazione di una nuova chat
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole iniziare una nuova chat o iniziare a scrivere con il chatbot;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente preme sul pulsante per creare una nuova chat;
*Postcondizioni:*
- L'utente crea una nuova chat;
*Scenario Principale:*
- L'utente seleziona il tasto per creare una nuova chat nella hompage e crea una nuova chat con un nuovo contesto;
*Estensioni:*
- Sistema non raggiungibile;

== UC10.2 - Visualizzazione della chat singola
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole visualizzare la chat selezionata nello use case precedente;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente preme sul pulsante "Visualizza chat";
*Postcondizioni:*
- L'utente visualizza la chat da lui selezionata;
*Scenario Principale:*
- L'utente seleziona la chat dalla homepage e visualizza tutto lo storico della chat;
*Estensioni:*
- Sistema non raggiungibile;

== UC10.3 - Eliminazione di una chat
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole eliminare una chat nella lista delle chat;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente preme sul pulsante "Elimina chat";
*Postcondizioni:*
- L'utente può più visualizzare la chat eliminata;
*Scenario Principale:*
- L'utente seleziona la chat dalla homepage e preme il tasto per eliminarla, la chat poi viene cancellata e non può più
  essere visualizzata;
*Estensioni:*
- Sistema non raggiungibile;

//Filippo: Sezione modificata sprint 7
///////////////////////////////////

== UC11 - Scrittura e invio messaggio
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole comunicare con il chatbot;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve accedere alla sezione dedicata alla comunicazione con il chatbot;
*Postcondizioni:*
- L'utente invia il messaggio al chatbot;
*Scenario Principale:*
- L'utente scrive e invia il messaggio al chatbot;
- Il sistema riceve il messaggio, lo analizza e procede a rispondere;
*Estensioni*
- Sistema non raggiungibile;
*Inclusioni*
- Scrittura messaggio;
- Invio messaggio;
- Selezione messaggio pre-scritto;

=== UC11.1 - Scrittura messaggio
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole comunicare con il chatbot;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve accedere alla sezione dedicata alla comunicazione con il chatbot;
*Postcondizioni:*
- L'utente scrive il messaggio nella barra apposita;
*Scenario Principale:*
- L'utente scrive il messaggio abbastanza comprensibile;

=== UC11.2 - Selezione messaggio pre-scritto
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole comunicare con il chatbot;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve accedere alla sezione dedicata alla comunicazione con il chatbot;
*Postcondizioni:*
- L'utente ha sceglto un messaggio consigliato in base al contesto della chat;
*Scenario Principale:*
- L'utente, anziché scrivere un messaggio manualmente, decide di selezionare un messaggio consigliato dall'applicazione,
  scritto in base al contesto;

=== UC11.3 - Invio messaggio
*Attori principali:*
- Fornitore/cliente;
*Descrizione:*
- Un utente vuole comunicare con il chatbot;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve accedere alla sezione dedicata alla comunicazione con il chatbot;
- L'utente deve avere un messaggio pronto da inviare;
*Postcondizioni:*
- L'utente ha inviato il messaggio;
*Scenario Principale:*
- Dopo aver scritto il messaggio o selezionato uno pre-scritto, l'utente invia il messaggio;

/////////////////////////////////////////

== UC12 - Ricezione risposta
#figure(
  image("../imgs/ricezione-valutazione-risposta.png", width: 80%),
  caption: "Visualizzazione ed invio dei messaggi",
)
*Attori principali:*
- Fornitore/cliente;
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
#figure(image("../imgs/dark-light-mode.png", width: 50%), caption: "Selezione modalità chiara/scura")
*Attori principali:*
- Fornitore/cliente;
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

== UC15 - Modifica della durata dello storico delle chat
#figure(image("../imgs/impostazioni-fornitore.png", width: 90%), caption: "Impostazioni fornitore")
*Attori principali:*
- Fornitore;
*Descrizione:*
- Il fornitore vuole cambiare limite massimo di tempo per cui viene salvato lo storico delle chat;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alle impostazioni;
*Postcondizioni:*
- Viene modificato limite di tempo di memorizzazione dello storico;
*Scenario Principale:*
- Il fornitore modifica il periodo di tempo su cui visualizare lo storico delle chat avvenute con il chatbot e lo conferma;
- Il sistema memorizza la nuova impostazione;
*Estensioni:*
- Sistema non raggiungibile;

== UC16 - Caricare il proprio logo
*Attori principali:*
- Fornitore;
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
#figure(
  image("../imgs/statistiche-filtri-fornitore.png", width: 90%),
  caption: "Visualizzazione statistiche e filtri del fornitore",
)
*Attori principali:*
- Fornitore;
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
#figure(image("../imgs/aggiunta-account-cliente.png", width: 100%), caption: "Aggiunta di un account cliente")
*Attori principali:*
- Fornitore;
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
*Descrizione*
- Un fornitore autenticato vuole eliminare un account di un cliente in modo che quest'ultimo non possa più accedere al
  chatbot. In questo caso non vengono gestiti i corner case in cui il fornitore elimina un account non esistente o
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
- L'utente ha inserito la password necessaria per effettuare l'accesso
*Estensioni:*
- Password scelta non valida;
*/
== UC25 - Password scelta non valida
*Attori principali:*
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
- Fornitore/cliente;
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

= Requisiti
In questa sezione vengono elencati i requisiti del capitolato, individuati durante la fase di analisi. Ogni #gloss[requisito] viene
identificato da un codice, scelto in base ai seguenti parametri:
#align(center, [*R - [numero] - [tipo] - [Priorità]*])
con:
- *Numero*: numero progressivo composto da due cifre, parte da 01.\
- *Tipo*: può essere:
  - *F*: funzionale, indica una funzione del sistema;\
  - *Q*: qualità, definisce le caratteristiche della qualità del prodotto, definisce come un sistema deve essere, o come il
    sistema deve esibirsi, per soddisfare le esigenze dell'utente.\
  - *V*: vincolo, limiti e restrizioni imposte dal capitolato che bisogna rispettare;\
- *Priorità*: può essere:
  - *O*: Obbligatorio
  - *D*: Desiderabile

== Requisiti funzionali
//Nota i numeri degli UC potrebbero non essere giusti visto che alcuni sono
//stati modificati
#show figure: set block(breakable: true)
#figure(
  caption: [Requisiti di funzionalità],
  table(
    columns: (1fr, 2fr, 1fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*ID Requisito*], [*Descrizione*], [*Fonte*]),
    "R-01-F-O",
    "L'utente deve poter accedere all'applicazione",
    "UC1", //login
    "R-02-F-O",
    "L'utente deve essere in possesso di un indirizzo e-mail già registrato per accedere",
    "UC1.1",
    "R-03-F-O",
    "L'utente deve essere in possesso di una password valida per accedere",
    "UC1.2",
    "R-04-F-D",
    "Nel caso l'utente inserisca un indirizzo e-mail non valido, deve ricevere una notifica dall'applicazione che lo notifichi dell'errore",
    "UC1.3",
    "R-05-F-D",
    "Nel caso l'utente inserisca una password non valida o non corretta, deve ricevere una notifica dall'applicazione che lo notifichi dell'errore",
    "UC1.4",
    "R-06-F-O",
    "La prima volta che il fornitore deve accedere, deve inserire il suo inidirizzo e-mail con la password fornita dall'amministratore",
    "UC2", //primo login f
    "R-08-F-O",
    "La prima volta che il cliente deve accedere, deve inserire il suo inidirizzo e-mail con la password fornita dal fornitore",
    "UC3", //primo login c
    "R-09-F-D",
    "Forse ripetitivo, abbiamo già password ed email errate...",
    "UC4", // credenziali errate
    "R-10-F-D",
    "Se l'utente sceglie l'opzione 'Resta connesso' il sistema deve ricordarsi le credenziali al prossimo accesso ed eseguire in automatico l'operazione",
    "UC5", // resta connesso
    "R-11-F-O",
    "L'applicazione deve fornire la possibilità all'utente di cambiare password, soprattutto dopo il primo login",
    "UC6", // cambio password
    "R-12-F-D",
    "L'applicazione deve fornire la possibilità all'utente di recuperare la password nel caso questa venga dimenticata o persa",
    "UC7", // recupero password
    "R-13-F-O",
    "L'applicazione deve fornire la possibilità all'utente di poter uscire dal suo account",
    "UC8", // logout
    "R-14-F-O",
    "L'applicazione deve fare vedere all'utente la lista di tutte le chat con contesto diverso",
    "", // lista chat
    "R-15-F-O",
    "L'applicazione deve dare la possibilità all'utente di poter creare una nuova chat per iniziare una nuova conversazione con il bot",
    "", //creazione chat
    "R-16-F-O",
    "L'applicazione deve dare la possibilità all'utente di poter vedere la cronologia della singola chat selezionata dalla homepage",
    "", // vis nuova chat
    "R-17-F-O",
    "L'applicazione deve dare la possibilità all'utente di poter eliminare una chat",
    "", // eliminazione chat
    "R-18-F-O",
    "L'applicazione deve permettere all'utente di poter scrivere messaggi al chatbot",
    "UC10", //scrittura ed invio mess
    "R-19-F-O",
    "L'applicazione deve fornire all'utente un modo per poter scrivere un messaggio",
    "UC10.1", //scrittura mess
    "R-20-F-D",
    "L'applicazione può fornire al cliente un set di messaggi già scritti in base al contesto, pronti ad essere inviati",
    "UC10.2", // prescritto
    "R-21-F-O",
    "L'applicazione deve fornire all'utente un modo per inviare il messaggio scritto o scelto",
    "UC10.3", // invio messaggio
    "R-22-F-O",
    "Alla ricezione di un messaggio, il chatbot manda una risposta in base al contenuto del messaggio dell'utente",
    "UC11", //ricezione rispost
    "R-22-F-O",
    "L'applicazione dà la possibilità all'utente di valutare le risposte ricevute in base alla qualità",
    "UC12", //val risposta
    "R-23-F-D",
    "L'applicazione offre la possibilità all'utente di cambiare il colore principale del sito",
    "UC13", // dark light
    "R-24-F-O",
    "L'applicazione offre la possibilità al fornitore di poter cambiare la durata dello storico delle chat",
    "UC14", // durata storico chat
    "R-25-F-O",
    "L'applicazione offre la possibilità al fornitore di poter caricare il proprio logo",
    "UC15", // carica logo
    "R-26-F-D",
    "Nel caso il logo caricato dal fornitore non sia valido, l'applicazione deve avvisare il fornitore che il logo non è valido",
    "UC16", // logo non valido
    "R-27-F-D",
    "L'applicazione offre la possibilità al fornitore di cambiare i colori principali della sua chat",
    "UC17", // palette colori
    "R-28-F-D",
    "L'applicazione deve permettere al fornitore un modo per poter visualizzare le statistiche del chatbot",
    "UC18", // statistiche domanda risposta
    "R-29-F-D",
    "L'applicazione deve permettere al fornitore la possibilità di filtrare le statistiche relative alle interazioni tra clienti e chatbot",
    "UC19", // filtri vis
    "R-30-F-O",
    "L'applicazione offre al fornitore la possibilità di aggiungere account clienti",
    "UC20", // agg account cliente
    "R-31-F-D",
    "Nel caso i parametri inseriti per la registrazione di un cliente siano errati, l'applicazione deve avvisare il fornitore",
    "UC21", // inserimento par account non validi
    "R-32-F-D",
    "Nel caso il fornitore stia aggiungendo un account cliente già esistente, l'applicazione deve avvisare il fornitore",
    "UC22", // ins account già esistente
    "R-33-F-O",
    "L'applicazione deve dare la possibilità al fornitore di poter eliminare un account cliente",
    "UC23", // eliminazione account cliente
    "R-34-F-D",
    "Nel caso la password inserita per un nuovo account cliente non sia valida, l'applicazione deve avvisare il fornitore",
    "UC24", // password sceta non valida
    "R-35-F-D",
    "Nel caso l'applicazione non sia raggiungibile per vari motivi, l'applicazione o sistema deve avvisare l'utente",
    "UC25", // sistema non raggiungibile
  ),
)

== Requisiti di qualità

// NOTA: qua bisogna scrivere requisiti piu generali che
// o sono stabiliti dal capitolato
// o sono stabiliti da noi
// la fonte puo essere capitolato o interno
#show figure: set block(breakable: true)
#figure(caption: [Requisiti di qualità], table(
  columns: (1fr, 2fr, 1fr),
  inset: 8pt,
  align: center + horizon,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*ID Requisito*], [*Descrizione*], [*Fonte*]),
  "R-01-Q-O",
  "Bisogna consegnare un documento contenente l'analisi dei requisiti con dei grafici UML",
  "Capitolato",
  "R-02-Q-O",
  "Tutto il codice e documentazione vanno salvati all'interno di una repository ordinata",
  "Interno",
  "",
  "",
  "",
))

== Requisiti di vincolo

#show figure: set block(breakable: true)
#figure(caption: [Requisiti di vincolo], table(
  columns: (1fr, 2fr, 1fr),
  inset: 8pt,
  align: center + horizon,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*ID Requisito*], [*Descrizione*], [*Fonte*]),
  "R-01-V-O",
  "Per l'integrazione con il chatbot, verrà utilizzato il linguaggio di programmazione Python",
  "Capitolato",
  "R-02-V-O",
  "Per il frontend viene utilizzato il framework Svelte",
  "Interno",
  "R-03-V-O",
  "Viene utilizzato Postgre per la gestione del database",
  "Interno",
))

== Tracciamento fonti-requisiti
#show figure: set block(breakable: true)
#figure(caption: [Tracciamento fonti-requisiti], table(
  columns: (0.5fr, 0.5fr),
  inset: 8pt,
  align: center + horizon,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Fonte*], [*Requisito*]),
  "Capitolato",
  "R-01-V-O",
  "Interno",
  "R-02-V-O\nR-03-V-O",
  "UC1",
  "R-01-F-O",
))
== Riepilogo
#show figure: set block(breakable: true)
#figure(caption: [Riepilogo], table(
  columns: (0.75fr, 0.5fr, 0.5fr, 0.5fr),
  inset: 8pt,
  align: center + horizon,
  fill: (x, y) => if (y == 0 or y == 4) { luma(230) },
  table.header([*Tipo di requisiti*], [*Obbligatori*], [*Desiderabili*], [*Totale*]),
  "Funzionali",
  "",
  "",
  "",
  "Qualità",
  "",
  "",
  "",
  "Vincolo",
  "",
  "",
  "",
  "Totale",
))