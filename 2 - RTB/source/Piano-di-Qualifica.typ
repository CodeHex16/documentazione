#import "../../template/documenti.typ": *
#import "../../template/i-figured.typ"

#show: doc => documento(titolo: "Piano di Qualifica", data: [03/01/2024], ruoli: (
  "Matteo Bazzan",
  "Redattore",
  "Luca Ribon",
  "Verficatore",
  "Francesco Fragonas",
  "",
  "Gabriele Magnelli",
  "",
  "Filippo Sabbadin",
  "Redattore",
  "Luca Rossi",
  "",
  "Yi Hao Zhuo",
  "Verificatore",
), sommario: [Piano di qualifica], versioni: (
  "0.3.0",
  "27/02/2025",
  "",
  "Aggiunte sezioni cruscotto e automiglioramenti",
  "",
  "0.2.0",
  "05/02/2025",
  "Matteo Bazzan",
  "Aggiunta metriche di qualità",
  "Luca Ribon",
  "0.1.0",
  "08/01/2024",
  "Filippo Sabbadin",
  "Prima stesura",
  "Yi Hao Zhuo",
), doc)

// spaciugo per aggiungere l'indice delle immagini
#set page(numbering: "I")
#counter(page).update(3)
#show heading: i-figured.reset-counters.with(level: 0)
#show figure: i-figured.show-figure.with(level: 0)
#i-figured.outline(title: "Lista di immagini")
#i-figured.outline(target-kind: table, title: [Lista di tabelle])
#set math.equation(numbering: "(1)")
#outline(target: math.equation, title: [Lista di equazioni])
#pagebreak()
#set page(numbering: "1")
#counter(page).update(1)

= Introduzione e scopo
== Scopo del documento
In questo documento vengono dichiarate tutte le metriche che il gruppo #gloss[CodeHex16] userà per misurare la #gloss[qualità] del
prodotto e dei processi usati per la realizzazione del progetto.

== Glossario
Per facilitare la comprensione di questo documento, viene fornito un glossario che chiarisce il significato dei termini
specifici utilizzati nel contesto del progetto. Ogni termine di glossario è contrassegnato con un asterisco "\*" in
apice e collegato direttamente alla pagina web del glossario, permettendo così di accedere immediatamente alla
definizione completa del termine.\
Le definizioni sono disponibili nel documento
#link("https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf")[Glossario.pdf]
e nella seguente pagina web:
#link("https://codehex16.github.io/glossario.html")

== Versioni e maturità
Data la natura evolutiva del documento, questa versione potrebbe non rappresentare la versione finale. Il documento
continuerà a subire modifiche per garantire una maggiore correttezza e chiarezza nel testo per facilitare la
comprensione e lettura.

== Riferimenti
=== Riferimenti normativi
- Capitolato C7 - #gloss[LLM] : #gloss[Assistente Virtuale]
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")

- #gloss[Norme di Progetto]
=== Riferimenti informativi
- Slide T08 - Qualità di processo
#link("https://codehex16.github.io/resources/slides/T8.pdf")

- Slide T09 - Verifica e validazione: introduzione
#link("https://codehex16.github.io/resources/slides/T9.pdf")

- Verifica e validazione:
  - ISO/IEC 9126:2001 SWE Product Quality;
  - ISO/IEC 14598:1999 SW Product Evaluation;
  - ISO/IEC 25000:2005 SQuaRE: Systems and software Quality;
  - ISO/IEC 25010:2011 Quality model;
  - ISO/IEC 25020:2019 Quality measurement framework;
  - ISO/IEC 25030:2007 Quality requirements;
  - ISO/IEC 25040:2011 Quality evaluation;
  - ISO 9000:2015 (fondamenti e glossario);
  - ISO 9001:2015 (sistema qualità - requisiti);
    - ISO/IEC/IEEE 90003:2018 (versione applicata ai prodotti SW)
  - ISO 9004:2018 (qualità organizzativa - autovalutazione)
  - ISO/IEC 33020:2019.

= Metriche di qualità

== Qualità di processo

=== Fornitura
Per il processo di fornitura vengono indicate tutte le scelte operative fatte in fase di sviluppo. L'acronimo usato
prima dei nomi è MPC: Minimum Predictive Capability. Questa metrica viene usata in Machine Learning per misurare la
capacità di un modello di generare previsioni precise. Nel nostro caso, l'MPC è il valore minimo da raggiungere per
essere considerato accettabile.\

- *CC - Completion Cost*: costo finale raggiunto alla fine del progetto. Idealmente non deve superare quello stimato
  durante le fasi iniziali.
- *EC - Estimated Cost*: costo stimato calcolando le ore necessarie per lo sviluppo del progetto.

#figure(caption: [Valori per misurare la qualità della fornitura], table(
  columns: (0.8fr, 2fr, 1.2fr, 1.2fr),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPC-CC",
  "Completion Cost",
  "\u{2264}105% EC",
  "\u{2264}100% EC",
))\

=== Sviluppo

- *RS - Requirements Stability Index*: indice di stabilità dei requisiti. Indica la percentuale di requisiti che sono
  stati modificati rispetto al totale dei requisiti. Un valore alto indica che i requisiti sono stabili e non soggetti a
  modifiche frequenti.
- *TD - Technical Debt Ratio*: rapporto tra il tempo necessario per risolvere i problemi tecnici e il tempo necessario per
  sviluppare nuove funzionalità. Un valore basso indica che il codice è ben strutturato e non presenta problemi tecnici.


#figure(caption: [Valori per misurare la qualità dello sviluppo], table(
  columns: (auto, auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPC-RS",
  "Requirements Stability Index",
  "\u{2265}80%",
  "100%",
  "MPC-TD",
  "Technical Debt Ratio",
  "\u{2264}15%",
  "\u{2264}5%",
))\

=== Documentazione
- *IG - Indice di Gulpease*
Indica la complessità nella lettura di una frase o documento. Considera come variabili il numero di parole, di frasi e
di lettere.\
Formula dell'indice di Gulpease:\
$ 89+((300*"numero di frasi") - (10*"numero di lettere")) / "numero di parole" $ <Gulpease>\
- *CO - Correttezza ortografica*
Indica il numero di errori ortografici presenti nella documentazione.
#figure(caption: [Valori per misurare la qualità della documentazione], table(
  columns: (auto, auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPC-IG",
  "Indice di Gulpease",
  "\u{2265}40",
  "\u{2265}60",
  "MPC-CO",
  "Correttezza ortografica",
  "0",
  "0",
))\

=== Verifica
- *Code coverage*
Quantità di codice eseguito durante un test.\
Viene utilizzato per valutare la qualità dei test e garantire che il codice sia stato adeguatamente testato. Un alto
livello indica che il codice è stato eseguito in molti contesti e scenari diversi con diverse parti di codice.\
In altre parole, indica quanto codice è stato sottoposto ai test.\
- *Test superati in percentuale*\
Indica la proporzione di test automatizzati o manuali che sono stati eseguiti con successo rispetto al totale dei test
previsti. Viene espressa come una percentuale e serve a misurare quanto dell'applicazione in fase di sviluppo è stato
verificato con successo tramite i test. Una percentuale alta di test superati indica che il sistema è stabile e che la
maggior parte delle funzionalità funzionano come previsto.\
In altre parole, indica quanti test sono stati superati.\
#figure(caption: [Valori per misurare la qualità del processo di verifica], table(
  columns: (auto, auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPC0000",
  "Code coverage",
  "\u{2265}90%",
  "100%",
  "MPC0000",
  "Test superati in percentuale",
  "100%",
  "100%",
))\
=== Gestione della qualità

== Qualità del prodotto
=== Funzionalità

- *MPD-RO - Copertura requisiti obbligatori*: indica la percentuale di requisiti obbligatori coperti dal prodotto. Un
  valore del 100% indica che tutti i requisiti obbligatori sono stati implementati.

- *MPD-OP - Copertura requisiti opzionali*: indica la percentuale di requisiti opzionali coperti dal prodotto. Un valore
  del 100% indica che tutti i requisiti opzionali sono stati implementati.

#figure(caption: [Valori per misurare la qualità del prodotto in termini di funzionalità], table(
  columns: (auto, auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPD-RO",
  "Copertura requisiti obbligatori",
  "100%",
  "100%",
  "MPD-OP",
  "Copertura requisiti opzionali",
  "\u{2265}50%",
  "100%",
))\

=== Affidabilità

- *MPD-CC - Code coverage*: indica la percentuale di codice coperto dai test. Un valore alto indica che il codice è stato
  testato in modo approfondito e che è meno probabile che contenga errori.

- *MPD-BC - #gloss[Branch] coverage*: sottoinsieme di code coverage, indica la percentuale di rami delle condizioni che
  sono stati eseguiti durante i test. Un valore alto indica che il codice è stato testato in modo approfondito e che è
  meno probabile che contenga errori.

- *MPD-SC - Statement coverage*: sottoinsieme di code coverage, indica la percentuale di istruzioni che sono state
  eseguite durante i test. Un valore alto indica che il codice è stato testato in modo approfondito e che è meno probabile
  che contenga errori. Viene calcolato con la seguente formula:
$ ("numero di istruzioni eseguite") / ("numero di istruzioni totali nel codice") *100 $

- *MPD-FT - Failure Tolerance*: indica la capacità del prodotto di mantenere un livello di prestazioni accettabile anche
  in caso di guasti o malfunzionamenti. Un valore alto indica che il prodotto è in grado di gestire i guasti senza
  compromettere le funzionalità principali.

- *MPD-FF - Failure Frequency*: indica la frequenza con cui si verificano guasti o malfunzionamenti nel prodotto. Un
  valore basso indica che il prodotto è affidabile e presenta pochi problemi.

- *MPD-MTBF - Mean Time Between Failures*: indica il tempo medio tra un guasto e il successivo. Un valore alto indica che
  il prodotto è affidabile e presenta pochi guasti.

- *MPD-DS - Disponibilità sistema*: indica la percentuale di tempo in cui il sistema è operativo. Un valore alto indica
  che il sistema è affidabile e che è disponibile per l'utente.

#figure(caption: [Valori per misurare la qualità del prodotto in termini di affidabilità], table(
  columns: (auto, auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPD-CC",
  "Code coverage",
  "\u{2265}80%",
  "100%",
  "MPD-BC",
  "Branch coverage",
  "\u{2265}50%",
  "\u{2265}80%",
  "MPD-SC",
  "Statement coverage",
  "\u{2265}60%",
  "\u{2265}80%",
  "MPD-FT",
  "Failure Tolerance",
  "100%",
  "100%",
  "MPD-FF",
  "Failure Frequency",
  "0",
  "0",
  "MPD-MTBF",
  "Mean Time Between Failures",
  "\u{2265}48h",
  "\u{2265}72h",
  "MPD-DS",
  "Disponibilità sistema",
  "\u{2265}90%",
  "\u{2265}99.9%",
))\

=== Usabilità

- *MPD-TA - Tempo di apprendimento*: indica il tempo necessario per un utente base per apprendere come utilizzare il
  prodotto. Un valore basso indica che il prodotto è facile da usare e richiede poco tempo per essere appreso. Viene
  calcolato con sessioni di test con utenti.

- *MPD-EUA - Errori utente/azione*: indica il numero di errori commessi dagli utenti durante l'utilizzo del prodotto. Un
  valore basso indica che il prodotto è intuitivo e facile da usare. Viene calcolato tramite log delle interazioni.

- *MPD-TSR - #gloss[Task] success rate*: indica la percentuale di task completati con successo dagli utenti. Un valore
  alto indica che il prodotto è facile da usare e che gli utenti riescono a completare le azioni richieste. Viene
  calcolato con sessioni di test con utenti.


#figure(caption: [Valori per misurare la qualità del prodotto in termini di usabilità], table(
  columns: (auto, auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPD-TA",
  "Tempo di apprendimento",
  "\u{2264}15 min (utente base)",
  "\u{2264}5 min",
  "MPD-EUA",
  "Errori utente/azione",
  "\u{2264}0.5 errori/azione",
  "0",
  "MPD-TSR",
  "Task success rate",
  "\u{2265}75%",
  "100%",
))\

=== Efficienza

- *MPD-TRA - Tempo risposta #gloss[API]*: tempo di risposta delle API per il 90% delle richieste. Un valore basso indica
  che il sistema risponde velocemente alle richieste degli utenti.

- *MPD-MP - Memoria processo*: indica l'utilizzo della memoria da parte del sistema. Un valore basso indica che il sistema
  utilizza in modo efficiente le risorse disponibili.

- *MPD-CE - Consumo energetico*: indica il consumo energetico del sistema. Un valore basso indica che il sistema consuma
  poca energia.

#figure(caption: [Valori per misurare la qualità del prodotto in termini di efficienza], table(
  columns: (auto, auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPD-TRA",
  "Tempo risposta API",
  "\u{2264}500 ms",
  "\u{2264}200 ms",
  "MPD-MP",
  "Memoria processo",
  "\u{2264}512 MB",
  "\u{2264}256 MB",
  "MPD-CE",
  "Consumo energetico",
  "\u{2264}2% batteria/min",
  "\u{2264}1% batteria/min",
))

=== Manutenibilità

- *MPD-CCL - Complessità ciclomatica*: misura la complessità del codice. Un valore basso indica che il codice è semplice e
  facile da mantenere.

- *MPD-DT - Debito Tecnico*: indica la percentuale di debito tecnico rispetto al codice totale. Un valore basso indica che
  il codice è ben strutturato e non presenta problemi tecnici.

- *MPD-CSD - Code Smell density*: indica il numero di "code smells" (cattive pratiche di codifica) per 100 righe di
  codice. Un valore basso indica che il codice è ben strutturato e non presenta problemi tecnici.

- *MPD-TFB - Tempo fix bug*: tempo medio per risolvere un bug critico. Un valore basso indica che il team è in grado di
  risolvere i bug in modo rapido ed efficiente.


#figure(caption: [Valori per misurare la qualità del prodotto in termini di manutenibilità], table(
  columns: (auto, auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPD-CCL",
  "Complessità ciclomatica",
  "\u{2264}15 per modulo",
  "\u{2264}10",
  "MPD-DT",
  "Debito Tecnico",
  "\u{2264}15%",
  "\u{2264}5%",
  "MPD-CSD",
  "Code Smell density",
  "\u{2264}5 smell/100 righe",
  "0 smell",
  "MPD-TFB",
  "Tempo fix bug",
  "\u{2264}4 ore (critico)",
  "\u{2264}2 ore",
))

=== Sicurezza

- *MPD-AF - Tasso di autenticazione fallita*: percentuale di tentativi di autenticazione falliti. Un valore basso indica
  che il sistema è sicuro e che è difficile per gli utenti non autorizzati accedere al sistema.

- *MPD-CRD - Crittografia dati*: livello di crittografia dei dati sensibili. Un valore alto indica che i dati sono
  protetti e che è difficile per gli utenti non autorizzati accedere ai dati sensibili.


#figure(caption: [Valori per misurare la qualità del prodotto in termini di sicurezza], table(
  columns: (auto, auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPD-AF",
  "Tasso di autenticazione fallita",
  "\u{2264}5%",
  "\u{2264}1%",
  "MPD-CRD",
  "Crittografia dati",
  "100% dati sensibili",
  "100% dati sensibili",
))

= Metodologie di testing
== Tipologie di test
Per garantire la qualità del prodotto, il team CodeHex16 ha deciso di verificare il prodotto attraverso diverse
tipologie di test.


#figure(caption: [Tipologie di test], table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Tipo di test*], [*Scopo*], [*Strumenti*]),
  "Test di Unità",
  "Verificare il corretto funzionamento delle singole componenti",
  "pytest, vitest",
  "Test di Integrazione",
  "Validare l’interazione tra moduli e servizi",
  "Postman",
  "Test di Sistema",
  "Verificare il comportamento end-to-end rispetto ai requisiti funzionali",
  "Playwright",
  "Test di Accettazione",
  "Validare il sistema con il #gloss[committente]/utente finale",
  "Checklist manuali",
))

Ad ogni test è stato attribuito un codice univoco per identificarlo strutturato nel seguente modo: `[TIPO]-XXX`, dove `XXX` è
un numero progressivo.

- Test di Unità: TU-XXX
- Test di Integrazione: TI-XXX
- Test di Sistema: TS-XXX
- Test di Accettazione: TA-XXX

Per ogni test viene specificato lo *stato* di completamento, che può essere:
- Superato
- Pianificato
- Fallito
- Non implementato

=== Test di Unità
I test di unità sono utilizzati per verificare il corretto funzionamento delle singole componenti del software. Vengono
scritti dai programmatori e sono eseguiti in modo automatico. Gli strumenti utilizzati per i test di unità sono `pytest` e `vitest`.

Esempi applicati al progetto:

#figure(caption: [Esempi di unit test], table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Codice*], [*Descrizione*], [*Stato*]),
  "TU-001",
  "Verifica del parsing delle credenziali durante il login",
  "Superato",
  "TU-002",
  "Test generazione risposta LLM con input validi/invalidi",
  "Non implementato",
  "TU-003",
  "Controllo formati logo supportati (PNG, JPG, SVG)",
  "Superato",
))

=== Test di Integrazione
I test di integrazione sono utilizzati per validare l’interazione tra moduli e servizi. Vengono scritti dai
programmatori e sono eseguiti in modo automatico. Lo strumento utilizzato per i test di integrazione è `Postman`.

Esempi applicati al progetto:

#figure(caption: [Esempi di test di integrazione], table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Codice*], [*Descrizione*], [*Stato*]),
  "TI-001",
  "Integrazione modulo autenticazione con database utenti",
  "Superato",
  "TI-002",
  "Comunicazione tra frontend e API di generazione risposte LLM",
  "Superato",
  "TI-003",
  "Verifica sincronizzazione impostazioni tema (dark/light mode) su più dispositivi",
  "Non Implementato",
))

=== Test di Sistema
I test di sistema sono utilizzati per verificare il comportamento end-to-end del sistema rispetto ai requisiti
funzionali. Vengono scritti dagli analisti e sono eseguiti in modo automatico. Lo strumento utilizzato per i test di
sistema è `Playwright`.

Esempi applicati al progetto:

#figure(caption: [Esempi di test di sistema], table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Codice*], [*Descrizione*], [*Stato*]),
  "TS-001",
  "Test completo flusso cliente: Login → Richiesta prodotto → Valutazione risposta",
  "Non Implementato",
  "TS-002",
  "Test gestione fornitori: Aggiunta #gloss[account] → Configurazione #gloss[chatbot] → Caricamento documenti",
  "Superato",
  "TS-003",
  "Test tolleranza ai fallimenti: Simulazione downtime sistema durante l’invio messaggi",
  "Pianificato",
))

=== Test di Accettazione
I test di accettazione sono utilizzati per validare il sistema con il committente o l'utente finale. Vengono scritti
dagli analisti e sono eseguiti in modo manuale. Gli strumenti utilizzati per i test di accettazione sono checklist
manuali.

Esempi applicati al progetto:

#figure(caption: [Esempi di test di accettazione], table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Codice*], [*Descrizione*], [*Stato*]),
  "TA-001",
  "Verifica personalizzazione interfaccia",
  "Non Implementato",
  "TA-002",
  "Validazione accuratezza risposte LLM",
  "Non Implementato",
  "TA-003",
  "Test flusso cliente: Registrazione → Richiesta prodotto → Valutazione risposta",
  "Non Implementato",
))


= Cruscotto di valutazione delle qualità
==

= Processi di automiglioramento
== Introduzione
In questa sezione vengono riportati tutti i problemi riscontrati dal gruppo durante lo svolgimento del progetto. Per
ogni problema viene indicato il periodo in cui è stato riscontrato, la descrizione del problema, l'azione correttiva
adottata.
#show figure: set block(breakable: true)
== Valutazione sull'organizzazione, pianificazione e incontri

#figure(
  caption: "Valutazione sull'organizzazione",
  table(
    columns: (0.5fr, 1fr, 1fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*Periodo*], [*Problema*], [*Azione correttiva*]),
    "Tutto il progetto",
    "È risultato molto difficile organizzare incontri dove fossero presenti tutti i membri del gruppo, per questioni di lavoro, orari, impegni personali, ed esami durante la sessione invernale",
    "Il gruppo ha deciso di organizzare incontri settimanali fissi, nel caso alcuni membri non erano presenti, questi venivano informati sulle decisioni prese durante un incontro tramite messaggi su Telegram",
    "Tutto il progetto",
    "È risultato difficile cercare di rimanere entro i limiti di tempo e budget assegnati ad ogni ruolo",
    "Per organizzarsi al meglio, il gruppo ha deciso di tenere un tabella su Google Sheets che tiene conto delle ore individuali e totali di ogni ruolo",
  ),
)

== Valutazione sui ruoli

#figure(
  caption: "Valutazione sui ruoli",
  table(
    columns: (0.5fr, 0.8fr, 1fr, 1fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*Periodo*], [*Ruolo*], [*Problema*], [*Azione correttiva*]),
    "Inizio progetto",
    "Tutti",
    "Il gruppo ha riscontrato difficoltà nel capire i compiti assegnati a ciascun ruolo, e come eseguire la rotazione",
    "È stato deciso di organizzare la rotazione dei ruoli durante ogni incontro a fine sprint e assegnarli in base ai compiti dati.",
    "Inizio progetto",
    "Verificatore",
    "Non è stata posta molta importanza sul ruolo di verificatore",
    "Si è deciso di caricare ogni cambiamento alla repository attraverso una pull request, il verificatore aveva ruolo di approvarla",
    "Tutto il progetto",
    "Responsabile Amministratore",
    "È risultata poco chiara la differenza tra i ruoli di responsabile e amministratore",
    "I ruoli di responsabile e amministratore venivano dichiarati ad ogni riunone insieme agli altri ruoli, e venivano chiariti i singoli compiti da eseguire. Questi erano basati su quanto imparato dal corso di Ingegneria del Software",
  ),
)
== Valutazione sugli strumenti

#figure(
  caption: "Valutazione sugli strumenti utilizzati",
  table(
    columns: (0.5fr, 0.8fr, 1fr, 1fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*Periodo*], [*Strumento*], [*Problema*], [*Azione correttiva*]),
    "Inizio progetto",
    "Git, GitHub",
    "Il gruppo ha riscontrato difficoltà nell'utilizzo di GitHub.",
    "Il gruppo ha deciso di spiegare le modalità di utilizzo di GitHub durante un incontro, spiegando come gestire le issue, gestione dei branch e pull request",
    "PoC",
    "Python",
    "Molti strumenti scelti usano il linguaggio di programmazione Python. Questo linguaggio non è mai stato usato da molti membri del gruppo e ha causato delle difficoltà",
    "Sono state richieste delle ore aggiuntive a ogni persona per imparare o rivedere le basi del linguaggio Python",
    "PoC",
    "GPT-4o mini",
    "Non conoscendo le funzionalità della LLM scelta, il gruppo ha avuto difficoltà nel capire il suo corretto funzionamento",
    "Sono state richieste delle ore aggiuntive a ogni persona per imparare e capire le basi della LLM scelta",
    "Fine primo periodo",
    "Typst",
    "Verso il revisionamento per RTB, la nuova versione di Typst 0.13 ha causato dei problemi nel compilare le tabelle. Queste venivano schiacciate e venivano visualizzate come una singola linea",
    "",
    "PoC",
    "Svelte",
    "",
    "",
    "PoC",
    "MongoDB",
    "",
    "",
  ),
)
