#import "../../template/documenti.typ": *
#import "../../template/i-figured.typ"

#show: doc => documento(titolo: "Analisi dei Requisiti", data: [12/11/2024], ruoli: (
  "Matteo Bazzan",
  "Verificatore",
  "Luca Ribon",
  "Redattore",
  "Francesco Fragonas",
  "Redattore - Verificatore",
  "Gabriele Magnelli",
  "Redattore",
  "Filippo Sabbadin",
  "Redattore - Verificatore",
  "Luca Rossi",
  "",
  "Yi Hao Zhuo",
  "Verificatore",
), sommario: [Analisi dei requisiti del capitolato C7], versioni: (
  "0.8.0",
  "20/02/2025",
  "Luca Ribon",
  "Corretti e aggiunti use case e requisiti a seguito della riunione con il Prof. Cardin",
  "Francesco Fragonas",
  "0.7.1",
  "10/02/2025",
  "Luca Ribon",
  "Aggiunti use case mancanti e corretti typo",
  "Filippo Sabbadin",
  "0.7.0",
  "07/02/2025",
  "Luca Ribon, Filippo Sabbadin",
  "Aggiunti requisiti funzionali",
  "Francesco Fragonas",
  "0.6.0",
  "31/01/2025",
  "Filippo Sabbadin, Luca Ribon",
  "Aggiunta sezione requisiti, migliorati use case esistenti",
  "Francesco Fragonas",
  "0.5.0",
  "11/01/2025",
  "Filippo Sabbadin",
  "Corretti use case sul login, aggiunte immagini con i grafici UML",
  "Yi Hao Zhuo",
  "0.4.0",
  "06/01/2025",
  "Luca Ribon",
  "Aggiunti use case, corretti alcuni dei precedenti",
  "Filippo Sabbadin",
  "0.3.0",
  "23/12/2024",
  "Luca Ribon",
  "Aggiunti use case",
  "Filippo Sabbadin",
  "0.2.0",
  "27/11/2024",
  "Gabriele Magnelli",
  "Aggiunti use case",
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
Il progetto consiste nella realizzazione di un *#gloss[chatbot]* basato su modelli linguistici (*#gloss[LLM]*) pensato per i *fornitori* di beni, come bevande o alimenti, da offrire ai propri clienti. Questo sistema consente ai clienti di ottenere in modo semplice e immediato informazioni dettagliate sui prodotti o servizi disponibili, senza la necessità di contattare direttamente un operatore dell'azienda.

Il chatbot si integra con un'interfaccia dedicata al #gloss[fornitore], che permette di:

- Gestire i clienti e i documenti contenenti le informazioni di riferimento utilizzate dal modello linguistico per generare risposte accurate e personalizzate.
- Personalizzare graficamente la piattaforma tramite l'inserimento del logo aziendale e la selezione di una palette colori.

== Obiettivi del sistema
- *Semplificazione del flusso informativo*: riduce i tempi di risposta alle richieste dei clienti e rende l'accesso alle
  informazioni rapido e indipendente da intermediari umani.
- *Ottimizzazione della produttività aziendale*: automatizza la gestione delle richieste di informazioni, permettendo agli operatori di concentrarsi su attività di maggiore valore aggiunto.
- *Esperienza utente migliorata*: garantisce risposte precise e aggiornate in qualsiasi momento, offrendo un'interazione fluida e accessibile.

== Utenti
*Azienda fornitrice:* rappresenta l'azienda che fornisce beni o servizi ai propri clienti. Questo utente ha accesso a un'interfaccia web per la configurazione del chatbot e la gestione dei clienti oltre ad un interfaccia equivalente a quella del cliente per comunicare con il chatbot.
*Cliente:* rappresenta il cliente finale che acquista i prodotti dal fornitore. Questo utente può interagire con il chatbot per ottenere informazioni sui prodotti o servizi offerti. 

== Funzionalità del prodotto
Il sistema dovrà offrire le seguenti funzionalità principali:
- *Per i clienti:*
  - Interrogare il chatbot tramite una piattaforma web per:
    - Ottenere descrizioni dettagliate di prodotti;
    - Conoscere disponibilità, varianti e caratteristiche tecniche di specifici articoli;
    - Ricevere suggerimenti basati su domande frequenti;
    - Ottenere risposte personalizzate, generate utilizzando documenti aziendali archiviati nel sistema e il constesto della chat;
  - Fornire #gloss[feedback] sul grado di soddisfazione delle risposte ricevute, per migliorare la qualità del sistema.
- *Per le aziende:*
  - Gestire clienti e documenti attraverso un'interfaccia di amministrazione #gloss[user-friendly].
  - Configurare domande e risposte predefinite come base per il chatbot.
  - Caricare, aggiornare e mantenere i documenti aziendali utilizzati per il training del modello *LLM*.

== Glossario
Per facilitare la comprensione di questo documento, viene fornito un glossario che chiarisce il significato dei termini
specifici utilizzati nel contesto del progetto. Ogni termine di glossario è contrassegnato con un asterisco "\*" in
apice e collegato direttamente alla pagina web del glossario, permettendo così di accedere immediatamente alla
definizione completa del termine. Le definizioni sono disponibili nel documento #link("https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf")[Glossario.pdf] e
nella seguente pagina web: #link("https://codehex16.github.io/glossario").

== Riferimenti
=== Riferimenti normativi:
- #gloss[Norme di progetto] v1.0.0:
#link("https://codehex16.github.io/docs/2%20-%20RTB/Norme-di-Progetto.pdf")

- Capitolato C7 - #gloss[Assistente Virtuale] Ergon:
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")

=== Riferimenti informativi:
- Slide T05 del corso di Ingegneria del software - #gloss[Analisi dei requisiti]:
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")

- "Analisi e descrizione delle funzionalità: #gloss[Use case] e relativi diagrammi (#gloss[UML])":
#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")

- Glossario:
#link("https://codehex16.github.io/glossario")


= Use Cases

== Introduzione

Nelle seguenti sezioni verranno descritti tutti i possibili casi d'uso, cioè tutti i modi in cui gli attori, definiti
più avanti, possono interagire con l'applicazione.

== Attori
*Amministratore*: rappresenta la persona o il gruppo di persone che si occupa della distribuzione e configurazione del sistema per tutti i fornitori. Gestisce anche gli #gloss[account] dei fornitori.\
In questo caso va interpretato come l'azienda Ergon Informatica Srl.\
*Cliente*: rappresenta il cliente finale che acquista prodotti dal fornitore e che ha la possibilità di interagire con
il chatbot del fornitore per ottenere informazioni sui prodotti o servizi offerti.\
*Fornitore*: rappresenta l'azienda che fornisce dei prodotti ai propri clienti, ogni fornitore ha una sua istanza di
chatbot; è una generalizzazione di Cliente infatti, oltre a poter accedere al proprio chatbot, può anche fornire il
contesto tramite dei documenti aziendali o #gloss[FAQ], personalizzare graficamente l'interfaccia variando logo e
palette colori.\
Questo utente ha accesso ad un'#gloss[interfaccia web] di configurazione del chatbot e di gestione degli account dei
clienti.\
*Utente non autenticato*: chiamato anche "utente non registrato" rappresenta un utente generico che non ha ancora
completato l'autenticazione.\ 

#figure(image("../imgs/attori.png", width: 70%), caption: "Lista degli attori")

== UC1 - Login
#figure(image("../imgs/login-cliente.png", width: 80%), caption: "Login Cliente")
#figure(image("../imgs/login-fornitore.png", width: 80%), caption: "Login Fornitore")
*Attori principali:*
- Utente non autenticato;
*Descrizione:*
- Un utente non autenticato vuole accedere alla piattaforma per la configurazione del proprio chatbot e per interagire con
  esso;
*Precondizioni:*
- L'utente è in possesso delle proprie credenziali;
- L'utente ha già effettuato il primo login e cambiato la password temporanea;
- L'utente non è già autenticato;
*Postcondizioni:*
- Se l'utente ha inserito le credenziali corrette, accede alla piattaforma;
*Scenario Principale:*
- L'utente inserisce l'indirizzo e-mail e la password nei campi dedicati;
- Il sistema riceve la richiesta di accesso e verifica le credenziali, se sono corrette reindirizza alla homepage;
*Estensioni:*
- Sistema non raggiungibile;
- Primo login fornitore;
- Primo login cliente;
*Inclusioni:*
- Inserimento e-mail;
- Inserimento password;
- Possibilità "Resta connesso";

#figure(
  image("../imgs/inserimento-email-password.png", width: 90%),
  caption: "Inserimento e-mail e password + possibilità 'Resta connesso'",
)

== UC2 - Primo login fornitore
*Attori principali:*
- Utente non autenticato;
*Attori secondari:*
- Amministratore;
*Descrizione:*
- Un utente non autenticato vuole accedere per la prima volta alla piattaforma tramite delle credenziali fornitore per
  gestire il suo chatbot ed eventualmente utilizzarlo;
*Precondizioni:*
- La piattaforma è stata correttamente configurata dall'amministratore;
- Il fornitore non ha mai effettuato l'accesso alla piattaforma;
- Il fornitore deve essere in possesso delle sue credenziali fornite dall'amministratore della piattaforma;
*Postcondizioni:*
- Il fornitore ha effettuato il primo accesso alla piattaforma;
- Il fornitore ha cambiato la password temporanea con una nuova password;
*Scenario Principale:*
- L'amministratore:
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
- Sistema non raggiungibile;
- Possibilità "Resta connesso";
*Inclusioni:*
- Inserimento e-mail;
- Inserimento password;
- Modifica password;

== UC3 - Primo login cliente
*Attori principali:*
- Utente non autenticato;
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
  - se ha inserito le credenziali corrette, aggiorna la password;
- Il sistema:
  - riceve le credenziali inserite dal cliente;
  - verifica la correttezza delle credenziali;
  - se le credenziali sono corrette richiede al cliente di cambiare la password temporanea con una nuova;
    - reindirizza alla piattaforma;
  - se le credenziali sono errate, restituisce un errore e permette di reinserirle;
*Estensioni:*
- Sistema non raggiungibile;
- Possibilità "Resta connesso";
*Inclusioni:*
- Inserimento e-mail;
- Inserimento password;
- Modifica password;

// È uno use case a parte perché sarà anche quello usato per modificare la password dell'utente
// TODO: rifare grafico
== UC4 - Modifica password
#figure(image("../imgs/cambio-password.png", width: 90%), caption: "Modifica password")
*Attori principali:*
- Utente non autenticato/cliente;
*Descrizione:*
- Un utente deve cambiare la password del proprio account;
*Precondizioni:*
- Le credenziali dell'utente sono state corretamente inserite nel sistema;
- L'utente deve essersi autenticato con le credenziali corrette;
*Postcondizioni:*
- Il sistema ha ricevuto la richiesta di cambio password e, se questa è valida, effettua il cambiamento della password;
*Scenario Principale:*
- All'utente viene mostrato un form per inserire la vecchia e nuova password;
- L'utente inserisce le password richieste;
- Il sistema riceve la richiesta di cambio password e, se quella nuova è valida, lo effettua;
*Estensioni:*
- Sistema non raggiungibile;
*Inclusioni:*
- Inserimento password;

// TODO grafico: mettere come condition "l'utente ha selezionato l'opzione 'Resta connesso'"
== UC5 - Possibilità "Resta connesso"
*Attori principali:*
- Utente non autenticato;
*Descrizione:*
- Un utente vuole mantenere l'accesso attivo al fine di non dover effettuare il login, inserendo le credenziali, ogni
  volta che ha intenzione di accedere alla web app;
*Precondizioni:*
- L'utente ha selezionato l'opzione "Resta connesso";
- Le credenziali dell'utente devono essere presenti nel sistema;
- L'utente deve essere possedere le credenziali necessarie per l'accesso;
- L'utente deve inserire le credenziali corrette;
*Postcondizioni:*
- È stata salvata la preferenza dell'utente relativa al salvataggio delle credenziali;
*Scenario Principale:*
- L'utente inserisce le credenziali;
- Il sistema mantiene in memoria la preferenza per i futuri login;
*Estensioni:*
- Sistema non raggiungibile;

// TODO: rifare grafico
// non va incluso il modifica password perché in questo caso non si conosce la password vecchia
== UC6 - Recupero password
#figure(image("../imgs/recupero-password.png", width: 90%), caption: "Recupero password")
*Attori principali:*
- Utente non autenticato;
*Descrizione:*
- Un utente vuole recuperare la password del proprio account;
*Precondizioni:*
- L'utente deve conoscere l'e-mail a cui è associato il suo account;
- L'utente ha premuto il pulsante "Password dimenticata";
*Postcondizioni:*
- Il sistema invia le istruzioni per il recupero della password se l'e-mail inserita è valida;
*Scenario Principale:*
- L'utente invia la richiesta di recupero password inserendo l'e-mail associata al proprio account;
- Il sistema riceve la richiesta, controlla che l'e-mail sia valida e, se lo è, invia all'e-mail le istruzioni per il
  recupero della password;
*Estensioni:*
- Sistema non raggiungibile;
*Inclusioni:*
- Inserimento password;

== UC7 - Inserimento e-mail
*Attori principali:*
- Utente non autenticato;
*Descrizione:*
- Un utente non autenticato inserisce l'e-mail associata al suo account;
*Precondizioni:*
- Le credenziali dell'utente sono state correttamente inserite;
- L'utente deve essere in possesso della sua e-mail;
*Postcondizioni:*
- L'utente ha inserito la sua e-mail;
*Scenario principale:*
- L'utente inserisce la sua e-mail nel campo dedicato;
*Estensioni:*
- E-mail non valida;

== UC8 - Inserimento password
*Attori principali:*
- Utente non autenticato;
*Descrizione:*
- Un utente non autenticato inserisce la password associata al suo account;
*Precondizioni:*
- Le credenziali dell'utente sono state correttamente inserite;
- L'utente deve essere in possesso della sua password;
*Postcondizioni:*
- L'utente ha inserito la sua password;
*Scenario principale:*
- L'utente inserisce la sua password nel campo dedicato;
*Estensioni:*
- Password non valida;

== UC9 - E-mail non valida
*Attori principali:*
- Utente non autenticato;
*Descrizione:*
- Un utente non autenticato ha inserito un'e-mail errata;
*Precondizioni:*
- L'utente ha inserito un'e-mail non presente nel sistema o che non rispetta il formato corretto;
*Postcondizioni:*
- Il sistema notifica l'utente che la mail inserita è sbagliata;
- Il login non va a buon fine;
*Scenario principale:*
- L'utente inserisce un'e-mail sbagliata e il sistema restituisce errore;

== UC10 - Password non valida
*Attori principali:*
- Utente non autenticato;
*Descrizione:*
- Un utente non autenticato ha inserito una password errata;
*Precondizioni:*
- L'utente ha inserito una password sbagliata o che non rispetta il formato richiesto;
*Postcondizioni:*
- Il sistema notifica l'utente che la password inserita è sbagliata;
- Il login non va a buon fine;
*Scenario principale:*
- L'utente inserisce una password sbagliata e il sistema restituisce errore;

// == UC8 - Password scelta non valida
// *Attori principali:*
// - Utente non autenticato;
// *Descrizione:*
// - Un utente vuole cambiare la propria password ma ne sceglie una non valida;
// *Precondizioni:*
// - L'utente deve aver effettuato il suo primo accesso;
// - Il sistema deve aver ricevuto una password inserita dall'utente che è errata;
// *Postcondizioni:*
// - Se la password scelta dall'utente non è valida, il sistema invia un messaggio d'errore all'utente;
// *Scenario Principale:*
// - Il sistema riceve la password inserita dall'utente;
// - Il sistema verifica la password inserita e la trova non conforme ai requisiti, quindi invia un messaggio d'errore all'utente con la richiesta di scegliere un'altra password valida;

// TODO: rifare grafico
== UC11 - Logout
#figure(image("../imgs/logout.png", width: 50%), caption: "Logout")
*Attori principali:*
- Cliente;
*Descrizione:*
- Un utente vuole effettuare il logout disconnettendosi dal sistema;
*Precondizioni:*
- L'utente deve aver effettuato il login;
*Postcondizioni:*
- Il sistema ha ricevuto la richiesta di logout e la effettua;
*Scenario Principale:*
- L'utente preme il pulsante di logout;
- Il sistema riceve la richiesta di logout e disconnette l'utente dal sistema;
*Estensioni:*
- Sistema non raggiungibile;

// TODO: rifare grafico
== UC12 - Visualizzazione della lista delle chat
#figure(image("../imgs/lista-chat.png", width: 100%), caption: "Schermata delle chat")
*Attori principali:*
- Cliente;
*Descrizione:*
- Un utente vuole visualizzare le chat avute con il chatbot;
*Precondizioni:*
- L'utente deve aver effettuato il login;
*Postcondizioni:*
- L'utente visualizza la pagina dedicata alla lista delle chat;
*Scenario Principale:*
- L'utente vede la lista di tutte le chat, se non ne ha mai creata una visualizzerà solo quella presente di default;
*Estensioni:*
- Sistema non raggiungibile;

== UC13 - Creazione di una nuova chat
*Attori principali:*
- Cliente;
*Descrizione:*
- Un utente vuole iniziare una nuova chat;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente preme sul pulsante per creare una nuova chat;
*Postcondizioni:*
- Viene creata una nuova chat;
*Scenario Principale:*
- L'utente usa il tasto per creare una nuova chat nella hompage e crea una nuova chat con un nuovo contesto;
*Estensioni:*
- Sistema non raggiungibile;

== UC14 - Modifica titolo di una chat
#figure(image("../imgs/modifica-titolo-chat.png", width: 100%), caption: "Modifica titolo chat")
*Attori principali:*
- Cliente;
*Descrizione:*
- Un utente vuole modificare il titolo di una chat;
*Precondizioni:*
- L'utente deve aver effettuato il login;
*Postcondizioni:*
- Il titolo della chat viene modificato;
*Scenario Principale:*
- L'utente seleziona la chat dalla lista di tutte le chat e preme il tasto per modificare il titolo
- L'utente inserisce il nuovo titolo nel campo apposito e conferma;
*Estensioni:*
- Invio richiesta con dati mancanti o errati;
- Sistema non raggiungibile;

== UC15 - Apertura di una chat singola
*Attori principali:*
- Cliente;
*Descrizione:*
- Un utente vuole visualizzare una chat nello specifico;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente preme sul pulsante "Visualizza chat" di una specifica chat;
*Postcondizioni:*
- L'utente visualizza la chat da lui selezionata;
*Scenario Principale:*
- L'utente visualizza la chat scelta in una nuova finestra;
*Estensioni:*
- Sistema non raggiungibile;

== UC16 - Scrittura messaggio
#figure(image("../imgs/scrittura-messaggio.png", width: 100%), caption: "Scrittura messaggio")
*Attori principali:*
- Cliente;
*Descrizione:*
- Un utente vuole inviare un messaggio al chatbot;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve aver aperto una chat specifica;
*Postcondizioni:*
- L'utente ha scritto un messaggio che rispetti la lunghezza massima nella barra apposita;
*Scenario Principale:*
- L'utente scrive il messaggio;
*Generalizzazioni:*
- Scrittura messaggio tramite FAQ;
*Estensioni:*
- Messaggio troppo lungo;
- Sistema non raggiungibile;

=== UC16.1 - Messaggio troppo lungo
*Attori principali:*
- Cliente;
*Descrizione:*
- Un utente ha scritto un messaggio troppo lungo all'interno di una chat con il chatbot;
*Precondizioni:*
- L'utente è all'interno di una chat con il chatbot;
- L'utente ha digitato un messaggio ma questo supera la lunghezza massima impostata dalla piattaforma;
*Postcondizioni:*
- Il sistema notifica l'utente che il messaggio è troppo lungo;
- Viene impedito l'invio del messaggio finché non viene rispettata la lunghezza massima;
*Scenario Principale:*
- L'utente digita il messaggio nella campo apposito all'interno della chat;
- Il sistema verifica la lunghezza del messaggio e, se questa supera la lunghezza massima, notifica l'utente;

== UC17 - Scrittura messaggio tramite FAQ
*Attori principali:*
- Cliente;
*Descrizione:*
- Un utente comunica con il chatbot utilizzando uno dei messaggi preimpostati;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve aver aperto una singola chat;
*Postcondizioni:*
- L'utente ha scritto un messaggio utilizzando una delle domande preimpostati;
*Scenario Principale:*
- L'utente, anziché scrivere un messaggio manualmente, decide di utilizzare un messaggio tra quelli preimpostati
  nell'applicazione; nel caso in cui l'LLM individua delle FAQ utili nel constesto della chat sarà il chatbot stesso a
  suggerirle all'utente; 

== UC18 - Invio messaggio
#figure(image("../imgs/invio-messaggio.png", width: 100%), caption: "Invio messaggio")
*Attori principali:*
- Cliente;
*Descrizione:*
- Un utente vuole inviare il messaggio scritto al chatbot;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve aver aperto una chat specifica;
- L'utente deve avere inserito il messaggio da inviare;
*Postcondizioni:*
- L'utente ha inviato il messaggio;
*Scenario Principale:*
- Dopo aver scritto il messaggio l'utente invia il messaggio;
*Estensioni:*
- Invio richiesta con dati mancanti o errati;
- Sistema non raggiungibile;

== UC19 - Ricezione risposta
#figure(
  image("../imgs/ricezione-valutazione-risposta.png", width: 90%),
  caption: "Ricezione e valutazione della risposta",
)
*Attori principali:*
- Cliente;
*Descrizione:*
- Il chatbot ha ricevuto un messaggio, lo ha analizzato e procede fornendo una risposta;
*Precondizioni:*
- L'utente deve aver effettuato il login;
- L'utente deve aver inviato un messaggio al chatbot;
*Postcondizioni:*
- L'utente ha ricevuto la risposta dal chatbot;
*Scenario Principale:*
- Il sistema trarmette il messaggio al chatbot e nel frattempo l'utente riceve un feedback che indica l'elaborazione della
  risposta;
- Il chatbot elabora e restituisce una risposta;
- La risposta viene mostrata all'utente tramite l'interfaccia della chat specifica;
*Estensioni:*
- Sistema non raggiungibile;

== UC20 - Valutazione risposta
*Attori principali:*
- Cliente;
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

== UC21 - Eliminazione di una chat
#figure(image("../imgs/eliminazione-chat.png", width: 80%), caption: "Eliminazione di una chat")
*Attori principali:*
- Cliente;
*Descrizione:*
- Un utente vuole eliminare una chat nella lista delle chat;
*Precondizioni:*
- L'utente deve aver effettuato il login;
*Postcondizioni:*
- Viene eliminata la chat selezionata;
*Scenario Principale:*
- L'utente seleziona la chat dalla homepage e preme il tasto per eliminarla, la chat poi viene cancellata e non è più
  presente nella piattaforma;
*Estensioni:*
- Invio richiesta con dati mancanti o errati;
- Sistema non raggiungibile;

== UC22 - Selezione Dark/Light Mode
#figure(image("../imgs/selezione-dark-light.png", width: 50%), caption: "Selezione modalità chiara/scura")
*Attori principali:*
- Cliente;
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

== UC23 - Modifica della durata dello storico delle chat
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
- Il fornitore modifica il periodo di tempo su cui visualizare lo storico delle chat avvenute con il chatbot e lo
  conferma;
- Il sistema memorizza la nuova impostazione;
*Estensioni:*
- Sistema non raggiungibile;

== UC24 - Caricare il proprio logo
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
- Formato file non valido;
- Sistema non raggiungibile;

== UC25 - Selezione palette colori
#figure(image("../imgs/selezione-palette.png", width: 90%), caption: "Selezione palette colori")
*Attori principali:*
- Fornitore;
*Descrizione:*
- Un fornitore vuole selezionare una semplice palette di colori di alcuni degli elementi dell'interfaccia in modo da
  caratterizzarla;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve accedere alle impostazioni;
*Postcondizioni:*
- Il sistema ha modificato l'interfaccia con la palette di colori scelta il fornitore;
*Scenario Principale:*
- Il fornitore entra nella sezione "Palette colori";
- Il fornitore sceglie l'insieme di colori che comporranno la parte di palette personalizzabile; la scelta avviene tramite
  un #gloss[color picker] oppure inserendo i codici esadecimali dei colori, se dei colori non vengono scelti vengono
  mantenuti i colori della palette precedente;
- Il fornitore salva le scelte effettuate;
- Il sistema modifica l'interfaccia con i colori scelti dal fornitore;
*Estensioni*:
- Invio richiesta con dati mancanti o errati;
- Sistema non raggiungibile;

== UC26 - Visualizzare statistiche domanda-risposta
#figure(
  image("../imgs/filtri-statistiche.png", width: 90%),
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

== UC27 - Inserimento filtri di visualizzazione
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

// TODO: sistemare grafico
== UC28 - Aggiunta account cliente
#figure(image("../imgs/aggiunta-account-cliente.png", width: 90%), caption: "Aggiunta di un account cliente")
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
- Invio richiesta con dati mancanti o errati;
- Inserimento di un account già esistente;
- Sistema non raggiungibile;

// == UC27 - Inserimento di parametri dell'account non validi
// *Attori principali:*
// - Fornitore;
// *Descrizione:*
// - Un fornitore autenticato vuole aggiungere un account per un cliente in modo che quest'ultimo possa accedere al chatbot, ma inserisce dei parametri non validi;
// *Precondizioni:*
// - Il sistema ha ricevuto i parametri dell'account inseriti dal fornitore;
// *Postcondizioni:*
// - Viene visualizzato un messaggio di errore che indica che i parametri inseriti non sono validi;
// - L'inserimento del nuovo account non va a buon fine;
// *Scenario Principale:*
// - Il sistema riceve i parametri dell'account inseriti dal fornitore, ma questi non sono validi;
//- Il sistema mostra un messaggio di errore il quale indica che i parametri inseriti non sono validi;

== UC29 - Inserimento di un account già esistente
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

== UC30 - Eliminazione dell'account cliente
#figure(image("../imgs/eliminazione-account-cliente.png", width: 90%), caption: "Eliminazione di un account cliente")
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
- Invio richiesta con dati mancanti o errati;
- Sistema non raggiungibile;

== UC31 - Inserimento documenti aziendali
#figure(
  image("../imgs/inserimento-documenti-aziendali.png", width: 100%),
  caption: "Inserimento di documenti aziendali",
)
*Attori principali:*
- Fornitore;
*Descrizione:*
- Il fornitore vuole caricare dei documenti aziendali nella piattaforma in modo che l'LLM li usi come contesto;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve essere nella pagina dedicata alla gestione dei documenti aziendali;
- I documenti in possesso del fornitore devono essere in un formato supportato dalla piattaforma;
*Postcondizioni:*
- I documenti scelti dal fornitore vengono caricati nella piattaforma e sono accessibili dall'LLM;
*Scenario Principale:*
- Il fornitore accede alla sezione "Gestione documenti aziendali";
- Il fornitore carica i documenti tramite l'interfaccia;
- Il sistema riceve i documenti, li formatta e li inserisce nel sistema in modo che siano utilizzabili dall'LLM;
*Estensioni:*
- Formato file non valido;
- Sistema non raggiungibile;

== UC32 - Formato file non valido
*Attori principali:*
- Fornitore;
*Descrizione:*
- Il fornitore ha cercato di caricare un file nella piattaforma ma formato non è tra quelli accettati;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore ha caricato un file;
*Postcondizioni:*
- Viene inviato un messaggio d'errore al fornitore;
- Il file non viene caricato e salvato nel sistema;
*Scenario Principale:*
- Il sistema riceve il file caricato dal fornitore e dopo aver verificato che il formato non è valido, invia un messaggio
  d'errore al fornitore;

== UC33 - Visualizzazione dei documenti aziendali
#figure(
  image("../imgs/visualizzazione-documenti-aziendali.png", width: 100%),
  caption: "Visualizzazione di documenti aziendali",
)
*Attori principali:*
- Fornitore;
*Descrizione:*
- Il fornitore vuole visualizzare la lista dei documenti aziendali caricati nella piattaforma;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve essere nella pagina dedicata alla gestione dei documenti aziendali;
*Postcondizioni:*
- Il fornitore visualizza la lista dei documenti aziendali caricati nella piattaforma;
*Scenario Principale:*
- Il fornitore accede alla sezione "Gestione documenti aziendali";
- La piattaforma visualizza la lista dei documenti aziendali caricati nella piattaforma;
*Estensioni:*
- Sistema non raggiungibile;

== UC34 - Eliminazione di un documento aziendale
#figure(
  image("../imgs/eliminazione-documento-aziendale.png", width: 100%),
  caption: "Eliminazione di un documento aziendale",
)
*Attori principali:*
- Fornitore;
*Descrizione:*
- Il fornitore vuole eliminare un documento aziendale dalla piattaforma;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve essere nella pagina dedicata alla gestione dei documenti aziendali;
*Postcondizioni:*
- Il documento scelto dal fornitore viene eliminato dalla piattaforma;
*Scenario Principale:*
- Il fornitore individua il documento da eliminare e preme il bottone per eliminarlo;
- Viene richiesta la password del fornitore per confermare l'eliminazione;
- Il sistema elimina il documento dalla piattaforma;
*Estensioni:*
- Inserimento password;
- Invio richiesta con dati mancanti o errati;
- Sistema non raggiungibile;

== UC35 - Aggiunta delle FAQ
#figure(image("../imgs/aggiunta-faq.png", width: 50%), caption: "Aggiunta delle FAQ")
*Attori principali:*
- Fornitore;
*Descrizione:*
- Il fornitore vuole aggiungere delle FAQ nella piattaforma in modo che il cliente possa usarle per ricevere risposte più
  precise e veloci;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve essere nella pagina delle impostazioni della piattaforma;
*Postcondizioni:*
- Le FAQ scelte dal fornitore vengono inserite nella piattaforma;
*Scenario Principale:*
- Il fornitore accede alla sezione "Gestione FAQ";
- Il fornitore inserisce le FAQ tramite dei campi appositi nell'interfaccia;
- Il sistema riceve le FAQ, le formatta e le inserisce nel sistema in modo che siano utilizzabili dall'LLM;

== UC36 - Visualizzazione delle FAQ
#figure(image("../imgs/visualizzazione-faq.png", width: 90%), caption: "Visualizzazione delle FAQ")
*Attori principali:*
- Fornitore;
*Descrizione:*
- Il fornitore vuole visualizzare la lista delle FAQ inserite nella piattaforma;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve essere nella pagina dedicata alla gestione delle FAQ;
*Postcondizioni:*
- Il fornitore visualizza la lista delle FAQ inserite nella piattaforma;
*Scenario Principale:*
- Viene visualizzata la lista delle FAQ inserite nella piattaforma;
*Estensioni:*
- Sistema non raggiungibile;

== UC37 - Modifica di una FAQ
#figure(image("../imgs/modifica-faq.png", width: 90%), caption: "Modifica di una FAQ")
*Attori principali:*
- Fornitore;
*Descrizione:*
- Il fornitore vuole modificare una delle FAQ già inserite nella piattaforma;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve essere nella pagina dedicata alla gestione delle FAQ;
*Postcondizioni:*
- Vengono applicate le modifiche alla FAQ se queste rispettano i formati richiesti;
*Scenario Principale:*
- Il fornitore individua la FAQ da modificare e preme il bottone per modificarla;
- Il fornitore modifica la FAQ tramite dei campi appositi nell'interfaccia;
- Il sistema riceve le modifiche e, se tutti i campi modificati rispettano i formati richiesti, le applica;
*Estensioni:*
- Invio richiesta con dati mancanti o errati;
- Sistema non raggiungibile;

== UC38 - Eliminazione di una FAQ
#figure(image("../imgs/eliminazione-faq.png", width: 90%), caption: "Eliminazione di una FAQ")
*Attori principali:*
- Fornitore;
*Descrizione:*
- Il fornitore vuole eliminare una FAQ dalla piattaforma;
*Precondizioni:*
- Il fornitore deve aver effettuato il login;
- Il fornitore deve essere nella pagina dedicata alla gestione delle FAQ;
*Postcondizioni:*
- La FAQ scelta dal fornitore viene eliminata dalla piattaforma;
*Scenario Principale:*
- Il fornitore individua la FAQ da eliminare e preme il bottone per eliminarla;
- Viene richiesta la password del fornitore per confermare l'eliminazione;
- Il sistema elimina la FAQ dalla piattaforma;
*Estensioni:*
- Inserimento password;
- Invio richiesta con dati mancanti o errati;
- Sistema non raggiungibile;

== UC39 - Sistema non raggiungibile
*Attori principali:*
- Utente non autenticato/cliente;
*Descrizione:*
- Il sistema non è raggiungibile;
*Precondizioni:*
- Il sistema è stato configurato;
*Postcondizioni:*
- Viene notificato l'errore relativo alla piattaforma all'utente;
*Scenario Principale:*
- L'utente tenta di compiere un'operazione che richiede la comunicazione con il sistema, ma il sistema non è
  raggiungibile;
- Il sistema mostra un messaggio d'errore all'utente tramite il client;

== UC40 - Invio richiesta con dati mancanti o errati
*Attori principali:*
- Utente non autenticato/cliente;
*Descrizione:*
- Un utente ha inviato una richiesta al sistema, ma i dati inseriti sono mancanti o errati;
*Precondizioni:*
- Il sistema è stato configurato;
*Postcondizioni:*
- Viene notificato l'errore relativo alla richiesta all'utente;
- La richiesta non va a buon fine;
*Scenario Principale:*
- L'utente invia una richiesta al sistema, ma i dati utilizzati nella richiesta sono mancanti o errati; in alcuni casi
  richieste come queste possono essere associate un utilizzo errato della piattaforma o un tentativo di attacco
  informatico; 
- Il sistema mostra un messaggio d'errore all'utente tramite il client dove spiega la causa dell'errore;

= Requisiti
In questa sezione vengono elencati i requisiti del capitolato, individuati durante la fase di analisi. Ogni #gloss[requisito] viene
identificato da un codice, scelto in base ai seguenti parametri:
#align(center, [*R - [numero] - [tipo] - [Priorità]*])
con:
- *Numero*: numero progressivo che identifica il requisito, parte da 01.
- *Tipo*: può essere
  - *F*: requisito funzionale, indica una funzionalità del sistema;
  - *Q*: requisito di qualità, definisce le caratteristiche della qualità del prodotto, come un sistema deve essere o come il sistema deve esibirsi, per soddisfare le esigenze dell'utente;
  - *V*: requisito di vincolo, ovvero limiti e restrizioni imposte dal capitolato;
- *Priorità*: può essere
  - *O*: Obbligatorio, viene richiesto dal #gloss[proponente] ed è necessario per considerare il prodotto completo;
  - *D*: Desiderabile, non è strettamente necessario ma è valore aggiunto;

== Requisiti funzionali
#show figure: set block(breakable: true)
#figure(
  caption: [Requisiti di funzionalità],
  table(
    columns: (1fr, 2fr, 1fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*ID Requisito*], [*Descrizione*], [*Fonte*]),
    // login
    "R-01-F-O",
    "L'utente deve poter accedere alla piattaforma",
    "UC1 - Riunioni esterne",
    // primo login fornitore
    "R-02-F-O",
    "Nel caso in cui il fornitore acceda per la prima volta alla piattaforma, deve aggiornare la password",
    "UC2, UC4 - Riunioni esterne",
    // primo login cliente
    "R-03-F-O",
    "Nel caso in cui il cliente acceda per la prima volta alla piattaforma, deve aggiornare la password",
    "UC3, UC4 - Riunioni esterne",
    // modifica password
    "R-04-F-O",
    "Sia utente che fornitore devono poter cambiare la password liberamente",
    "UC4 - Riunioni interne",
    // resta connesso
    "R-05-F-D",
    "L'utente non autenticato deve poter scegliere se reinserire le credenziali ad ogni accesso o se farle memorizzare alla piattaforma anche dopo il termine della sessione",
    "UC5 - Riunioni interne",
    // recupero password
    "R-06-F-O",
    "L'utente non autenticato deve poter recuperare la password nel caso in cui la dimentichi",
    "UC6 - Riunioni interne",
    // errore email
    "R-07-F-O",
    "L'utente non autenticato deve essere notificato in caso di errore nell'inserimento dell'e-mail",
    "UC9 - Riunioni interne",
    // errore password
    "R-08-F-O",
    "L'utente non autenticato deve essere notificato in caso di errore nell'inserimento della password o nel caso in cui la password scelta non rispetti il formato richiesto",
    "UC10 - Riunioni interne",
    // logout
    "R-09-F-O",
    "Sia cliente che fornitore devono avere la possibilità di uscire dal proprio account",
    "UC11 - Riunioni interne",
    // visualizzazione lista chat
    "R-10-F-O",
    "Sia cliente che fornitore devono avere la possibilità di vedere la lista di tutte le chat in loro possesso",
    "UC12 - Riunioni esterne",
    // creazione nuova chat
    "R-11-F-O",
    "Sia cliente che fornitore devono avere la possibilità di creare una nuova chat con un contesto pulito, che verrà aggiunta alla lista di quelle già presenti",
    "UC13 - Riunioni esterne",
    // modifica titolo di una chat
    "R-12-F-D",
    "Sia cliente che fornitore devono avere la possibilità di modificare il titolo di una chat già esistente",
    "UC14 - Riunioni interne",
    // apertura chat singola
    "R-13-F-O",
    "Sia cliente che fornitore devono avere la possibilità di aprire una chat singola dalla lista di tutte le chat in loro possesso",
    "UC15 - Riunioni esterne",
    // scrittura messaggio
    "R-14-F-O",
    "Sia cliente che fornitore devono poter scrivere messaggi per comunicare con il chatbot",
    "UC16 - Capitolato",
    // scrittura messaggio troppo lungo
    "R-15-F-O",
    "L'utente che digita il messaggio deve essere avvisato nel caso in cui il messaggio scritto sia troppo lungo",
    "UC16.1 - Riunioni interne",
    // scrittura messaggio tramite FAQ
    "R-16-F-O",
    "Sia cliente che fornitore devono avere la possibilità di scrivere messaggi tramite FAQ preimpostate dal fornitore; se possibile il chatbot suggerirà delle FAQ utili in base al contesto",
    "UC17 - Capitolato, Riunioni esterne",
    // invio messaggio
    "R-17-F-O",
    "Sia cliente che fornitore per comunicare con il chatbot devono poter trasmettere il messaggio scritto",
    "UC18 - Capitolato",
    // ricezione risposta
    "R-18-F-O",
    "Sia cliente che fornitore devono ricevere la risposta elaborata dal chatbot in seguito all'invio di un messaggio; durante l'elaborazione della risposta l'utente deve ricevere un feedback che indica l'elaborazione della risposta",
    "UC19 - Capitolato",
    // valutazione risposta
    "R-19-F-O",
    "Il cliente deve avere la possibilità di valutare la risposta ricevuta dal chatbot tramite l'opzione 'Pollice su/giù'",
    "UC20 - Capitolato, riunione esterna",
    // eliminazione chat
    "R-20-F-O",
    "Sia cliente che fornitore devono avere la possibilità di eliminare una chat presente nella lista di tutte le chat",
    "UC21 - Riunioni interne",
    // dark/light mode
    "R-21-F-D",
    "L'utente deve avere la possibilità di scegliere tra tema scuro e tema chiaro dell'interfaccia",
    "UC22 - Riunioni interne",
    // modifica durata storico chat
    "R-22-F-O",
    "Il fornitore deve avere la possibilità di modificare la durata dello storico delle chat, ovvero il periodo di tempo massimo per cui vengono memorizzati e tenuti come contesto i messaggi per ogni chat",
    "UC23 - Riunioni esterne",
    // caricare logo
    "R-23-F-D",
    "Il fornitore deve avere la possibilità di caricare il proprio logo per personalizzare la propria piattaforma fornita ai clienti",
    "UC24 - Riunioni interne, Riunioni esterne",
    // palette colori
    "R-24-F-D",
    "Il fornitore deve avere la possibilità di cambiare i colori principali dell'interfaccia della propria piattaforma",
    "UC25 - Riunioni interne, Riunioni esterne",
    // statistiche domanda risposta
    "R-25-F-D",
    "Il fornitore deve avere la possibilità di visualizzare le statistiche relative alle interazioni con il chatbot",
    "UC26 - Riunioni interne, Riunioni esterne",
    // filtri visualizzazione
    "R-26-F-D",
    "Il fornitore deve avere la possibilità di filtrare le statistiche visualizzate",
    "UC27 - Riunioni interne, Riunioni esterne",
    // aggiunta account cliente
    "R-27-F-O",
    "Il fornitore deve avere la possibilità di aggiungere gli account per i propri clienti",
    "UC28 - Riunioni esterne",
    // inserimento account già esistente
    "R-28-F-O",
    "Il fornitore deve essere avvisato nel caso in cui stia aggiungendo un account cliente già esistente",
    "UC29 - Riunioni interne",
    // eliminazione account cliente
    "R-29-F-O",
    "Il fornitore deve avere la possibilità di eliminare un account cliente solo dopo aver autorizzato l'eliminazione tramite la propria password",
    "UC30 - Riunioni interne",
    // inserimento documenti aziendali
    "R-30-F-O",
    "Il fornitore deve avere la possibilità di inserire documenti aziendali in modo da fornire ulteriore contesto all'chatbot",
    "UC31 - Capitolato",
    // formato file non valido
    "R-31-F-O",
    "Il fornitore deve sapere quando file caricato, sia come logo che come documento aziendale, non sia del formato corretto",
    "UC32 - Riunioni interne",
    // visualizzazione documenti aziendali
    "R-32-F-O",
    "Il fornitore deve avere la possibilità di visualizzare la lista dei documenti aziendali caricati nella piattaforma",
    "UC33 - Riunioni interne",
    // eliminazione documento aziendale
    "R-33-F-O",
    "Il fornitore deve avere la possibilità di eliminare un documento aziendale dalla piattaforma solo dopo aver autorizzato l'eliminazione tramite la propria password",
    "UC34 - Riunioni interne",
    // aggiunta FAQ
    "R-34-F-O",
    "Il fornitore deve avere la possibilità di aggiungere delle domande preimpostate nella piattaforma",
    "UC35 - Riunioni esterne",
    // visualizzazione FAQ
    "R-35-F-O",
    "Il fornitore deve avere la possibilità di visualizzare la lista delle domande preimpostate inserite nella piattaforma",
    "UC36 - Riunioni interne",
    // modifica FAQ
    "R-36-F-O",
    "Il fornitore deve avere la possibilità di modificare le domande preimpostate già inserite nella piattaforma",
    "UC37 - Riunioni interne",
    // eliminazione FAQ
    "R-37-F-O",
    "Il fornitore deve avere la possibilità di eliminare le domande preimpostate dalla piattaforma solo dopo aver autorizzato l'eliminazione tramite la propria password",
    "UC38 - Riunioni interne",
    // sistema non raggiungibile
    "R-38-F-O",
    "Un utente non autenticato o il cliente che sta utilizzando la piattaforma deve essere avvisato nel caso in cui il sistema non sia raggiungibile, possibilmente specificando il motivo del malfunzionamento",
    "UC39 - Riunioni interne",
    // invio richiesta con dati mancanti o errati
    "R-39-F-O",
    "Un utente non autenticato o il cliente che sta utilizzando la piattaforma deve essere avvisato nel caso in cui la richiesta che ha inviato contenga dati mancanti o errati; nel caso sia pertinente deve anche essere specificato il problema",
    "UC40 - Riunioni interne",
  ),
)

== Requisiti di qualità
// NOTA: qua bisogna scrivere requisitii piu generali che
// o sono stabiliti dal capitolato
// o sono stabiliti da noi
// la fonte puo essere capitolato o interno
#show figure: set block(breakable: true)
#figure(
  caption: [Requisiti di qualità],
  table(
    columns: (1fr, 2fr, 1fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*ID Requisito*], [*Descrizione*], [*Fonte*]),
    "R-01-Q-O", "È richiesta la presentazione della documentazione che descrive la progettazione architetturale", "Capitolato",
    "R-02-Q-O", "È richiesta la presentazione della documentazione che presenta le tecnologie utilizzate", "Capitolato",
    "R-03-Q-O", "È richiesta la presentazione della documentazione che descrive la progettazione della base di dati", "Capitolato",
    "R-04-Q-O", "È richiesta la presentazione della documentazione che descrive l'implementazione del sistema di raccomandazione utilizzato con LLM", "Capitolato",
    "R-05-Q-O", "Tutte le attività del progetto devono essere svolte rispettando le Norme di Progetto", "Riunione interna",
  ),
)

== Requisiti di vincolo
#show figure: set block(breakable: true)
#figure(
  caption: [Requisiti di vincolo],
  table(
    columns: (1fr, 2fr, 1fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*ID Requisito*], [*Descrizione*], [*Fonte*]),
    "R-01-V-O",
    "L'interfaccia dedicata al cliente deve essere fruibile da dispositivi mobile e user friendly",
    "Capitolato",
    "R-02-V-O",
    "L'interfaccia di configurazione del fornitore deve essere un'interfaccia web",
    "Capitolato",
    "R-03-V-O",
    "Tutto il codice e la documentazione vanno salvati all'interno di un repository pubblico",
    "Capitolato",
  ),
)

== Riepilogo
#show figure: set block(breakable: true)
#figure(
  caption: [Riepilogo],
  table(
    columns: (0.75fr, 0.5fr, 0.5fr, 0.5fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0 or y == 4) { luma(230) },
    table.header([*Tipo di requisiti*], [*Obbligatori*], [*Desiderabili*], [*Totale*]),
    "Funzionali", "32", "7", "39",
    "Qualità", "5", "0", "5",
    "Vincolo", "3", "0", "3",
    "Totale", "40", "7", "47",
  ),
)