#import "../../template/documenti.typ": *
#import "../../template/i-figured.typ"

#show: doc => documento(
  titolo: "Manuale Utente",
  data: [24/03/2025],
  ruoli: (
    "Matteo Bazzan",
    "Verificatore",
    "Luca Ribon",
    "Redattore, Verificatore",
    "Francesco Fragonas",
    "Redattore",
    "Gabriele Magnelli",
    "",
    "Filippo Sabbadin",
    "Redattore, Verificatore",
    "Luca Rossi",
    "",
    "Yi Hao Zhuo",
    "",
  ),
  sommario: [Manuale utente],
  versioni: (
    "1.0.0",
    "16/05/2025",
    "Francesco Fragonas",
    "Sistemati riferimenti",
    "Luca Ribon",
    "0.4.2",
    "14/05/2025",
    "Luca Ribon",
    "Aggiunta di note sull'utilizzo e installazione, altre correzioni minori",
    "Matteo Bazzan",
    "0.4.1",
    "13/05/2025",
    "Francesco Fragonas",
    "Miglioramento sezione Installazione",
    "Luca Ribon",
    "0.4.0",
    "12/05/2025",
    "Francesco Fragonas",
    "Sezione Installazione",
    "Luca Ribon",
    "0.3.0",
    "08/05/2025",
    "Francesco Fragonas",
    "Sezione Aspetto del sistema e Tipi utenti",
    "Filippo Sabbadin",
    "0.2.0",
    "05/05/2025",
    "Francesco Fragonas",
    "Sezione Guida all'utilizzo",
    "Matteo Bazzan",
    "0.1.0",
    "24/03/2025",
    "Filippo Sabbadin",
    "Prima stesura",
    "Luca Ribon",
  ),
  doc,
)
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

== Scopo del prodotto

Il progetto prevede lo sviluppo di un #gloss[Chatbot] avanzato, basato su modelli linguistici #gloss[LLM] (Large
Language Models), pensato per migliorare la comunicazione tra aziende fornitrici e i loro clienti. Questo #gloss[assistente virtuale] permetterà
agli utenti di ottenere rapidamente e in modo intuitivo informazioni dettagliate su prodotti o servizi offerti,
eliminando la necessità di contattare direttamente l’azienda.

== Scopo del documento
Lo scopo di questo documento è quello di fornire una guida all'utilizzo del prodotto, spiegandone l'installazione, i
requisiti consigliati per garantire il corretto funzionamento dell'applicazione, le funzionalità principali e le
modalità di utilizzo.

== Glossario
Per facilitare la comprensione di questo documento, viene fornito un glossario che chiarisce il significato dei termini
specifici utilizzati nel contesto del progetto. Ogni termine di glossario è contrassegnato con un asterisco "\*" in
apice e collegato direttamente alla pagina web del glossario, permettendo così di accedere immediatamente alla
definizione completa del termine. Le definizioni sono disponibili nel documento: #link("https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf")[Glossario.pdf];\
e nella seguente pagina web: #link("https://codehex16.github.io/glossario").

== Riferimenti

=== Riferimenti normativi
- Capitolato C7 - Assistente Virtuale Ergon:\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")\ _(ultima consultazione: 16-05-2025)_; //da tenere aggiornato

- Regolamento del progetto didattico:\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")\ _(ultima consultazione: 16-05-2025)_

- Norme di progetto:\ #link("https://codehex16.github.io/docs/3%20-%20PB/Norme-di-Progetto.pdf")\ _(versione 1.5.0)_;

=== Riferimenti informativi
- Sito del gruppo CodeHex16:\ #link("https://codehex16.github.io/")\ _(ultima consultazione: 16-05-2025)_;
//da tenere aggiornato

- Glossario:
  - Documento: #link("https://codehex16.github.io/docs/glossario/glossario.pdf") _(versione 0.7.0)_;
  - Pagina web: #link("https://codehex16.github.io/glossario.html") _(ultima consultazione 16-05-2025)_;

= Requisiti consigliati

In questa sezione vengono elencati i requisiti consigliati per garantire il corretto funzionamento del prodotto. Questi
requisiti non sono necessari, ma sono comunque consigliati visto che il gruppo ha lavorato con essi, ed è in grado di
garantire il corretto funzionamento del prodotto.

== Requisiti hardware
Per hardware si intendono le componenti della macchina dove verrà utilizzato il prodotto. I requisiti consigliati sono i seguenti:

#figure(
  table(
    columns: (1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if (y > 0) { left } else { center + horizon },
    fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
    table.header([*Hardware*], [*Requisito*]),
    "Processore", "Quad-core 2.38GHz",
    "Memoria primaria", "2GB DDR4",
    "Memoria secondaria", "500MB",
    "Connessione internet", "5mbps",
  ),
  caption: "Requisiti hardware",
)

== Requisiti software

Visto che il gruppo sta sviluppando una #gloss[webapp], per software si intende un browser web. I browser e le loro versioni consigliate sono quelle utilizzate dal gruppo all'inizio dello sviluppo del progetto:

#figure(
  table(
    columns: (1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if (y > 0) { left } else { center + horizon },
    fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
    table.header([*Browser*], [*Versione*]),
    "Google Chrome", "v123+",
    "Mozilla Firefox", "v123+",
    "Microsoft Edge", "v17+",
    "Safari", "v122+",
  ),
  caption: "Requisiti software",
)

=== Requisiti di sistema
La webapp è accessibile tramite browser e non richiede installazione locale, risultando quindi compatibile con i principali sistemi operativi moderni. In particolare, il prodotto è stato progettato per funzionare correttamente su:

- Windows 10 e versioni successive;
- Linux (distribuzioni basate su Debian, Ubuntu, Fedora, Arch);
- MacOS (versioni 12 Monterey e successive).
- iOS (versioni 16 e successive);
- Android (versioni 12 e successive).

L'unico requisito fondamentale è la presenza di un browser web aggiornato che supporto le tecnologie moderne (HTML5, CSS3, #gloss[JavaScript]). I browser e versioni consigliate sono indicati nella sezione precedente.

L'utilizzo di browser obsoleti o non aggiornati potrebbe compromettere la corretta visualizzazione e il funzionamento dell'applicativo.


= Installazione
Questa sezione descrive tutti i passaggi necessari per l'installazione dell'applicativo a partire dal #gloss[codice sorgente] presente nella repository.

== Clonazione del progetto
Clonare la repository del progetto con i relativi moduli da GitHub sul server o sulla macchina locale.

#[
  #show raw.where(block: true): set block(fill: rgb("#eeeeee"), inset: 1em, radius: 0.5em, width: 100%)
  ```bash
  git clone https://github.com/CodeHex16/MVP.git --recurse-submodules
  ```
]

#[
  #show raw.where(block: true): set block(fill: rgb("#eeeeee"), inset: 1em, radius: 0.5em, width: 100%)
  ```bash
  cd MVP
  ```
]

#strong[Nota:] assicurarsi di avere installato Git. In caso contrario, installarlo seguendo la guida del sito ufficiale #link("https://git-scm.com/book/en/v2/Getting-Started-Installing-Git") _(ultima consultazione: 14-05-2025)_

== Creazione dei file .env
Per il corretto funzionamento dell'applicativo è necessario creare un file .env contenente le variabili d'ambiente necessarie. Per crearlo, copiare il file .env.example presente nella root del progetto e rinominarlo in .env.

#[
  #show raw.where(block: true): set block(fill: rgb("#eeeeee"), inset: 1em, radius: 0.5em, width: 100%)
  ```bash
  cp .env.example .env
  ```
]

Aprire i file .env e modificare le variabili d'ambiente.

Di seguito sono elencate le variabili d'ambiente necessarie per il corretto funzionamento dell'applicativo.

Per il microservizio #strong[Database-API] sono necessari:
- MONGODB_URL: URL del database MongoDB;
- SECRET_KEY_JWT: chiave segreta, generata in modo completamente casuale, per la generazione dei #gloss[token] JWT;
- MONGO_USERNAME: nome utente per l'accesso al database MongoDB;
- MONGO_PASSWORD: password per l'accesso al database MongoDB;
- ME_USERNAME: nome utente per l'accesso a Mongo Express;
- ADMIN_EMAIL: email dell'amministratore;
- ADMIN_PASSWORD: password dell'amministratore, che verrà utilizzata anche come password di accesso per Mongo Express;

Per il servizio di invio delle email sono configurabili:
- MAIL_ADDRESS: indirizzo email del mittente;
- MAIL_PASSWORD: password dell'email del mittente;
- MAIL_USERNAME: nome utente dell'email del mittente;
- MAIL_PORT: porta del server SMTP (default 587);
- MAIL_SERVER: server SMTP (es: smtp.example.com);
- MAIL_STARTTLS: True se si utilizza TLS, False altrimenti;
- MAIL_SSL_TLS: True se si utilizza SSL, False altrimenti;
- MAIL_USE_CREDENTIALS: True se si utilizzano le credenziali, False altrimenti;
- MAIL_VALIDATE_CERTS: True se si vogliono validare i certificati, False altrimenti;
Le variabili del servizio email da impostare obbligatoriamente sono MAIL_ADDRESS, MAIL_PASSWORD; le altre variabili sono opzionali e possono essere lasciate con i valori di default.

Per il microservizio #strong[LLM-API] sono necessari:
- OPENAI_API_KEY: chiave #gloss[API] per l'accesso al servizio #gloss[OpenAI];

Per il microservizio #strong[Suppl-AI] sono necessari:
- PUBLIC_DATABASE_URL: URL del database MongoDB pubblico;
- PUBLIC_LLM_URL: URL del servizio LLM pubblico;
- NODE_ENV: ambiente di esecuzione del nodo;

Se l'indirizzo email utilizzato per l'invio delle email è protetto da autenticazione a due fattori, è necessario generare una password per le app e utilizzarla al posto della password dell'email.

Esempio per gmail: #link("https://support.google.com/mail/answer/185833?hl=it") _(ultima consultazione: 12-05-2025)_

== Creazione della rete Docker
Da questo momento in poi sarà necessario aver installato Docker e che Docker Engine sia in esecuzione nel proprio sistema. Per installare Docker, seguire le istruzioni sul sito ufficiale #link("https://docs.docker.com/get-docker/") _(ultima consultazione: 14-05-2025)_.

Per permettere la comunicazione tra i container dei diversi microservizi, è necessario creare una rete Docker condivisa. Questa rete verrà utilizzata da tutti i servizi coinvolti nell'applicativo.

Per creare la rete, eseguire il seguente comando:

#[
  #show raw.where(block: true): set block(fill: rgb("#eeeeee"), inset: 1em, radius: 0.5em, width: 100%)
  ```bash
  docker network create suppl-ai-shared-network
  ```
]

== Esecuzione dell'applicativo
Il sistema può essere eseguito tramite Docker.
Per avviare tutti i servizi:

#[
  #show raw.where(block: true): set block(fill: rgb("#eeeeee"), inset: 1em, radius: 0.5em, width: 100%)
  ```bash
  docker compose up -d --build
  ```
]

- La webapp sarà disponibile all'indirizzo #link("http://localhost:3000").
- Agli indirizzi #link("http://localhost:8000") e #link("http://localhost:8001") saranno disponibili le documentazioni generate da FastAPI rispettivamente per le API di Database-API e LLM-API.
- All'indirizzo #link("http://localhost:8081") sarà disponibile la webapp di Mongo Express, che permette di visualizzare e gestire il database MongoDB.

Per poter ricevere delle risposte dal chatbot è necessario aver caricato almeno un documento tramite la schermata di gestione documenti, visibile agli utenti di tipo #strong[admin].

Per fermare l'esecuzione di tutti i servizi, eseguire il seguente comando:

#[
  #show raw.where(block: true): set block(fill: rgb("#eeeeee"), inset: 1em, radius: 0.5em, width: 100%)
  ```bash
  docker compose down

  ```
]

== Accesso alla webapp
Una volta avviata la webapp, è possibile accedere all'area amministratore per avere accesso a tutte le funzionalità. Le credenziali di accesso predefinite sono le seguenti:

#strong[Email]: admin\@test.it

#strong[Password]: admin

= Tipi di utente
All'interno della webapp sono previsti due distinti ruoli utente: utente #gloss[standard] (user) e amministratore (admin). Ciascun ruolo ha accesso a funzionalità differenti in base alle proprie competenze e responsabilità.

== Utente standard (user)
L’utente standard, corrispondente al Cliente, può interagire direttamente con il chatbot e accedere a una serie di funzionalità utili alla fruizione del servizio. In particolare, l’utente può:

- Inviare messaggi al chatbot e ricevere risposte in tempo reale;
- Consultare e utilizzare le domande frequenti (#gloss[FAQ]) pubblicate dagli amministratori;
- Valutare la qualità delle risposte ricevute dal chatbot tramite un sistema di #gloss[feedback].;
- Non ha accesso ad alcuna funzione di amministrazione o gestione della piattaforma.

== Amministratore (admin)
L’amministratore, corrispondente al Fornitore, dispone di tutti i permessi dell’utente standard, ma ha inoltre accesso a un pannello di gestione dedicato che gli consente di:

- Gestire gli utenti registrati (creazione, modifica, rimozione, assegnazione ruoli);
- Caricare, visualizzare e rimuovere documenti utilizzati per il contesto delle risposte del chatbot;
- Modificare, creare e cancellare le FAQ;
- Visualizzare le statistiche di utilizzo (es. numero di messaggi, percentuali di valutazione, numero di chat), con possibilità di filtrare i dati per intervalli temporali;
- Personalizzare alcune impostazioni dell’interfaccia della webapp, come il logo, il colore primario e il numero massimo di messaggi dello storico delle chat.

Queste funzionalità permettono all’amministratore di configurare, monitorare e adattare il sistema secondo le esigenze operative e organizzative.

= Guida all'utilizzo

== Login
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/login_compilato.jpg", height: 50%),
    caption: [
      Schermata di login.
    ],
  ),
  figure(
    image("../imgs/screen/login_errore_credenziali.jpg", height: 50%),
    caption: [
      Schermata login con credenziali non valide.
    ],
  ),
  figure(
    image("../imgs/screen/recupero_password.jpg", height: 50%),
    caption: [
      Schermata recupero password.
    ],
  ),
)

Se l'utente possiede già un #gloss[account], può accedere all'applicazione tramite la schermata di login, inserendo le proprie credenziali (email e password) negli appositi campi, come mostrato in #emph[Figura 1].

Se le credenziali inserite sono errate (email non esistente o password sbagliata), verrà visualizzato un messaggio di errore con la dicitura:
"#strong[Credenziali non valide]" (vedi #emph[Figura 2]).

Nel caso in cui l'utente non ricordi la password, può cliccare sul link "#strong[Password dimenticata?]". Si aprirà una nuova schermata (vedi #emph[Figura 3]) in cui l'utente dovrà inserire l'indirizzo e-mail associato al proprio account. Dopo aver inserito l'e-mail, l'utente riceverà una email contenente una password temporanea. L'utente dovrà quindi accedere nuovamente all'applicazione utilizzando questa password temporanea e successivamente cambiarla con una password personale.

Qualora l'utente non sia ancora registrato, potrà contattare il #gloss[fornitore] del sistema per richiedere la creazione di un account.

Mettendo un check sulla casella "#strong[Ricordami]", l'utente potrà rimanere connesso anche dopo aver chiuso il browser. In questo modo, non sarà necessario effettuare nuovamente il login ogni volta che si accede all'applicazione.

Una volta effettuato correttamente il login, l’utente avrà accesso completo a tutte le funzionalità del chatbot.

=== Primo Login
Per accedere per la prima volta alla piattaforma, l'utente deve richiedere il permesso al fornitore proprietario
dell'applicazione, il quale gli fornisce una password temporanea. L'utente inserisce il suo indirizzo e-mail e la
password ricevuta che successivamente provvederà a cambiare con una password personale.

== Schermata home
#grid(
  columns: (1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/home_admin.jpg", height: 50%),
    caption: [
      Schermata home utente admin.
    ],
  ),
  figure(
    image("../imgs/screen/home_user.jpg", height: 50%),
    caption: [
      Schermata home utente user.
    ],
  ),
)
Dopo aver effettuato il login, l'utente viene reindirizzato alla homepage principale della webapp. In base al tipo di utente che ha effettuato il login, la schermata principale sarà diversa. I tipi di utente sono due: admin e user.

=== Home user
La schermata home per l'utente di tipo #strong[user] (vedi #emph[Figura 4]) è composta da:
- un pulsante per la modalità dark/light mode;
- una sezione #strong[Cronologia Chat] che mostra le chat precedenti con il chatbot;
- una barra di navigazione per poter accedere a tutte le funzionalità dell'applicativo.

=== Home admin
La schermata home per l'utente di tipo #strong[admin] (vedi #emph[Figura 5]) ha le stesse funzionalità della home per l'utente di tipo user, con l'aggiunta delle seguenti funzionalità:
- un pulsante per la gestione delle impostazioni di sistema;
- un pulsante per la gestione dei profili utente;
- un pulsante per la gestione dei documenti aziendali;
- un pulsante per la visualizzazione delle statistiche di utilizzo del chatbot.
- un pulsante per la gestione delle FAQ.

=== Cronologia chat
#grid(
  columns: (1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/home_senza_chat.jpg", height: 50%),
    caption: [
      Schermata home con cronologia chat vuota.
    ],
  ),
  figure(
    image("../imgs/screen/home_elimina_chat.jpg", height: 50%),
    caption: [
      Schermata home con popup eliminazione chat.
    ],
  ),
)
La sezione #strong[Cronologia Chat] mostra tutte le conversazioni precedenti con il chatbot. Si può selezionare una chat per visualizzarne il contenuto. Ogni chat è identificata da un titolo che viene generato automaticamente in base al contesto della conversazione e la data di creazione.

Se l'utente non ha mai avuto conversazioni precedenti, la sezione sarà vuota e verrà visualizzata la scritta "Ancora nessuna chat" (vedi #emph[Figura 6]).

A fianco di ogni chat è presente un'icona che permette l'eliminazione. Cliccando sull'icona, l'utente verrà avvisato della cancellazione della chat e dovrà confermare l'operazione (vedi #emph[Figura 7]). Una volta confermata, la chat verrà eliminata e non sarà più visibile nella cronologia.

Per iniziare una nuova conversazione, l'utente può cliccare sul pulsante "#strong[Nuova Chat]" presente nella barra di navigazione. Questo pulsante lo reindirizzerà alla schermata di chat.

== Schermata profilo
#grid(
  columns: (1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/profilo.jpg", height: 50%),
    caption: [
      Schermata profilo.
    ],
  ),
  figure(
    image("../imgs/screen/cambio_password.jpg", height: 50%),
    caption: [
      Schermata cambio password.
    ],
  ),
)
Nella schermata del profilo (vedi #emph[Figura 8]) l'utente può visualizzare le proprie informazioni personali, come il nome e l'indirizzo e-mail. Inoltre può modificare la password ed effettuare il logout cliccando sul pulsante "#strong[Esci dall'account]".

=== Cambio password
L'utente può cambiare la propria password cliccando sul pulsante "#strong[Cambia Password]". Si aprirà una nuova schermata (vedi #emph[Figura 9]) in cui l'utente dovrà inserire la password attuale e la nuova password. La nuova password deve essere inserita due volte per confermare che non ci siano errori di battitura. Inoltre deve avere i seguenti requisiti:
- almeno 8 caratteri;
- almeno una lettera maiuscola;
- almeno una lettera minuscola;
- almeno un numero;
- almeno un carattere speciale (es. ! \@ \# \$ % ^ & \* ( ) ).
Se la password attuale non è corretta o la nuova password non è stata riscritta correttamente, il cambio non andrà a buon fine.

== Schermata chat
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/chat.jpg", height: 50%),
    caption: [
      Schermata chat.
    ],
  ),
  figure(
    image("../imgs/screen/chat_invio.jpg", height: 50%),
    caption: [
      Schermata chat con invio domanda.
    ],
  ),
  figure(
    image("../imgs/screen/chat_ricezione.jpg", height: 50%),
    caption: [
      Schermata chat con ricezione risposta.
    ],
  ),
)

La schermata di chat (vedi #emph[Figura 10]) è composta da:
- un tasto per tornare alla schermata home;
- il nome della chat (se la chat è nuova, il nome sarà "#strong[Nuova Chat]");
- un tasto per le impostazioni della chat;
- un'area di testo per visualizzare la conversazione con il chatbot;
- un'area di input per inserire il testo da inviare al chatbot;

Per ogni messaggio è possibile visualizzare la data e l'ora di invio e ricezione. I messaggi inviati dall'utente sono visualizzati a destra, mentre le risposte del chatbot sono visualizzate a sinistra. Per ogni messaggio di risposta ricevuto dal chatbot, è possibile valutare la qualità cliccando sulle icone di valutazione (pollice su o pollice giù).

Per inviare un messaggio, l'utente deve digitare il testo nell'area di input e premere il tasto con l'icona di invio. Il messaggio verrà quindi visualizzato nell'area di testo della conversazione (vedi #emph[Figura 11]) e il chatbot risponderà in tempo reale (vedi #emph[Figura 12]).

Premendo il tasto in basso a sinistra con l'icona del messaggio è possibile selezionare una domanda presente nella lista delle FAQ. Una volta selezionata, la domanda verrà inserita nell'area di input e l'utente potrà inviarla al chatbot.

Alla ricezione della prima risposta da parte del chatbot, verrà generato un titolo per la chat, che sarà visibile sia nella schermata di chat che nella schermata home. Il titolo sarà generato in base al contesto della conversazione e servirà a identificare la chat nella cronologia.

=== Eliminazione chat
#grid(
  columns: (1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/chat_tasto_elimina.jpg", height: 50%),
    caption: [
      Schermata chat con tasto elimina.
    ],
  ),
  figure(
    image("../imgs/screen/chat_elimina.jpg", height: 50%),
    caption: [
      Popup conferma eliminazione chat.
    ],
  ),
)

L'utente può eliminare la chat cliccando sul tasto con l'icona con i 3 punti in alto a destra e successivamente su "#strong[Elimina Chat]" presente nella schermata di chat (vedi #emph[Figura 13]). Si aprirà un popup di conferma (vedi #emph[Figura 14]) in cui l'utente dovrà confermare l'eliminazione. Una volta confermata, la chat verrà eliminata e non sarà più visibile nella cronologia.

== Schermata impostazioni
#grid(
  columns: 1fr,
  gutter: 2mm,
  figure(
    image("../imgs/screen/impostazioni.jpg", height: 50%),
    caption: [
      Schermata impostazioni.
    ],
  ),
)

Nella schermata delle impostazioni (vedi #emph[Figura 15]), accessibile solo dall'utente #strong[admin], è possibile modificare le impostazioni di sistema. In particolare si possono modificare i seguenti parametri:
- il colore primario della webapp;
- il logo dell'azienda, sia in modalità chiara che scura;
- la favicon della webapp;
- il numero limite di messaggi visualizzati nella cronologia;

La modifica del colore primario avviene tramite un selettore di colore (differente in base al sistema operativo e al browser utilizzato). L'utente può selezionare il colore desiderato e questo sarà applicato a tutte le schermate solo nel client dell'utente che ha effettuato la modifica. Per applicarlo in modo definitivo è necessario cliccare sul tasto "#strong[Salva impostazioni]". Se si desidera invece tornare al colore primario di default, è possibile cliccare sul tasto "#strong[Reset]". I testi che presentano come sfondo il colore primario si adattano automaticamente, in modo da garantire una buona leggibilità.

Per modificare il logo, è necessario caricare due file, uno per la modalità chiara e uno per la modalità scura. È possibile caricare lo stesso file in entrambi i campi, ma è consigliato caricare due file diversi per garantire una buona visibilità e contrasto.

#strong[Nota:] perché la modifica dei loghi sia visibile è necessario riavviare il container, questo è necessario a causa del modo in cui #gloss[SvelteKit] gestisce le immagini in cache in ambiente di produzione.

== Schermata gestione clienti
#grid(
  columns: (1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/clienti.jpg", height: 50%),
    caption: [
      Schermata clienti.
    ],
  ),
  figure(
    image("../imgs/screen/clienti_aperto.jpg", height: 50%),
    caption: [
      Schermata clienti con modifica ed eliminazione.
    ],
  ),
)

Nella schermata #strong[gestione clienti] (vedi #emph[Figura 16]) l'utente #strong[admin] può visualizzare la lista dei clienti registrati al sistema. Per ogni cliente sono visibili le seguenti informazioni:
- nome;
- email;
- tipo di utente (admin o user);
Per ricercare gli utenti è possibile utilizzare la barra di ricerca in basso. La ricerca avviene in tempo reale e viene effettuata sul nome, sull'email e sul tipo di utente.

Su ogni cliente è presente una freccia che permette di espandere la visualizzazione mostrando il tasto per la modifica e il tasto per l'eliminazione (vedi #emph[Figura 17]).

=== Operazioni sui clienti
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/clienti_nuovo.jpg", height: 50%),
    caption: [
      Schermata clienti con popup creazione.
    ],
  ),
  figure(
    image("../imgs/screen/clienti_modifica.jpg", height: 50%),
    caption: [
      Schermata clienti con popup modifica.
    ],
  ),
  figure(
    image("../imgs/screen/clienti_elimina.jpg", height: 50%),
    caption: [
      Schermata clienti con popup eliminazione.
    ],
  ),
)

==== Creazione utente
Per creare un nuovo utente, l'utente #strong[admin] deve cliccare sul tasto "#strong[+]" presente nella schermata clienti. Si aprirà un popup in cui l'utente dovrà inserire le informazioni del nuovo cliente (vedi #emph[Figura 18]). I campi richiesti sono:
- nome;
- email;
- ruolo (admin o user);

Al salvataggio, il nuovo utente sarà salvato e gli verrà inviata una email con le credenziali di accesso. Se l'email è già registrata, verrà visualizzato un messaggio di errore.

==== Modifica utente
Per modificare un utente, l'utente #strong[admin] deve cliccare sul tasto "#strong[Modifica]" presente nella sezione del cliente. Si aprirà un popup in cui è possibile modificare le informazioni del cliente (vedi #emph[Figura 19]). I campi modificabili sono:
- nome;
- ruolo (admin o user);

Per salvare le modifiche è necessario inserire la propria password e cliccare sul tasto "#strong[Conferma]".

==== Eliminazione utente
Per eliminare un utente, l'utente #strong[admin] deve cliccare sul tasto "#strong[Elimina]" presente nella sezione del cliente. Si aprirà un popup di conferma (vedi #emph[Figura 20]) in cui l'utente per confermare l'operazione deve inserire la propria password. Una volta cliccato sul tasto "#strong[Conferma]", l'account verrà eliminato e non sarà più visibile nella lista dei clienti.

== Schermata gestione documenti
#grid(
  columns: (1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/documenti.jpg", height: 50%),
    caption: [
      Schermata gestione documenti.
    ],
  ),
  figure(
    image("../imgs/screen/documenti_aperto.jpg", height: 50%),
    caption: [
      Schermata gestione documenti con eliminazione.
    ],
  ),
)

Nella schermata #strong[gestione documenti] (vedi #emph[Figura 21]) l'utente #strong[admin] può visualizzare la lista dei documenti inseriti. Per ogni documento sono visibili le seguenti informazioni:
- nome del file;
- data di caricamento;
- utente che ha caricato il file;

I file inseriti serviranno come contesto per il chatbot, in modo da fornire risposte più pertinenti. Ѐ necessario caricare almeno un file per poter utilizzare il chatbot.

Per ricercare i documenti è possibile utilizzare la barra di ricerca in basso. La ricerca avviene in tempo reale e viene effettuata sul nome del file e sull'utente che lo ha caricato.

Su ogni documento è presente una freccia che permette di espandere la visualizzazione mostrando il tasto per l'eliminazione (vedi #emph[Figura 22]).

=== Operazioni sui documenti
#grid(
  columns: (1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/documenti_nuovo.jpg", height: 50%),
    caption: [
      Schermata documenti con popup creazione.
    ],
  ),
  figure(
    image("../imgs/screen/documenti_elimina.jpg", height: 50%),
    caption: [
      Schermata documenti con popup eliminazione.
    ],
  ),
)

==== Creazione documento
Per creare un nuovo documento, l'utente #strong[admin] deve cliccare sul tasto "#strong[+]" presente nella schermata documenti. Si aprirà un popup in cui l'utente dovrà scegliere uno o più file. (vedi #emph[Figura 23]). Una volta selezionati, è necessario cliccare sul tasto "#strong[Carica]" per salvarli. Al caricamento, i file saranno visibili nella lista dei documenti e saranno utilizzati come contesto per il chatbot.

==== Eliminazione documento
Per eliminare un documento, l'utente #strong[admin] deve cliccare sul tasto "#strong[Elimina]" presente nella relativa sezione. Si aprirà un popup di conferma (vedi #emph[Figura 24]) in cui l'utente per confermare l'operazione deve inserire la propria password. Una volta cliccato sul tasto "#strong[Conferma]", il documento verrà eliminato e non sarà più visibile nella schermata. Inoltre, il documento non sarà più utilizzabile come contesto per il chatbot.

== Schermata gestione FAQ
#grid(
  columns: (1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/faq.jpg", height: 50%),
    caption: [
      Schermata FAQ.
    ],
  ),
  figure(
    image("../imgs/screen/faq_aperto.jpg", height: 50%),
    caption: [
      Schermata FAQ con modifica ed eliminazione.
    ],
  ),
)
Nella schermata #strong[gestione FAQ] (vedi #emph[Figura 25]) l'utente #strong[admin] può visualizzare la lista delle FAQ inserite. Per ognuna sono visibili le seguenti informazioni:
- domanda abbreviata;
- domanda completa;
- risposta alla domanda;

Le FAQ inserite saranno visibili nella schermata di chat e l'utente potrà selezionarle per poter visualizzare la risposta.

Per la ricerca è possibile utilizzare il campo di testo in basso. L'aggiornamento avviene in tempo reale e viene effettuato sulla domanda abbreviata, sulla domanda completa e sulla risposta.

Su ogni FAQ è presente una freccia che permette di espandere la visualizzazione mostrando il tasto per l'eliminazione (vedi #emph[Figura 26])

=== Operazioni sulle FAQ
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/faq_nuovo.jpg", height: 50%),
    caption: [
      Schermata FAQ con popup aggiunta.
    ],
  ),
  figure(
    image("../imgs/screen/faq_modifica.jpg", height: 50%),
    caption: [
      Schermata FAQ con popup modifica.
    ],
  ),
  figure(
    image("../imgs/screen/faq_elimina.jpg", height: 50%),
    caption: [
      Schermata FAQ con popup eliminazione.
    ],
  ),
)

==== Creazione FAQ
Per creare una nuova FAQ, l'utente #strong[admin] deve cliccare sul tasto "#strong[+]" presente nella relativa schermata. Si aprirà un popup in cui l'utente dovrà inserire le informazioni della nuova domanda (vedi #emph[Figura 27]). I campi richiesti sono:
- domanda abbreviata;
- domanda completa;
- risposta alla domanda;

Al salvataggio, la nuova FAQ sarà visibile a tutti gli utenti nella schermata della chat.

==== Modifica FAQ
Per modificare una FAQ, l'utente #strong[admin] deve cliccare sul tasto "#strong[Modifica]" presente nella sezione corrispondente. Verrà aperto un popup che consente l'aggiornamento delle informazioni (vedi #emph[Figura 28]). I campi modificabili sono:
- domanda abbreviata;
- domanda completa;
- risposta alla domanda;

Per confermare le modifiche, è necessario cliccare sul tasto "#strong[Conferma]".

==== Eliminazione FAQ
Per eliminare una FAQ, l'utente #strong[admin] deve cliccare sul tasto "#strong[Elimina]" presente nella sezione corrispondente. Si aprirà un popup di conferma (vedi #emph[Figura 29]) in cui l'utente per confermare l'operazione deve inserire la propria password. Una volta cliccato sul tasto "#strong[Conferma]", la FAQ verrà eliminata e non sarà più visibile nella schermata di chat da nessun utente.

== Schermata statistiche
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/statistiche.jpg", height: 50%),
    caption: [
      Schermata statistiche.
    ],
  ),
  figure(
    image("../imgs/screen/statistiche_data.jpg", height: 50%),
    caption: [
      Schermata statistiche selezione data.
    ],
  ),
  figure(
    image("../imgs/screen/statistiche_filtri.jpg", height: 50%),
    caption: [
      Schermata statistiche filtrate.
    ],
  ),
)

Nella schermata #strong[statistiche] (vedi #emph[Figura 30]) l'utente #strong[admin] può visualizzare le statistiche di utilizzo del chatbot. Fra le diverse informazioni sono visibili:
- il numero totale di messaggi inviati (divisi fra chatbot e utente);
- il numero totale di chat aperte;
- la percentuale di messaggi valutati positivamente;
- il numero di utenti attivi;
- la media di messaggi inviati per chat;
- la media di messaggi inviati per utente;

Tutti questi dati possono essere filtrati in base alla data di inizio e di fine (vedi #emph[Figura 31]). L'aggiornamento avviene in tempo reale e i filtri sono applicati all'url della pagina. Se non sono state inserite le due date la ricerca viene effettuata su tutte le statistiche disponibili. Se viene inserita solo una delle due date, la ricerca viene effettuata su tutte le statistiche disponibili a partire dalla data di inizio o fino alla data di fine.

= Aspetto del sistema
#grid(
  columns: (1fr, 1fr),
  gutter: 2mm,
  figure(
    image("../imgs/screen/home_light.jpg", height: 50%),
    caption: [
      Schermata home modalità light.
    ],
  ),
  figure(
    image("../imgs/screen/home_dark.jpg", height: 50%),
    caption: [
      Schermata home modalità dark.
    ],
  ),
)
== Tema chiaro e scuro
La webapp presenta nelle schermate principali un tasto per la selezione della modalità chiara o scura. L'impostazione viene salvata nel browser dell'utente e non è visibile ad altri utenti. La modifica del tema avviene in tempo reale e non è necessario ricaricare la pagina.
