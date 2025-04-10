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

//IMPORTANTE: i link dei documenti reindirizzano sulla versione RTB, qui li ho aggiornati con PB nel link, ma potrebbero comunque non andare anche dopo il fix

== Riferimenti normativi
- Capitolato C7 - Assistente Virtuale Ergon:\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")\ _(ultima consultazione: 03-03-2025)_; //da tenere aggiornato

- Regolamento del progetto didattico:\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")\

- Norme di progetto:\ #link("https://codehex16.github.io/docs/2%20-%20PB/Norme-di-Progetto.pdf")\ _(versione 1.0.0)_;

== Riferimenti informativi
- Analisi dei requisiti:\ #link("https://codehex16.github.io/docs/2%20-%20PB/Analisi-dei-Requisiti.pdf")\ _(versione 1.0.0)_;

- Diagrammi delle classi (UML):\ #link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf");\

- Slide sui pattern architetturali del prof. Cardin:\ 
  - introduzione ai pattern: #link("https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf");
  - pattern creazionali: #link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Creazionali.pdf")
  - pattern strutturali: #link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Strutturali.pdf")\
  - pattern comportamentali: #link("https://drive.google.com/file/d/1cpi6rORMxFtC91nI6_sPrG1Xn-28z8eI/view?usp=sharing")\
  - pattern Model View Controller: #link("https://www.math.unipd.it/~rcardin/sweb/2022/L02.pdf")\

= Tecnologie

In questa sezione vengono descritte le tecnologie utilizzate per lo sviluppo del sistema, suddivise in base alla loro
funzione e al loro ambito di applicazione. Ogni tecnologia è accompagnata da una breve descrizione e dalle motivazioni
che hanno portato alla sua scelta.

== Tecnologie per la codifica

=== Linguaggi
- Python: scelto per la sua versatilità e facilità d'uso, è il linguaggio principale per lo sviluppo del back-end. Anche
  se presenta delle performance minori rispetto ad altri linguaggi come C++ o C#, è più supportato per gli LLM e dagli
  altri componenti utilizzati.
- Svelte: scelto per la sua semplicità e leggerezza, è il framework principale per lo sviluppo del front-end. Permette di
  creare interfacce utente più reattive con un codice più semplice rispetto ad altri framework come React o Angular.
- TypeScript: 
=== Framework e librerie

=== Strumenti e servizi
- Git: utilizzato per il versionamento del codice sorgente, permette di tenere traccia delle modifiche e collaborare con
  altri membri del team.

// Elencare linguaggi, framework e librerie utilizzati, con motivazione della scelta.

== Tecnologie per il testing
- Github Actions
- Pytest
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

= Architettura

== Architettura Front-end

// Descrivere l’architettura del front-end, evidenziando le tecnologie e i framework utilizzati.

== Architettura logica
// Descrivere la suddivisione in moduli e livelli logici del sistema.

== Architettura di deployment
// Indicare come il sistema viene distribuito (es. Docker, monolite, microservizi).

== Design pattern utilizzati
// Specificare i pattern impiegati e le motivazioni dietro le scelte.

== Diagramma delle classi
// Inserire diagramma #gloss[UML] con le principali classi e relazioni.

= Database
// Illustrare le scelte relative al database (es. MongoDB, Chroma), schema dei dati, e gestione allegati/FAQ.

= Stato dei requisiti funzionali


// Eventuale grafico percentuale di requisiti soddisfatti

= Conclusioni
// Riassumere le scelte progettuali principali e indicare possibili evoluzioni future del sistema.
