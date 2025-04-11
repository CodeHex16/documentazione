#import "../../template/documenti.typ": *
#import "../../template/i-figured.typ"

#show: doc => documento(titolo: "Specifica Tecnica", data: [21/03/2025], ruoli: (
  "Matteo Bazzan",
  "",
  "Luca Ribon",
  "Verificatore",
  "Francesco Fragonas",
  "",
  "Gabriele Magnelli",
  "",
  "Filippo Sabbadin",
  "Redattore",
  "Luca Rossi",
  "Redattore",
  "Yi Hao Zhuo",
  "",
), sommario: [Specifica tecnica], versioni: (
  "0.2.0",
  "10/04/2025",
  "Filippo Sabbadin",
  "Stesura sezioni iniziali",
  "",
  "0.1.0",
  "21/03/2025",
  "Luca Rossi",
  "Bozza iniziale struttura",
  "Luca Ribon",
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

//mettere #gloss per parole da aggiungere nel glossario
= Introduzione

== Scopo del prodotto
Il progetto consiste nella realizzazione di un *#gloss[chatbot]* basato su modelli linguistici (*#gloss[LLM]*) pensato
per i *fornitori* di beni, come bevande o alimenti, da offrire ai propri clienti. Questo sistema consente ai clienti di
ottenere in modo semplice e immediato informazioni dettagliate sui prodotti o servizi disponibili, senza la necessità di
contattare direttamente un operatore dell'azienda.

Il chatbot si integra con un'interfaccia dedicata al #gloss[fornitore], che permette di:

- Gestire i clienti e i documenti contenenti le informazioni di riferimento utilizzate dal modello linguistico per
  generare risposte accurate e personalizzate.
- Personalizzare graficamente la piattaforma tramite l'inserimento del logo aziendale e la selezione di una palette
  colori.

Per garantire la massima compatibilità e facilità d'uso, il chatbot è accessibile tramite un'interfaccia web, che può
essere utilizzata su qualsiasi dispositivo con un browser. I linguaggi principali usati nella webapp sono #gloss[HTML], #gloss[CSS], #gloss[JavaScript] e
#gloss[Python], linguaggi ampiamente supportati da molti dispositivi.

== Scopo del documento
Lo scopo del documento è fornire una panoramica dettagliata delle scelte progettuali e tecniche adottate per lo sviluppo
del sistema. Qui verranno forniti i diagrammi UML delle classi e le scelte architetturali, oltre a una descrizione delle
tecnologie utilizzate e delle API implementate.// Indicare come si colloca nel contesto del progetto.

== Glossario
Per facilitare la comprensione di questo documento, viene fornito un glossario che chiarisce il significato dei termini
specifici utilizzati nel contesto del progetto. Ogni termine di glossario è contrassegnato con un asterisco "\*" in
apice e collegato direttamente alla pagina web del glossario, permettendo così di accedere immediatamente alla
definizione completa del termine. Le definizioni sono disponibili nel documento: #link("https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf")[Glossario.pdf];\
e nella seguente pagina web: #link("https://codehex16.github.io/glossario").

== Riferimenti

//IMPORTANTE: i link dei documenti nostri reindirizzano sulla versione RTB, qui li ho aggiornati con PB nel link, ma potrebbero comunque non andare anche dopo il fix

== Riferimenti normativi
- Capitolato C7 - Assistente Virtuale Ergon:\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")\ _(ultima consultazione: 03-03-2025)_; //da tenere aggiornato

- Regolamento del progetto didattico:\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")\

- Norme di progetto:\ #link("https://codehex16.github.io/docs/2%20-%20PB/Norme-di-Progetto.pdf")\ _(versione 1.0.0)_;

== Riferimenti informativi
- Analisi dei requisiti:\ #link("https://codehex16.github.io/docs/2%20-%20PB/Analisi-dei-Requisiti.pdf")\ _(versione 1.0.0)_;

- Diagrammi delle classi (UML):\ #link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf");\

- Slide sui pattern architetturali del prof. Cardin:\ 
  - introduzione ai pattern:\ #link("https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf");
  - pattern creazionali:\ #link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Creazionali.pdf")
  - pattern strutturali:\ #link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Strutturali.pdf")\
  - pattern comportamentali:\ #link("https://drive.google.com/file/d/1cpi6rORMxFtC91nI6_sPrG1Xn-28z8eI/view?usp=sharing")\
  - pattern Model View Controller:\ #link("https://www.math.unipd.it/~rcardin/sweb/2022/L02.pdf")\

= Tecnologie

In questa sezione vengono descritte le tecnologie utilizzate per lo sviluppo del sistema, suddivise in base alla loro
funzione e al loro ambito di applicazione. Ogni tecnologia è accompagnata da una breve descrizione e dalle motivazioni
che hanno portato alla sua scelta.

== Tecnologie per la codifica

=== Linguaggi
//Versioni prese dalle repo github delle tecnologie
#show figure: set block(breakable: true)
#figure(
  caption: "Linguaggi utilizzati",
  table(
    columns: (0.3fr, 1fr, 0.3fr),
    inset: 8pt,
    align: (x, y) => if (y > 0) { left } else { center + horizon },
    fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
    table.header([*Linguaggio*], [*Motivazione*], [*Versione*]),
    "HTML",
    "Utilizzato per la creazione della struttura e del contenuto delle pagine web. È il linguaggio di markup standard per la creazione di pagine web.",
    "5",
    "CSS",
    "Utilizzato per la formattazione e lo stile delle pagine web. Permette di separare il contenuto dalla presentazione, migliorando la manutenibilità del codice.",
    "3",
    "JavaScript",
    "Utilizzato per la creazione di interazioni dinamiche e reattive nelle pagine web.",
    "ECMAScript 2024",
    "Python",
    "Scelto per la sua versatilità e facilità d'uso, è il linguaggio principale per lo sviluppo del back-end. Anche se presenta delle performance minori rispetto ad altri linguaggi come C++ o C, è più supportato per gli LLM e dagli altri componenti utilizzati.",
    "3.11.4",
    "TypeScript",
    "Scelto per la sua tipizzazione statica, migliora la qualità del codice e facilita la manutenzione. È utilizzato in combinazione con Svelte per lo sviluppo del front-end.",
    "5.8.3",
  ),
)
=== Framework e librerie
#figure(
  caption: "Framework e librerie utilizzati",
  table(
    columns: (0.3fr, 1fr, 0.3fr),
    inset: 8pt,
    align: (x, y) => if (y > 0) { left } else { center + horizon },
    fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
    table.header([*Linguaggio*], [*Motivazione*], [*Versione*]),
    "Svelte",
    "Scelto per la sua semplicità e leggerezza, è il framework principale per lo sviluppo del front-end. Permette di creare interfacce utente più reattive con un codice più semplice rispetto ad altri framework come React o Angular.",
    "5.25.10",
    "FastAPI",
    "Framework scelto per la sua facilità nell'implementazione di API REST. È utilizzato per il back-end per far comunicare tra loro i componenti software",
    "0.115.12",
    "LangChain",
    "Libreria scelta per l'integrazione tra modelli AI e database, permette di gestire query sui documenti e migliorare la qualità delle risposte",
    "0.9.71", //https://changelog.langchain.com/
  ),
)
=== Strumenti e servizi

#figure(
  caption: "Strumenti e servizi utilizzati",
  table(
    columns: (0.3fr, 1fr, 0.4fr),
    inset: 8pt,
    align: (x, y) => if (y > 0) { left } else { center + horizon },
    fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
    table.header([*Linguaggio*], [*Motivazione*], [*Versione*]),
    "Git",
    "Utilizzato per il versionamento del codice sorgente, permette di tenere traccia delle modifiche e collaborare con altri membri del team",
    "2.49.0",
    "GPT-4o-mini",
    "Il modello utilizzato per il chatbot, scelto in base al prezzo e qualità delle risposte",
    "-",
    "Docker",
    "Utilizzato per suddividere ed eseguire in container l’intera applicazione, rendendola facilmente distribuibile e scalabile in diversi ambienti",
    "0.21.0 Build\n28.0.4 Engine\n4.40.0 Desktop\n2.34.0 Compose",
    "MongoDB",
    "Database NoSQL utilizzato per memorizzare documenti, cronologia delle conversazioni e utenti. Scelto perché rende più facile e diretto memorizzare i file come formato json",
    "8.0",
    "ChromaDB",
    "Database vettoriale per memorizzare e recuperare embedding dei documenti, consentendo ricerche semantiche rapide per fornire risposte contestuali. Scelto per la sua velocità e facilità d'uso, è in grado di gestire grandi volumi di dati e query complesse.",
    "1.0.4",
  ),
)

== Tecnologie per il testing
#figure(
  caption: "Tecnologie per il testing utilizzate",
  table(
    columns: (0.3fr, 1fr, 0.4fr),
    inset: 8pt,
    align: (x, y) => if (y > 0) { left } else { center + horizon },
    fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
    table.header([*Linguaggio*], [*Motivazione*], [*Versione*]),
    "Github Actions",
    "Utilizzato per l'integrazione continua e il testing automatico del codice. Permette di eseguire test e controlli di qualità ogni volta che viene effettuata una modifica al codice sorgente o prima di un merge con un altro branch",
    "-",
    "Pytest",
    "Utilizzato per il testing del codice Python, permette di scrivere test in modo semplice e intuitivo. È stato scelto per la sua facilità d'uso e per la sua integrazione con FastAPI",
    "8.3.5",
  ),
)
// ......
// Indicare strumenti e librerie impiegati per le attività di testing e analisi del codice.

= API

== Endpoint di autenticazione
// Descrivere endpoint come login/logout, specificando metodi, parametri e formati.

== Endpoint di chat
// Presentare endpoint relativi all’interazione con il #gloss[chatbot] (creazione, invio messaggi, #gloss[FAQ]).

== Endpoint di gestione documenti
// Esporre endpoint per upload, visualizzazione ed eliminazione documenti.

== Altri endpoint
// Inserire eventuali endpoint aggiuntivi.

== Errori e codici di ritorno
// Tabella riassuntiva dei codici di stato HTTP e dei relativi significati.


= Architettura Front-end

Per il front-end sono stati utilizzati #gloss[Svelte] e TypeScript. Svelte è un #gloss[framework] #gloss[JavaScript] che
consente di creare interfacce utente reattive e performanti, mentre #gloss[TypeScript] è un #gloss[superset] di
JavaScript che aggiunge tipizzazione statica al linguaggio, migliorando la qualità del codice e facilitando la
manutenzione.

== Architettura di una pagina della webapp

Ogni pagina della webapp è composta da un file Svelte '_page.svelte_', e da un file Typescript '_page.server.ts_'.
Questa struttura segue il pattern #gloss[Model-View-Controller] (MVC), in cui il file Svelte rappresenta la 'view',
mentre il file TypeScript rappresenta il 'controller', il 'model' invece sono i dati che vengono ricevuti dal back-end
tramite le API.

=== File Svelte

Il file Svelte contiene il markup HTML e il CSS per la pagina. Utilizza le funzionalità di Svelte e prende le varie
librerie create sempre dal gruppo. Queste librerie contengono vari componenti di una pagina web, come la diversi
pulsanti, la barra di navigazione, layout dei messaggi e chat... Inoltre, sfrutta le funzionalità di reattività di
Svelte per aggiornare automaticamente l'interfaccia utente in base ai cambiamenti dello stato. In un certo senso, tutti
i file Svelte sono strutturati tramite il pattern 'composite', in quanto sono composti da più componenti che possono
essere riutilizzati in altre pagine.

=== File Typescript
Il file TypeScript contiene la logica di business per la pagina. Gestisce le chiamate API al back-end, elabora i dati
ricevuti e li passa al file Svelte per la visualizzazione. Inoltre, gestisce gli eventi dell'interfaccia utente, come i
click sui pulsanti e l'invio dei messaggi. In questo modo, il file TypeScript funge da intermediario tra il front-end e
il back-end, seguendo il pattern 'controller' del MVC.\
Ogni file svelte presenta una funzione _load_, che viene eseguita quando la pagina viene caricata.\
\
Nelle sezioni successive, verrà descritto solo il file TypeScript, in quanto il file Svelte non presenta logiche
particolari, ma solo markup HTML e CSS.

== Pagina di login
/Suppl-AI/src/routes/login\
La pagina di login è la prima pagina che l'utente vede quando accede alla webapp. Consente agli utenti di inserire le
proprie credenziali (email e password) per accedere alla piattaforma.\
Presenta una variabile costante:
- API_URL: contiene l'URL dell'API del database.\
Presenta due funzioni:
- _load_: controlla se l'utente è già autenticato tramite un token #gloss[cookie]. Se questo token esiste, reindirizza
  l'utente alla pagina principale.
- _actions_: viene eseguita quando l'utente invia il modulo di login. Prende lo username e password inseriti, e li manda
  attraverso una richiesta POST alla API per l'autenticazione. In caso di successo, reindirizza l'utente alla pagina
  principale. In caso di errore, mostra un messaggio di errore all'utente. Il cookie che mantiene l'accesso dura fino a 1
  settimana, finita la quale l'utente dovrà reinserire le credenziali.

== Homepage
/Suppl-AI/src/routes\
La homepage è la pagina principale della webapp. Consente agli utenti di visualizzare le chat disponibili e di crearne
di nuove. Presenta una barra di navigazione per accedere ad altre funzionalità della piattaforma, come la lista delle
chat o le informazioni del profilo.\
Presenta una variabile costante:
- API_URL: contiene l'URL dell'API del database.\
Presenta una funzione:
- _load_: controlla se l'utente è autenticato tramite un token cookie. Se questo token esiste, reindirizza l'utente alla
  pagina di login. Inoltre, carica le chat disponibili per l'utente autenticato e le mostra nella homepage. Ritorna il
  token dell'utente e la lista delle chat.
//da aggiungere o modificare i casi per il fornitore

== Pagina account utente
/Suppl-AI/src/routes/profilo\

== Pagina chat
- Percorso: /Suppl-AI/src/routes/chat\

= Architettura logica

// Descrivere la suddivisione in moduli e livelli logici del sistema.

= Architettura di deployment
// Indicare come il sistema viene distribuito (es. Docker, monolite, microservizi).

= Design pattern utilizzati
// Specificare i pattern impiegati e le motivazioni dietro le scelte.

= Diagramma delle classi
// Inserire diagramma #gloss[UML] con le principali classi e relazioni.

= Database
// Illustrare le scelte relative al database (es. MongoDB, Chroma), schema dei dati, e gestione allegati/FAQ.

= Requisiti funzionali
Di seguito è riportata la tabella con i requisiti funzionali che erano stati stesi nel documento _Analisi dei requisiti_.
Si ricorda che i requisiti sono stati divisi in due categorie in base alla lettera con cui finisce il codice del
requisito:
- O: obbligatori
- D: desiderabili

== Tracciamento 

#show figure: set block(breakable: true)
#figure(
  caption: [Requisiti di funzionalità],
  table(
    columns: (1fr, 2fr, 1fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*ID Requisito*], [*Descrizione*], [*Stato*]),
    // login
    "R-01-F-O",
    "L'utente deve poter accedere alla piattaforma",
    "Soddisfatto",
    // primo login fornitore
    "R-02-F-O",
    "Nel caso in cui il fornitore acceda per la prima volta alla piattaforma, deve aggiornare la password",
    "",
    // primo login cliente
    "R-03-F-O",
    "Nel caso in cui il cliente acceda per la prima volta alla piattaforma, deve aggiornare la password",
    "",
    // modifica password
    "R-04-F-O",
    "Sia utente che fornitore devono poter cambiare la password liberamente",
    "",
    // resta connesso
    "R-05-F-D",
    "L'utente non autenticato deve poter scegliere se reinserire le credenziali ad ogni accesso o se farle memorizzare alla piattaforma anche dopo il termine della sessione",
    "",
    // recupero password
    "R-06-F-O",
    "L'utente non autenticato deve poter recuperare la password nel caso in cui la dimentichi",
    "",
    // errore email
    "R-07-F-O",
    "L'utente non autenticato deve essere notificato in caso di errore nell'inserimento dell'e-mail",
    "",
    // errore password
    "R-08-F-O",
    "L'utente non autenticato deve essere notificato in caso di errore nell'inserimento della password o nel caso in cui la password scelta non rispetti il formato richiesto",
    "",
    // logout
    "R-09-F-O",
    "Sia cliente che fornitore devono avere la possibilità di uscire dal proprio account",
    "",
    // visualizzazione lista chat
    "R-10-F-O",
    "Sia cliente che fornitore devono avere la possibilità di vedere la lista di tutte le chat in loro possesso",
    "",
    // creazione nuova chat
    "R-11-F-O",
    "Sia cliente che fornitore devono avere la possibilità di creare una nuova chat con un contesto pulito, che verrà aggiunta alla lista di quelle già presenti",
    "",
    // modifica titolo di una chat
    "R-12-F-D",
    "Sia cliente che fornitore devono avere la possibilità di modificare il titolo di una chat già esistente",
    "",
    // apertura chat singola
    "R-13-F-O",
    "Sia cliente che fornitore devono avere la possibilità di aprire una chat singola dalla lista di tutte le chat in loro possesso",
    "",
    // scrittura messaggio
    "R-14-F-O",
    "Sia cliente che fornitore devono poter scrivere messaggi per comunicare con il chatbot",
    "",
    // scrittura messaggio troppo lungo
    "R-15-F-O",
    "L'utente che digita il messaggio deve essere avvisato nel caso in cui il messaggio scritto sia troppo lungo",
    "",
    // scrittura messaggio tramite FAQ
    "R-16-F-O",
    "Sia cliente che fornitore devono avere la possibilità di scrivere messaggi tramite FAQ preimpostate dal fornitore; se possibile il chatbot suggerirà delle FAQ utili in base al contesto",
    "",
    // invio messaggio
    "R-17-F-O",
    "Sia cliente che fornitore per comunicare con il chatbot devono poter trasmettere il messaggio scritto",
    "",
    // ricezione risposta
    "R-18-F-O",
    "Sia cliente che fornitore devono ricevere la risposta elaborata dal chatbot in seguito all'invio di un messaggio; durante l'elaborazione della risposta l'utente deve ricevere un feedback che indica l'elaborazione della risposta",
    "",
    // valutazione risposta
    "R-19-F-O",
    "Il cliente deve avere la possibilità di valutare la risposta ricevuta dal chatbot tramite l'opzione 'Pollice su/giù'",
    "",
    // eliminazione chat
    "R-20-F-O",
    "Sia cliente che fornitore devono avere la possibilità di eliminare una chat presente nella lista di tutte le chat",
    "",
    // dark/light mode
    "R-21-F-D",
    "L'utente deve avere la possibilità di scegliere tra tema scuro e tema chiaro dell'interfaccia",
    "",
    // modifica durata storico chat
    "R-22-F-O",
    "Il fornitore deve avere la possibilità di modificare la durata dello storico delle chat, ovvero il periodo di tempo massimo per cui vengono memorizzati e tenuti come contesto i messaggi per ogni chat",
    "",
    // caricare logo
    "R-23-F-D",
    "Il fornitore deve avere la possibilità di caricare il proprio logo per personalizzare la propria piattaforma fornita ai clienti",
    "",
    // palette colori
    "R-24-F-D",
    "Il fornitore deve avere la possibilità di cambiare i colori principali dell'interfaccia della propria piattaforma",
    "",
    // statistiche domanda risposta
    "R-25-F-D",
    "Il fornitore deve avere la possibilità di visualizzare le statistiche relative alle interazioni con il chatbot",
    "",
    // filtri visualizzazione
    "R-26-F-D",
    "Il fornitore deve avere la possibilità di filtrare le statistiche visualizzate",
    "",
    // aggiunta account cliente
    "R-27-F-O",
    "Il fornitore deve avere la possibilità di aggiungere gli account per i propri clienti",
    "",
    // inserimento account già esistente
    "R-28-F-O",
    "Il fornitore deve essere avvisato nel caso in cui stia aggiungendo un account cliente già esistente",
    "",
    // eliminazione account cliente
    "R-29-F-O",
    "Il fornitore deve avere la possibilità di eliminare un account cliente solo dopo aver autorizzato l'eliminazione tramite la propria password",
    "",
    // inserimento documenti aziendali
    "R-30-F-O",
    "Il fornitore deve avere la possibilità di inserire documenti aziendali in modo da fornire ulteriore contesto all'chatbot",
    "",
    // formato file non valido
    "R-31-F-O",
    "Il fornitore deve sapere quando un file caricato, sia come logo che come documento aziendale, non sia nel formato corretto",
    "",
    // visualizzazione documenti aziendali
    "R-32-F-O",
    "Il fornitore deve avere la possibilità di visualizzare la lista dei documenti aziendali caricati nella piattaforma",
    "",
    // eliminazione documento aziendale
    "R-33-F-O",
    "Il fornitore deve avere la possibilità di eliminare un documento aziendale dalla piattaforma solo dopo aver autorizzato l'eliminazione tramite la propria password",
    "",
    // aggiunta FAQ
    "R-34-F-O",
    "Il fornitore deve avere la possibilità di aggiungere delle domande preimpostate nella piattaforma",
    "",
    // visualizzazione FAQ
    "R-35-F-O",
    "Il fornitore deve avere la possibilità di visualizzare la lista delle domande preimpostate inserite nella piattaforma",
    "",
    // modifica FAQ
    "R-36-F-O",
    "Il fornitore deve avere la possibilità di modificare le domande preimpostate già inserite nella piattaforma",
    "",
    // eliminazione FAQ
    "R-37-F-O",
    "Il fornitore deve avere la possibilità di eliminare le domande preimpostate dalla piattaforma solo dopo aver autorizzato l'eliminazione tramite la propria password",
    "",
    // sistema non raggiungibile
    "R-38-F-O",
    "Un utente non autenticato o il cliente che sta utilizzando la piattaforma deve essere avvisato nel caso in cui il sistema non sia raggiungibile, possibilmente specificando il motivo del malfunzionamento",
    "",
    // invio richiesta con dati mancanti o errati
    "R-39-F-O",
    "Un utente non autenticato o il cliente che sta utilizzando la piattaforma deve essere avvisato nel caso in cui la richiesta che ha inviato contenga dati mancanti o errati; nel caso sia pertinente deve anche essere specificato il problema",
    "",
  ),
)

== Grafico dei requisiti obbligatori soddisfatti

== Grafico dei requisiti desiderabili soddisfatti

= Conclusioni
// Riassumere le scelte progettuali principali e indicare possibili evoluzioni future del sistema.
