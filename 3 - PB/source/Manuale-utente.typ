#import "../../template/documenti.typ": *
#import "../../template/i-figured.typ"

#show: doc => documento(
  titolo: "Manuale utente",
  data: [24/03/2025],
  ruoli: ("Luca Ribon", "Verificatore", "Filippo Sabbadin", "Redattore",),
  sommario: [Manuale utente],
  versioni: ("0.1.0", "24/03/2025", "Filippo Sabbadin", "Prima stesura", ""),
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
- Capitolato C7 - Assistente Virtuale Ergon:\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")\ _(ultima consultazione: 03-03-2025)_; //da tenere aggiornato

- Regolamento del progetto didattico:\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")\

- Norme di progetto:\ #link("https://codehex16.github.io/docs/2%20-%20RTB/Norme-di-Progetto.pdf")\ _(versione 1.0.0)_;

=== Riferimenti informativi
- Sito del gruppo CodeHex16:\ #link("https://codehex16.github.io/")\ _(ultima consultazione: 06-03-2025)_;
//da tenere aggiornato

- Glossario:
  - Documento: #link("https://codehex16.github.io/docs/glossario/glossario.pdf") _(versione 1.0.0)_;
  - Pagina web: #link("https://codehex16.github.io/glossario.html") _(ultima consultazione 06-03-2025)_;

= Requisiti consigliati

In questa sezione vengono elencati i requisiti consigliati per garantire il corretto funzionamento del prodotto. Questi
requisiti non sono necessari, ma sono comunque consigliati visto che il gruppo ha lavorato con essi, ed è in grado di
garantire il corretto funzionamento del prodotto.

== Requisiti di sistema

Alcuni membri del gruppo hanno utilizzato il sistema operativo Windows 11 durante lo sviluppo del progetto, altri invece
utilizzavano Ubuntu/*versione*/, dunque i requisiti di sistema consigliati sono i seguenti:

#figure(table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
  table.header([*Sistema*], [*Versione*]),
  "Windows 11",
  "24H2",
  "Ubuntu",
  "",
), caption: "Requisiti di sistema")

== Requisiti hardware
Per hardware si intendono le componenti della macchina dove verrà utilizzato il prodotto. I requisiti consigliati sono i
seguenti:
#figure(table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
  table.header([*Hardware*], [*Requisito*]),
  "Processore",
  "Quad-core 2.38GHz",
  "Memoria primaria",
  "2GB DDR4",
  "Memoria secondaria",
  // TODO: da verificare quando sapremo cosa salveremo in locale
  "500MB",
  "Connessione internet",
  // TODO: da verificare
  "5mbps",
), caption: "Requisiti hardware")

== Requisiti software

Visto che il gruppo sta sviluppando una webapp, per software si intende un browser web. I browser e le loro versioni
consigliate sono quelle utilizzate dal gruppo all'inizio dello sviluppo del progetto:
#figure(table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(190) } else if (y == 2 or y == 4) { luma(230) },
  table.header([*Browser*], [*Versione*]),
  "Mozilla Firefox",
  "136.0.2 (64-bit)",
  "Google Chrome",
  "134.0.6998.165 (Build ufficiale) (64 bit)",
), caption: "Requisiti software")

= Installazione

////////////////////////////

= Utente
Un utente è un cliente che utilizza l'applicazione per comunicare con il chatbot. Può essere un privato o un'azienda. Un
utente può registrarsi e accedere all'applicazione per utilizzare le funzionalità offerte dal chatbot.

== Login
//Immagine della sezione login
Se l'utente ha già un account, può accedere all'applicazione inserendo il proprio indirizzo e-mail e la password. In
caso contrario, deve richiedere l'accesso al fornitore dell'applicazione. Una volta effettuato l'accesso, l'utente può
utilizzare tutte le funzionalità del chatbot.

=== Primo Login
Per accedere per la prima volta alla piattaforma, l'utente deve richiedere il permesso al fornitore proprietario
dell'applicazione, il quale gli fornisce una password temporanea. L'utente inserisce il suo indirizzo e-mail e la
password temporanea fornitegli dal fornitore. Successivamente provvederà a cambiare la password temporanea con una
password personale.

== Interfaccia principale
//Immagine della schermata principale dell'applicazione
Appena entrato nell'applicazione, l'utente si trova di fronte alla schermata principale. Qui può visualizzare la lista
delle chat con il chatbot, etc...//Qui ci sono le schermate principali dell'applicazione appena si entra, tipo la lista delle chat etc...

=== Lista chat
//Immagine della lista chat
La lista chat mostra tutte le conversazioni precedenti con il chatbot. L'utente può selezionare una chat per
visualizzarne il contenuto. Ogni chat è identificata da un titolo che viene generato automaticamente in base al contesto
della conversazione. L'utente può anche eliminare le chat precedenti se non sono più necessarie.

== Impostazioni profilo
//Immagine della schermata delle impostazioni del profilo
Premendo sull'icona del profilo, l'utente può accedere alle impostazioni del proprio profilo. Qui può modificare le
informazioni personali, come il nome, l'indirizzo e-mail e la password.//da modificare

=== Cambio password
//Immagine della schermata di cambio password
L'utente può cambiare la password cliccando il bottone raffigurato nella sezione delle impostazioni del profilo. Deve
inserire la password nuova e riscriverla nuovamente per essere sicuro che non presenti errori. Inoltre dovrà inserire la
password attuale per confermare il cambio. Se la password attuale non è corretta, o la password nuova nuova non è stata
riscritta correttamente, il cambio non andrà a buon fine.

= Fornitore
Il fornitore è l'azienda che possiede una sua versione dell'applicazione e la gestisce. Ha accesso a tutte le
funzionalità dell'applicazione e può configurarla in base alle proprie esigenze aziendali. Inoltre, il fornitore può
monitorare l'utilizzo dell'applicazione da parte degli utenti e gestire i contenuti disponibili.

== Login
Il fornitore può accedere all'applicazione utilizzando le proprie credenziali, e-mail e password. Una volta effettuato
il login, ha accesso a tutte le funzionalità amministrative dell'applicazione.

=== Primo Login
Durante il primo accesso, il fornitore utilizza una password temporanea fornita dall'azienda Ergon. Dopo aver effettuato
l'accesso, sarà richiesto di cambiare la password temporanea con una personale per motivi di sicurezza.

== Interfaccia principale
//Immagine della schermata principale del fornitore (se cambia)
Dopo aver effettuato il login, il fornitore viene reindirizzato alla homepage principale dell'applicazione. Qui può
svolgere tutte le funzionalità che un utente generico può svolgere, ma ha anche accesso a funzionalità aggiuntive che
gli consentono di gestire l'applicazione e i contenuti disponibili per gli utenti.


=== Gestire i documenti aziendali
//Immagine della schermata di gestione dei documenti aziendali
Il fornitore può caricare documenti aziendali che saranno usati dal chatbot per prendere informazioni durante la
conversazioni con gli utenti. Il formato di questi file può essere ".pdf", ".docx" o ".txt". Il fornitore può anche
visualizzare i documenti già caricati ed eliminarli nel caso diventino obsoleti o non più necessari.//da aggiungere delle linee guida

=== Gestione profili utente
//Immagine della schermata di gestione dei profili utente
Il fornitore può creare o eliminare i profili utente. Alla crezione di un account dovrà anche assegnargli una password
temporanea.

=== Modificare le FAQ
//Immagine della schermata di modifica delle FAQ
Durante le conversazioni con gli utenti, verranno suggerite delle domande all'utente in base al contesto della
conversazione. Il fornitore può aggiungere, modificare o eliminare alcune di queste domande.

=== Lista chat
Esattamente come un cliente, anche il fornitore può visualizzare la lista delle chat. La lista chat mostra tutte le
conversazioni precedenti con il chatbot. Si può selezionare una chat per visualizzarne il contenuto. Ogni chat è
identificata da un titolo che viene generato automaticamente in base al contesto della conversazione. Una chat può anche
essere eliminata.

// da qui in poi inizia a diventare più vago quindi per il momento lascio vuoto
== Impostazioni profilo
Il fornitore può accedere alle impostazioni del proprio profilo per aggiornare le informazioni personali, come il nome,
l'indirizzo e-mail e la password.

== Interfaccia principale

=== Homepage principale

//Qui ci sono le schermate principali dell'applicazione appena si entra, tipo la lista delle chat, caricare i documenti, creare profili utente, etc...

=== Gestire i documenti aziendali

=== Gestione profili utente

=== Modificare le FAQ

=== Lista chat

/////////////////
== Impostazioni profilo

= Temi dell'applicazione
// dark/light mode
L'applicazione offre la possibilità di scegliere tra due temi: chiaro e scuro. L'utente può selezionare il tema
preferito nella sezione delle impostazioni. Il tema scelto verrà applicato a tutte le schermate dell'applicazione,
possibilmente migliorandone l'accessibilità, leggibilità e ridurre lo stress visivo.