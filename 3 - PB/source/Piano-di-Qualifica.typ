#import "../../template/documenti.typ": *
#import "../../template/i-figured.typ"

#show: doc => documento(titolo: "Piano di Qualifica", data: [03/01/2024], ruoli: (
  "Matteo Bazzan",
  "Redattore",
  "Luca Ribon",
  "Redattore, Verificatore",
  "Francesco Fragonas",
  "Verificatore",
  "Gabriele Magnelli",
  "Redattore",
  "Filippo Sabbadin",
  "Redattore, Verificatore",
  "Luca Rossi",
  "",
  "Yi Hao Zhuo",
  "Verificatore",
), sommario: [Piano di qualifica], versioni: (
  "2.0.0",
  "06/05/2025",
  "Filippo Sabbadin",
  "Aggiunta grafici PB nel cruscotto di valutazione delle metriche, aggiunti test unità",
  "Luca Ribon",
  "1.1.0",
  "06/04/2025",
  "Filippo Sabbadin",
  "Aggiunta sezione PB nel cruscotto di valutazione delle metriche",
  "Francesco Fragonas",
  "1.0.0",
  "05/03/2025",
  "Luca Ribon",
  "Migliorata sezione Metodologie di testing",
  "Filippo Sabbadin",
  "0.4.0",
  "04/03/2025",
  "Gabriele Magnelli",
  "Aggiunta sezione cruscotto di valutazione delle metriche",
  "Luca Ribon",
  "0.3.0",
  "27/02/2025",
  "Filippo Sabbadin",
  "Aggiunta sezioni di valutazione",
  "Luca Ribon",
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
- Capitolato C7 - #gloss[Assistente Virtuale] Ergon:
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")

- #gloss[Norme di Progetto]
=== Riferimenti informativi
- Slide T08 - Qualità di processo: #link("https://codehex16.github.io/resources/slides/T8.pdf") _(ultima consultazione 18-05-2025)_;

- Slide T09 - Verifica e validazione #link("https://codehex16.github.io/resources/slides/T9.pdf") _(ultima consultazione 18-05-2025)_;

- Glossario:
  - Documento: #link("https://codehex16.github.io/docs/glossario/glossario.pdf") _(versione 1.0.0)_;
  - Pagina web: #link("https://codehex16.github.io/glossario.html") _(ultima consultazione 18-05-2025)_;

= Metriche di qualità

== Qualità di processo

=== Fornitura
Per il processo di fornitura vengono indicate tutte le scelte operative fatte in fase di sviluppo. L'acronimo usato
prima dei nomi è #gloss[MPC]: Minimum Predictive Capability. Questa metrica viene usata in Machine Learning per misurare
la capacità di un modello di generare previsioni precise. Nel nostro caso, l'MPC è il valore minimo da raggiungere per
essere considerato accettabile.
- *MPC-CC - Completion Cost*: costo finale raggiunto alla fine del progetto. Idealmente non deve superare quello stimato
  durante le fasi iniziali;
- *MPC-EC - Estimated Cost*: costo stimato calcolando le ore necessarie per lo sviluppo del progetto;
- *MPC-BAC - #gloss[Budget] At Completion*: costo totale del progetto preventivato per il suo completamento;
- *MPC-AC - Actual Cost*: budget speso/utilizzato fino a quel determinato momento;
- *MPC-ETC - Estimated To Completion*: stima del costo finale alla data della misurazione;
- *MPC-EV - Earned Value*: valore ottenuto fino a quel dato momento, si basa sui progressi del completamento delle
  attività. Il valore viene calcolato tramite ll prodotto di BAC per la percentuale del lavoro attualmente svolto;
- *MPC-PV - Planned Value*: attività lavorativa decisa, cioè da completare, entro la data prevista. Si basa sulla
  programmazione delle attività del progetto e riflette il valore del lavoro che si intende portare a termine. Questo
  valore è calcolato tramite il prodotto di BAC per la percentuale del lavoro che deve essere completato (rispetto
  all'intero progetto) entro la data presa in considerazione;
- *MPC-CV - Cost Variance*: valore che misura la differenza tra il budget disponibile e il quello usato effettivamente
  fino a quel momento. Il valore viene calcolato come differenza tra EV e AC;
- *MPC-SV - Schedule Variance*: varianza rispetto a quanto previsto inteso come anticipo o ritardo sui tempi delle
  attività svolte e da svolgere. Questo valore viene calcolato come la differenza tra EV e PV;
- *MPC-EAC - Estimated At Completion*: valore stimato per i compiti da svolgere. Questo valore viene dato dalla divisione
  di BAC per CPI(Cost Performance Index).

#figure(caption: [Valori per misurare la qualità della fornitura], table(
  columns: (0.8fr, 2fr, 1.2fr, 1.2fr),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 10) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPC-CC",
  "Completion Cost",
  "\u{2264}105% EC",
  "\u{2264}100% EC",
  "MPC-AC",
  "Actual Cost",
  "\u{2265} 0",
  "\u{2264} EAC",
  "MPC-ETC",
  "Estimated To Completion",
  "\u{2265} 0%",
  "\u{2264} EAC",
  "MPC-EV",
  "Earned Value",
  "\u{2265} 0",
  "\u{2264} EAC",
  "MPC-PV",
  "Planned Value",
  "\u{2265} 0",
  "\u{2264} BAC",
  "MPC-CV",
  "Cost Variance",
  "\u{2265} -5%",
  "\u{2265} 0",
  "MPC-SV",
  "Schedule Variance",
  "\u{2265} -10%",
  "\u{2265} 0",
  "MPC-EAC",
  "Estimated At Completion",
  "\u{00B1}5% BAC",
  "= BAC",
))\

=== Sviluppo

- *MPC-RSI - Requirements Stability Index*: indice di stabilità dei requisiti. Indica la percentuale di requisiti che sono
  stati modificati rispetto al totale dei requisiti. Un valore alto indica che i requisiti sono stabili e non soggetti a
  modifiche frequenti.
- *MPC-TD - Technical Debt Ratio*: rapporto tra il tempo necessario per risolvere i problemi tecnici e il tempo necessario
  per sviluppare nuove funzionalità. Un valore basso indica che il codice è ben strutturato e non presenta problemi
  tecnici.

#figure(caption: [Valori per misurare la qualità dello sviluppo], table(
  columns: (auto, auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPC-RSI",
  "Requirements Stability Index",
  "\u{2265}80%",
  "100%",
  "MPC-TD",
  "Technical Debt Ratio",
  "\u{2264}15%",
  "\u{2264}5%",
))

=== Documentazione
- *MPC-IG - Indice di Gulpease*
Indica la complessità nella lettura di una frase o documento. Considera come variabili il numero di parole, di frasi e
di lettere.\
Formula dell'indice di Gulpease:
$ 89+((300*"numero di frasi") - (10*"numero di lettere")) / "numero di parole" $ <Gulpease>\
- *MPC-CO - Correttezza ortografica*
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
  "3",
  "0",
))

=== Verifica
- *MPC-CCO - Code coverage*
Quantità di codice eseguito durante i test.\
Viene utilizzato per valutare la qualità dei test e garantire che il codice sia stato adeguatamente testato. Un alto
livello indica che il codice è stato eseguito in molti contesti e scenari diversi con diverse parti di codice. In altre
parole, indica quanto codice è stato sottoposto ai test.

- *MPC-TSP - Test superati in percentuale*
Indica la proporzione di test automatizzati o manuali che sono stati eseguiti con successo rispetto al totale dei test
previsti. Viene espressa come una percentuale e serve a misurare quanto dell'applicazione in fase di sviluppo è stato
verificato con successo tramite i test. Una percentuale alta di test superati indica che il sistema è stabile e che la
maggior parte delle funzionalità funzionano come previsto.\
In altre parole, indica quanti test sono stati superati.
#figure(caption: [Valori per misurare la qualità del processo di verifica], table(
  columns: (auto, auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPC-CCO",
  "Code coverage",
  "\u{2265}90%",
  "100%",
  "MPC-TSP",
  "Test superati in percentuale",
  "100%",
  "100%",
))
=== Gestione della qualità
- *MPC-SQM - Satisfaction of Quality Metrics*: misura la quantità di metriche soddisfatte. Questo valore viene calcolato
  come la somma delle metriche di qualità soddisfatte diviso il numero totale di metriche di qualità.
#figure(caption: [Valori per misurare la gestione della qualità], table(
  columns: (auto, auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPC-SQM",
  "Satisfaction of Quality Metrics",
  "\u{2265}85%",
  "100%",
))

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
))

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
))

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
))

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

Ad ogni test è stato attribuito un codice univoco per identificarlo strutturato nel seguente modo: `[TIPO]-XXX`, dove `XXX` è
un numero progressivo.

Le tipologie di test utilizzate sono:
- Test di Unità: TU-XXX
//- Test di Integrazione: TI-XXX
- Test di Sistema: TS-XXX
- Test di Accettazione: TA-XXX
- Test di Regressione

Per ogni test viene specificato lo *stato* di completamento, che può essere:
- Superato
- Pianificato
- Fallito
- Non implementato

Nella versione del documento precedente, dedicata all'#gloss[RTB], era prevista la definizione di Test di Sistema e Test
di Accettazione. Nella versione aggiornata, dedicata alla #gloss[PB], sono state aggiunte le definizioni di Test di
Unità e Test di Regressione.

=== Test di Unità
I test di unità sono utilizzati per verificare il corretto funzionamento delle singole componenti del software. Vengono
scritti dai programmatori e sono eseguiti in modo automatico. Gli strumenti utilizzati per i test di unità sono `pytest` e `vitest`. \
La code coverage finale garantita dai test di unità è pari al 93%. \

Esempi applicati al progetto:
#show figure: set block(breakable: true)
#figure(caption: [Esempi di unit test], table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Codice*], [*Descrizione*], [*Stato*]),
  //test_database.py
  "TU-001",
  "Test lancio errore se la connessione al database fallisce",
  "Superato",
  "TU-002",
  "Test connessione al database in caso di successo",
  "Superato",
  //test_schemas.py
  "TU-003",
  "Test che una lista di e-mail passi una validazione",
  "Superato",
  "TU-004",
  "Test che una mail non valida fallisca la validazione",
  "Superato",
  "TU-005",
  "Test sull'accettazione di un'email vuota",
  "Superato",
  "TU-006",
  "Test sul lancio di un errore nel caso in cui il campo di inserimento dell'email sia vuoto",
  "Superato",
  "TU-007",
  "Test sul corretto aggiornamento della password",
  "Superato",
  "TU-008",
  "Test sul fallimento del cambio di una password non valida",
  "Superato",
  "TU-009",
  "Test sul lancio di un errore nel caso in cui il campo di inserimento della password sia vuoto",
  "Superato",
  "TU-010",
  "Test su varie password valide e non valide con lo schema regex",
  "Superato",
  "TU-011",
  "Test sul rifiuto di titoli FAQ troppo lunghi",
  "Superato",
  "TU-012",
  "Test sulla corretta lunghezza di un titolo di una FAQ",
  "Superato",
  "TU-013",
  "Test sull'aggiornamento di una FAQ",
  "Superato",
  "TU-014",
  "Test sul rifiuto di aggiornamento di una FAQ nel caso il titolo sia troppo lungo",
  "Superato",
  //test_utils.py
  "TU-015",
  "Test sul corretto funzionamento dell'hashing della password",
  "Superato",
  "TU-016",
  "Test sul controllo di password corrette e non corrette",
  "Superato",
  "TU-017",
  "Test sulla generazione dello stesso UUID3 per lo stesso input e UUID3 diversi per input diversi",
  "Superato",
  "TU-018",
  "Test sulla generazione dello stesso ObjectId per lo stesso input e ObjectId diversi per input diversi",
  "Superato",
  "TU-019",
  "Test sul ritorno del fuso orario corretto",
  "Superato",
  //test_chat_repository.py
  "TU-020",
  "Test sul ritorno di una lista chat in base all'email di un utente",
  "Superato",
  "TU-021",
  "Test sul ritorno di una chat in base all'ID",
  "Superato",
  "TU-022",
  "Test sull'inizializzazione di una nuova chat per un utente",
  "Superato",
  "TU-023",
  "Test sull'eliminazione di una chat tramite l'ID della chat e l'email dell'utente",
  "Superato",
  "TU-024",
  "Test sull'aggiornamento chat tramite chat ID",
  "Superato",
  "TU-025",
  "Test invio messaggio nella chat",
  "Superato",
  "TU-026",
  "Test aggiornamento nome chat",
  "Superato",
  "TU-027",
  "Test aggiornamento del rating di un messaggio del bot",
  "Superato",
  //test_document_repository.py
  "TU-028",
  "Test sul ritorno di tutti i documenti",
  "Superato",
  "TU-029",
  "Test sull'inserimento corretto dei documenti",
  "Superato",
  "TU-030",
  "Test lancio errore nell'inserimento di documenti non corretti",
  "Superato",
  "TU-031",
  "Test sulla gestione corretta delle chiavi duplicate dei documenti",
  "Superato",
  "TU-032",
  "Test sull'eliminazione di un documento avvenuta con successo",
  "Superato",
  "TU-033",
  "Test sullla gestione corretta di errori durante l'eliminazione di un documento",
  "Superato",
  //test_faq_repository.py
  "TU-034",
  "Test sul rtiorno di tutte le FAQ",
  "Superato",
  "TU-035",
  "Test sul ritorno di una FAQ in base all'ID",
  "Superato",
  "TU-036",
  "Test sulla gestione di errori durante il ritorno di una FAQ",
  "Superato",
  "TU-037",
  "Test sul corretto inserimento di FAQ",
  "Superato",
  "TU-038",
  "Test sulla corretta gestione di chiavi duplicate durante l'inserimento di una FAQ",
  "Superato",
  "TU-039",
  "Test sulla gestione di errori durante l'inserimento di una FAQ",
  "Superato",
  "TU-040",
  "Test aggiornamento di una FAQ",
  "Superato",
  "TU-041",
  "Test che non avvenga un aggiornamento nel caso la FAQ non venga cambiata",
  "Superato",
  "TU-042",
  "Test sul lancio di un errore nel caso l'aggiornamento di una FAQ non venga trovato",
  "Superato",
  "TU-043",
  "Test sul lancio di un errore nel caso la FAQ non venga modificata",
  "Superato",
  "TU-044",
  "Test sulla corretta gestione di errori durante l'aggiornamento di una FAQ",
  "Superato",
  "TU-045",
  "Test sull'eliminazione di una FAQ",
  "Superato",
  "TU-046",
  "Test sulla corretta gestione degli errori durante l'eliminazione di una FAQ",
  "Superato",
  //test_user_repository.py
  "TU-047",
  "Test sul ritorno di tutti gli utenti",
  "Superato",
  "TU-048",
  "Test sul ritorno di un utente in base all'indirizzo email",
  "Superato",
  "TU-049",
  "Test creazione di un nuovo utente test",
  "Superato",
  "TU-050",
  "Test sull'inserimento di un nuovo utente test",
  "Superato",
  "TU-051",
  "Test sulla corretta gestione di errori durante l'inserimento di un nuovo utente",
  "Superato",
  "TU-052",
  "Test aggiunta di un admin test",
  "Superato",
  "TU-053",
  "Test sulla gestione errori per l'aggiunta di un admin test ",
  "Superato",
  "TU-054",
  "Test sul ritorno di un utente test",
  "Superato",
  "TU-055",
  "Test sul ritorno di un admin test",
  "Superato",
  "TU-056",
  "Test sull'eliminazione di un utente",
  "Superato",
  "TU-057",
  "Test sulla gestione errori per l'eliminazione di un utente",
  "Superato",
  "TU-058",
  "Test lancio di di un errore se l'utente eliminato non esiste",
  "Superato",
  "TU-059",
  "Test sul corretto aggiornamento di un utente",
  "Superato",
  "TU-060",
  "Test sull'aggiornamento utente senza cambiare password",
  "Superato",
  "TU-061",
  "Test sulla gestione di errori durante l'aggiornamento di un utente",
  "Superato",
  "TU-062",
  "Test lancio di un errore se non vengono dati cambiamenti all'aggiornamento di un utente",
  "Superato",
  "TU-063",
  "Test lancio di un errore se l'utente non viene modificato",
  "Superato",
  //test_auth.py
  "TU-064",
  "Test sull'inizializzazione dell'utente in caso di successo",
  "Superato",
  "TU-065",
  "Test sulla corretta gestione di un token non valido durante l'inizializzazione utente",
  "Superato",
  "TU-066",
  "Test sulla corretta gestione di errori durante l'inizializzazione utente",
  "Superato",
  "TU-067",
  "Test sulla corretta gestione di errori JWT durante l'inizializzazione utente",
  "Superato",
  "TU-068",
  "Test sulla creazione del token",
  "Superato",
  "TU-069",
  "Test sulla creazione di token senza scadenza/expiration",
  "Superato",
  "TU-070",
  "Test sulla verifica token",
  "Superato",
  "TU-071",
  "Test sul lancio di un errore se il token non presenta un'email",
  "Superato",
  "TU-072",
  "Test sul lancio di un errore se il token ha uno scope non sufficiente",
  "Superato",
  "TU-073",
  "Test sulla corretta gestione di errori JWT durante la verifica del token",
  "Superato",
  "TU-074",
  "Test sulla verifica utente in base al token",
  "Superato",
  "TU-075",
  "Test sulla verifica admin in base al token",
  "Superato",
  "TU-076",
  "Test login con token di accesso in caso di successo",
  "Superato",
  //test_chat.py
  "TU-077",
  "Test creazione chat",
  "Superato",
  "TU-078",
  "Test lancio errore se nessun alla creazione di una chat non si ha un'email",
  "Superato",
  "TU-079",
  "Test sul ritorno di una chat quando non ne esiste nessuna",
  "Superato",
  "TU-080",
  "Test sul lancio di un errore se non si ha chat ed email",
  "Superato",
  "TU-081",
  "Test sul cambio titolo chat",
  "Superato",
  "TU-082",
  "Test sul lancio di un errore se la chat da cambiare il titolo non viene trovata",
  "Superato",
  "TU-083",
  "Test sull'eliminazione di una chat",
  "Superato",
  "TU-084",
  "Test sul lancio di un errore se la chat da eliminare non esiste",
  "Superato",
  "TU-085",
  "Test sull'aggiunta di un messaggio alla chat",
  "Superato",
  "TU-086",
  "Test sul lancio di un errore se il messaggio non viene trovato",
  "Superato",
  "TU-087",
  "Test rating messaggio",
  "Superato",
  "TU-088",
  "Test sul lancio di un errore se il messaggio da cambiare il rating non viene trovato",
  "Superato",
  //test_document.py
  "TU-089",
  "Test sul caricamento di un documento",
  "Superato",
  "TU-090",
  "Test sulla corretta gestione di docuemnti duplicati",
  "Superato",
  "TU-091",
  "Test sulla corretta gestione degli errori durante il caricamento di un documento",
  "Superato",
  "TU-092",
  "Test sul ritorno dei documenti",
  "Superato",
  "TU-093",
  "Test sulla cancellazione dei documenti",
  "Superato",
  "TU-094",
  "Test sul lancio di un errore se l'utente che cancella il documento non è valido",
  "Superato",
  "TU-095",
  "Test sul lancio di un errore se l'eliminazione del documento non va a buon fine",
  "Superato",
  "TU-096",
  "Test sul lancio di un errore se il numero di documenti non è corretto",
  "Superato",
  "TU-097",
  "Test sulla corretta gestione di eccezioni durante l'eliminazione di un documento",
  "Superato",
  //test_faq.py
  "TU-098",
  "Test sulla creazione di una FAQ",
  "Superato",
  "TU-099",
  "Test sulla corretta gestione di FAQ duplicate",
  "Superato",
  "TU-100",
  "Test sulla corretta getione di errori durante la creazione di una FAQ",
  "Superato",
  "TU-101",
  "Test sul ritorno di una FAQ",
  "Superato",
  "TU-102",
  "Test sul lancio di un errore se la FAQ non viene trovata",
  "Superato",
  "TU-103",
  "Test sull'aggiornamento di una FAQ",
  "Superato",
  "TU-104",
  "Test sulla corretta gestione di FAQ duplicate durante un aggiornamento",
  "Superato",
  "TU-105",
  "Test sulla corretta gestione di errori durante l'aggiornamento di una FAQ",
  "Superato",
  "TU-106",
  "Test sull'eliminazione di una chat",
  "Superato",
  "TU-107",
  "Test sul lancio di un errore se l'utente non è valido per l'eliminazione di una FAQ",
  "Superato",
  "TU-108",
  "Test sul lancio di un errore se l'eliminazione di una FAQ fallisce",
  "Superato",
  "TU-109",
  "Test sulla corretta gestione di eccezioni durante l'eliminazione di una FAQ",
  "Superato",
  //test_user.py
  "TU-110",
  "Test sul ritoro utenti",
  "Superato",
  "TU-111",
  "Test sulla corretta gestione di errori quando non esistono utenti",
  "Superato",
  "TU-112",
  "Test sul ritorno dell'utente attuale",
  "Superato",
  "TU-113",
  "Test sul lancio di un errore se il ritorno dell'utente attuale fallisce",
  "Superato",
  "TU-114",
  "Test sull'aggiornamento di un utente",
  "Superato",
  "TU-115",
  "Test sulla corretta gestione di dati utente duplicati durante l'aggiornamento utente",
  "Superato",
  "TU-116",
  "Test sulla corretta gestione di errori durante l'aggiornamento di un utente",
  "Superato",
  "TU-117",
  "Test sul lancio di un errore se non vengono fatte modifiche durante l'aggiornamento utente",
  "Superato",
  "TU-118",
  "Test sull'eliminazione utente",
  "Superato",
  //test_mail_service.py
  "TU-119",
  "Test che il servizio mail chiami il metodo coretto per inviare una mail",
  "Superato",
))

=== Test di Sistema
I test di sistema sono utilizzati per verificare il comportamento del sistema rispetto ai requisiti funzionali. Vengono
scritti dagli analisti e sono eseguiti in modo automatico.

Esempi applicati al progetto:

#show figure: set block(breakable: true)
#figure(
  caption: [Esempi di test di sistema],
  table(
    columns: (auto, auto, auto, auto),
    inset: 8pt,
    align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*Codice*], [*Descrizione*], [*ID Requisito*], [*Stato*]),
    // login
    "TS-001",
    "Verificare che l'utente possa fare il login per accedere alla piattaforma",
    "R-01-F-O",
    "Superato",
    // primo login fornitore
    "TS-002",
    "Verificare che il fornitore debba cambiare la password al primo accesso",
    "R-02-F-O",
    "Superato",
    // primo login cliente
    "TS-003",
    "Verificare che il cliente debba cambiare la password al primo accesso",
    "R-03-F-O",
    "Superato",
    // modifica password
    "TS-004",
    "Verificare che sia cliente che fornitore possano cambiare password",
    "R-04-F-O",
    "Superato",
    // resta connesso
    "TS-005",
    "Verificare che un utente non autenticato possa scegliere se reinserire le credenziali ad ogni accesso o se rimanere autenticato",
    "R-05-F-D",
    "Superato",
    // recupero password
    "TS-006",
    "Verificare che un utente non autenticato possa recuperare la password dimenticata",
    "R-06-F-O",
    "Superato",
    // errore email
    "TS-007",
    "Verificare che l'utente sia notificato in caso di errore nell'inserimento dell'e-mail",
    "R-07-F-O",
    "Superato",
    // errore password
    "TS-008",
    "Verificare che l'utente sia notificato in caso di errore nell'inserimento della password",
    "R-08-F-O",
    "Superato",
    // logout
    "TS-009",
    "Verificare che sia cliente che fornitore possano effettuare il logout",
    "R-09-F-O",
    "Superato",
    // visualizzazione lista chat
    "TS-010",
    "Verificare che sia cliente che fornitore possano visualizzare la lista di tutte le chat",
    "R-10-F-O",
    "Superato",
    // creazione nuova chat
    "TS-011",
    "Verificare che sia cliente che fornitore possano creare una nuova chat",
    "R-11-F-O",
    "Superato",
    // modifica titolo chat
    "TS-012",
    "Verificare che sia cliente che fornitore possano modificare il titolo di una chat esistente",
    "R-12-F-D",
    "Non superato",
    // apertura chat singola
    "TS-013",
    "Verificare che sia cliente che fornitore possano aprire una chat singola dalla lista",
    "R-13-F-O",
    "Superato",
    // scrittura messaggio
    "TS-014",
    "Verificare che sia cliente che fornitore possano scrivere messaggi al chatbot",
    "R-14-F-O",
    "Superato",
    // scrittura messaggio troppo lungo
    "TS-015",
    "Verificare che l'utente sia avvisato quando il messaggio è troppo lungo",
    "R-15-F-O",
    "Superato",
    // scrittura messaggio tramite FAQ
    "TS-016",
    "Verificare che sia cliente che fornitore possano utilizzare FAQ preimpostate",
    "R-16-F-O",
    "Superato",
    // messaggio
    "TS-017",
    "Verificare che sia cliente che fornitore possano inviare i messaggi scritti al chatbot",
    "R-17-F-O",
    "Superato",
    // ricezione risposta
    "TS-018",
    "Verificare che sia cliente che fornitore ricevano risposta dal chatbot con feedback durante l'elaborazione",
    "R-18-F-O",
    "Superato",
    // valutazione risposta
    "TS-019",
    "Verificare che il cliente possa valutare la risposta ricevuta con pollice su/giù",
    "R-19-F-O",
    "Superato",
    // eliminazione chat
    "TS-020",
    "Verificare che sia cliente che fornitore possano eliminare una chat esistente",
    "R-20-F-O",
    "Superato",
    // dark/light mode
    "TS-021",
    "Verificare che l'utente possa scegliere tra tema scuro e tema chiaro dell'interfaccia",
    "R-21-F-D",
    "Superato",
    // modifica durata storico chat
    "TS-022",
    "Verificare che il fornitore possa modificare la durata dello storico delle chat",
    "R-22-F-O",
    "Superato",
    // caricare logo
    "TS-023",
    "Verificare che il fornitore possa caricare il proprio logo per personalizzare l'interfaccia",
    "R-23-F-D",
    "Superato",
    // palette colori
    "TS-024",
    "Verificare che il fornitore possa cambiare i colori principali dell'interfaccia",
    "R-24-F-D",
    "Superato",
    // statistiche domanda risposta
    "TS-025",
    "Verificare che il fornitore possa visualizzare statistiche sulle interazioni con il chatbot",
    "R-25-F-D",
    "Superato",
    // filtri visualizzazione
    "TS-026",
    "Verificare che il fornitore possa filtrare le statistiche visualizzate",
    "R-26-F-D",
    "Non superato",
    // aggiunta account cliente
    "TS-027",
    "Verificare che il fornitore possa aggiungere account clienti",
    "R-27-F-O",
    "Superato",
    // inserimento account già esistente
    "TS-028",
    "Verificare che il fornitore sia avvisato se sta aggiungendo un account già esistente",
    "R-28-F-O",
    "Superato",
    // eliminazione account già esistente
    "TS-029",
    "Verificare che il fornitore possa eliminare un account cliente previa autenticazione con password",
    "R-29-F-O",
    "Superato",
    // inserimento documenti aziendali
    "TS-030",
    "Verificare che il fornitore possa inserire documenti aziendali per fornire contesto al chatbot",
    "R-30-F-O",
    "Superato",
    // formato file non valido
    "TS-031",
    "Verificare che il fornitore venga avvisato se il file caricato non è in un formato valido",
    "R-31-F-O",
    "Superato",
    // visualizzazione documenti aziendali
    "TS-032",
    "Verificare che il fornitore possa visualizzare la lista dei documenti aziendali caricati",
    "R-32-F-O",
    "Superato",
    // eliminazione documento aziendale
    "TS-033",
    "Verificare che il fornitore possa eliminare documenti aziendali previa autenticazione con password",
    "R-33-F-O",
    "Superato",
    // aggiunta FAQ
    "TS-034",
    "Verificare che il fornitore possa aggiungere FAQ nella piattaforma",
    "R-34-F-O",
    "Superato",
    // visualizzazione FAQ
    "TS-035",
    "Verificare che il fornitore possa visualizzare la lista delle FAQ inserite",
    "R-35-F-O",
    "Superato",
    // modifica FAQ
    "TS-036",
    "Verificare che il fornitore possa modificare le FAQ esistenti",
    "R-36-F-O",
    "Superato",
    // eliminazione FAQ
    "TS-037",
    "Verificare che il fornitore possa eliminare FAQ previa autenticazione con password",
    "R-37-F-O",
    "Superato",
    // sistema non raggiungibile
    "TS-038",
    "Verificare che l'utente sia avvisato quando il sistema non è raggiungibile",
    "R-38-F-O",
    "Superato",
    // invio richiesta con dati mancanti o errati
    "TS-039",
    "Verificare che l'utente sia avvisato quando invia richieste con dati mancanti o errati",
    "R-39-F-O",
    "Superato",
  ),
)

=== Test di Accettazione
I test di accettazione sono utilizzati per validare il sistema con il #gloss[committente], servono per confermare che il
prodotto sia pronto alla consegna finale e/o distribuzione. Vengono scritti dagli analisti e sono eseguiti in modo
manuale. Gli strumenti utilizzati per i test di accettazione sono delle checklist gestite manualmente.

Esempi applicati al progetto:

#figure(
  caption: [Esempi di test di accettazione],
  table(
    columns: (auto, auto, auto),
    inset: 8pt,
    align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*Codice*], [*Descrizione*], [*Stato*]),
    "TA-001",
    "Verificare le meccaniche di login e che distinguano gli utenti tra Cliente e Fornitore",
    "Superato",
    "TA-002",
    "Verificare la possibilità di comunicare con il chatbot tramite più chat separate tra di loro, sia come Cliente che come Fornitore",
    "Superato",
    "TA-003",
    "Verificare la possibilità di usare domande preimpostate durante la comunicazione con il chatbot",
    "Superato",
    "TA-004",
    "Verificare la possibilità di gestire le chat sia come Cliente che come Fornitore",
    "Superato",
    "TA-005",
    "Verificare la possibilità di valutare le risposte del chatbot, sia come Cliente che come Fornitore",
    "Superato",
    "TA-006",
    "Verificare che il fornitore possa personalizzare l'interfaccia della piattaforma",
    "Superato",
    "TA-007",
    "Verificare che il fornitore possa gestire gli account dei clienti",
    "Superato",
    "TA-008",
    "Verificare che il fornitore possa gestire dei documenti aziendali per fornire contesto al chatbot e le FAQ preimpostate",
    "Superato",
    "TA-009",
    "Verificare che il fornitore possa visualizzare e filtrare le statistiche sulle interazioni con il chatbot",
    "Superato",
    "TA-010",
    "Verificare che la piattaforma gestisca errori di funzionamento o utilizza da parte degli utenti in modo elegante",
    "Superato",
  ),
)

=== Test di Regressione
Per evitare che le modifiche al codice introducano nuovi bug sono stati implementati dei test di regressione.

In particolare, tramite le Github Actions, per ogni pull request aperta vengono rieseguiti tutti i test (anche quelli superati in pull request passate).\
In caso di fallimento il merge viene bloccato fino a quando tutti i test vengono superati.


= Cruscotto di valutazione delle metriche

== MPC-EAC(Estimated At Completion)
=== RTB
#figure(image("../imgs/SwePdQBacEac.png", width: 100%), caption: [
  Stima del costo totale durante i vari #gloss[sprint].
])
Osservando il grafico si nota come, soprattutto all'inizio, le stime dei costi totali si discostavano dal costo
preventivato (BAC). Ciò è dovuto, per lo più, al fatto che all'inizio avevamo previsto un maggior numero di ore per il
ruolo di Analista al fine di redigere il documento #gloss[Analisi dei Requisiti] negli sprint 2 e 3 per questo, in tali
periodi, si è verificata una diminuzione dei costi. Invece i rialzi sono più contenuti e sono dovuti, principalmente, ai
periodi in cui avevamo bisogno di ore aggiuntive per il ruolo di verificatore.

=== PB
#figure(image("../imgs/SwePdQBacEacPB.png", width: 95%), caption: [
  Stima del costo totale durante i vari sprint della fase PB.
])
Durante la fase PB, il costo preventivato è rimasto invariato mentre le stime del costo totale sono state più stabili. 

== MPC-EV(Estimated Value) - MPC-PV(Planned Value)
=== RTB
#figure(image("../imgs/SwePdQEvPv.png", width: 100%), caption: [
  Stima dei valori di PV e EV durante i vari sprint.
])
Dal grafico si può notare come i valori di PV e EV quasi si sovrappongano e ciò è dovuto al fatto che il lavoro
effettivamente svolto è conforme a quello pianificato anche se con qualche piccola eccezione, per esempio, tra gli
sprint 6 e 7 in cui vari componenti del team hanno avuto degli esami da svolgere e il lavoro e la produttività è
leggermente diminuita.

=== PB
#figure(image("../imgs/SwePdQEvPvPB.png", width: 95%), caption: [
  Stima dei valori di PV e EV durante i vari sprint della fase PB.
])
Come scritto nella sezione sugli automiglioramenti, il gruppo ha avuto difficoltà a lavorare in parallelo sugli stessi
file, risolto usando la funzione dei branch di Git. Questo ha portato a un aumento del tempo di lavoro. Tuttavia,
durante il periodo di vacanze pasquali, è stato riscontrato una riduzione del lavoro rispetto a quello stimato.

== MPC-AC(Actual Cost) - MPC-ETC(Estimated To Completion)
=== RTB
#figure(image("../imgs/SwePdQAcEtcBac.png", width: 100%), caption: [
  Stima dei valori di AC e ETC durante i vari sprint.
])
Il grafico mostra i valori di ETC(Estimated To Completion), cioè la stima del budget rimanente al team per portare al
termine il progetto durante i vari sprint. Il grafico mostra anche i valori di AC(Actual Cost), cioè il budget
effettivamente speso dal team durante i vari periodi. Si nota che l'ETC, giustamente, diminuisce costantemente con
l'avanzare degli sprint, mentre l'AC rispetta una crescita proporzionale alla velocità con cui l'ETC decresce.

=== PB
#figure(image("../imgs/SwePdQAcEtcBacPB.png", width: 95%), caption: [
  Stima dei valori di AC e ETC durante i vari sprint della fase PB.
])
Visto l'aumento di velocità del gruppo durante la fase PB con il consumo di più ore, i valori di ETC sono diminuiti più
velocemente, e i valori di AC sono aumentati più velocemente rispetto al budget speso. L'unica eccezione è il periodo in
cui il gruppo ha avuto delle vacanze pasquali e quindi il lavoro è diminuito insieme ai costi, recuperati poi nello
sprint successivo.

== MPC-SC(Schedule Variance) - MPC-CV(Cost Variance)
=== RTB
#figure(image("../imgs/SwePdQCvSv.png", width: 100%), caption: [
  Stima dei valori di CV e SV durante i vari sprint.
])
Il grafico mostra i valori di SV(Schedule Variance) dati dalla differenza tra il valore guadagnato (EV) e il valore
pianificato (PV) in percentuale e i valori di CV(Cost Variance) dati dalla differenza tra il valore ottenuto (EV) e il
budget speso (AC) in percentuale. In generale la CV si avvicina in vari periodi allo 0 segno dove vi è una
corrispondenza tra i costi sostenuti e l'avanzamento nel progetto, solo in alcuni casi il team è riuscito a fare un po'
di lavoro in più rispetto a quello preventivato (probabilmente il team aveva preventivato al ribasso). Anche i valori di
SV sono vicini allo 0 o sopra di qualche punto e quindi anche in questo caso sono stati rispettati i tempi previsti,
solo in alcuni casi il gruppo aveva preventivato di usare più tempo per determinate attività al fine di procedere più
velocemente con il progetto. Entrambi i valori comunque si discostano al massimo di 4 punti percentuali SV e al massimo
di 2 punti percentuali per i valori di CV.

=== PB
#figure(image("../imgs/SwePdQCvSvPB.png", width: 95%), caption: [
  Stima dei valori di CV e SV durante i vari sprint della fase PB.
])

Come scritto nella sezione di automiglioramento, all'inizio del progetto, il team ha avuto qualche difficoltà a
rispettare le scadenze e i costi previsti, ma con il passare del tempo e l'aumento della velocità del gruppo, i valori
di SV e CV sono stati rispettati, ad eccezione dei periodi finali a causa delle vacanze pasquali, per poi tornare
stabili subito dopo.

== MPC-RSI(Requirements Stability Index)
=== RTB
#figure(image("../imgs/SwePdQRSI.png", width: 100%), caption: [
  Stima di RSI durante i vari sprint.
])
Il grafico mostra l'RSI(Requirements Stability Index), usata per valutare la stabilità dei requisiti del progetto nel
corso del tempo. Si nota che tra gli sprint 1 e 4 vi è una rapida crescita, infatti questi sono i periodi principali in
cui il team ha usato il ruolo dell' analista al fine di redigere il documento Analisi dei Requisiti. Nei periodi
successivi i requisiti sono stati migliorati e non vi sono state modifiche sostanziali ai requisiti fino allo sprint 7,
in cui l'indice RSI risulta essere del 100%.

=== PB
#figure(image("../imgs/SwePdQRSIPB.png", width: 95%), caption: [
  Stima di RSI durante i vari sprint della fase PB.
])
Durante la fase PB, i requisiti non hanno visto modifiche sostanziali, tuttavia sono stati modificati alcuni requisiti a
seguito del colloquio RTB.

== MPC-Correttezza Ortografica
=== RTB
#figure(image("../imgs/SwePdQCO.png", width: 100%), caption: [
  Stima dei valori di correttezza ortografica durante i vari sprint.
])
Dal grafico emerge che, nella maggior parte dei documenti, gli errori ortografici sono molto limitati, purtroppo qualche
errore è sfuggito, ma è stato successivamente corretto. Nonostante ciò per buona parte dei documenti e del tempo gli
errori presenti erano 0, in particolare si è raggiunto un ottimo risultato negli ultimi sprint.

=== PB
#figure(image("../imgs/SwePdQCOPB.png", width: 95%), caption: [
  Stima dei valori di correttezza ortografica durante i vari sprint della fase PB.
])
Come notato nella sezione automiglioramento, è stato difficile avere un formato dei documenti omogeneo e questo ha
portato a un aumento di diversi errori. Questo è stato risolto con l'uso di un correttore ortografico automatico e una
maggiore comunicazione tra i membri del gruppo.== MPC-Indice Gulpease=== RTB
#figure(image("../imgs/SwePdQGulpease.png", width: 100%), caption: [
  Stima dei valori dell'indice Gulpease per ogni documento durante i vari sprint.
])
Dal grafico si può osservare come, per la maggior parte dei documenti nei vari sprint vi sia stato un aumento, o una
stabilizzazione dell'indice Gulpease. L'unico documento che inizia al di sotto del limite ottimo è l'Analisi dei
Requisiti e questo è causato dalla specificità degli argomenti trattati e dal linguaggio utilizzato. Per il resto dei
documenti l'indice Gulpease è sopra l'ottimo per la maggior parte degli sprint.

=== PB
#figure(image("../imgs/SwePdQGulpeasePB.png", width: 100%), caption: [
  Stima dei valori dell'indice Gulpease per ogni documento durante i vari sprint.
])
Durante la fase PB, l'indice è rimasto abbastanza stabile e non vi sono stati cambiamenti sostanziali per i documenti
già esistenti. Invece per i documenti nuovi, cioè Specifica Tecnica (ST) e Manuale Utente (MU), si può vedere una
maggiore instabilità.


== MPC-Non-Calculated-Risk
=== RTB
#figure(image("../imgs/SwePdQ_NcR.png", width: 100%), caption: [
  Stima dei valori di CV e SV durante i vari sprint.
])
Il grafico mostra come per la maggior parte degli sprint non si siano verificati rischi non calcolati, ma solo nello
sprint 3 abbiamo avuto un problema di comunicazione interna al gruppo che ha richiesto un incontro con il professore
Tullio Vardanega e che in seguito si è risolto. In ogni caso dal grafico si può notare che il team ha avuto una buona
previsione dei rischi.

=== PB
#figure(image("../imgs/SwePdQ_NcRPB.png", width: 95%), caption: [
  Stima dei valori di CV e SV durante i vari sprint della fase PB.
])
Come nella fase RTB, non si sono verificati rischi non calcolati, ma si è sempre presentato il problema di comunicazione
interna con alcuni membri del gruppo. Si può comunque notare che anche in questa fase il team ha avuto una buona
previsione dei rischi.

== MPC-QMS(Quality Metric Satisfied)
=== RTB
#figure(image("../imgs/SwePdQQMS.png", width: 100%), caption: [
  Stima della percentuale di metriche di qualità soddisfatte durante i vari sprint.
])
Dal grafico risulta che nei primi sprint una parte delle metriche di qualità non sono state soddisfatte o non hanno
raggiunto un valore accettabile e questo è dovuto ad una iniziale inesperienza da parte dei membri del team, i quali,
però, hanno capito questi errori apprendendo da essi e migliorando come gruppo. Questo fino a raggiungere valori
accettabili e in seguito ottimi soprattutto negli ultimi sprint dimostrando un miglioramento nel #gloss[way of working] e
nei risultati ottenuti.

=== PB
#figure(image("../imgs/SwePdQQMSPB.png", width: 95%), caption: [
  Stima della percentuale di metriche di qualità soddisfatte durante i vari sprint della fase PB.
])
Durante la fase PB, il gruppo ha mantenuto un valore stabile di soddisfazione delle metriche di qualità e non vi sono
stati cambiamenti sostanziali. Questo grazie a ciò che è stato appreso durante la fase precedente.

= Processi di automiglioramento

== Introduzione
In questa sezione vengono riportati tutti i problemi riscontrati dal gruppo durante lo svolgimento del progetto. Per
ogni problema viene indicato il periodo in cui è stato riscontrato, la descrizione del problema e l'azione correttiva
adottata. Tutti i problemi verranno indicati attraverso un codice univoco strutturato nel seguente modo:\ #align(center, "[TIPO]-[NUMERO]")
dove "TIPO" sarà:
- *OPI* se è un problema sull'organizzazione, pianificazione ed incontri;
- *RL* se è un problema sui ruoli;
- *STR* se è un problema sugli strumenti;
#show figure: set block(breakable: true)

== Valutazione sull'organizzazione, pianificazione ed incontri

#figure(
  caption: "Valutazione sull'organizzazione",
  table(
    columns: (0.4fr, 0.5fr, 1fr, 1fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*Codice*], [*Periodo*], [*Problema*], [*Azione correttiva*]),
    "OPI-01",
    "Tutto il progetto",
    "È risultato molto difficile organizzare incontri dove fossero presenti tutti i membri del gruppo, per questioni di lavoro, orari, impegni personali ed esami durante la sessione invernale",
    "Il gruppo ha deciso di organizzare incontri basandosi sulle disponibilità dichiarate da ogni membro su un Foglio Google dedicato. Nel caso in cui alcuni membri non fossero presenti, venivano informati sulle decisioni prese durante l’incontro tramite un verbale e, se necessario, anche attraverso messaggi su Telegram",
    "OPI-02",
    "Tutto il progetto",
    "È risultato difficile cercare di rimanere entro i limiti di tempo e budget assegnati ad ogni ruolo",
    "Per organizzarsi al meglio, il gruppo ha deciso di realizzare una tabella su un Foglio Google che tiene conto delle ore individuali e totali di ogni ruolo",
    "OPI-03",
    "Tutto il progetto",
    "È risultato difficile lavorare sugli stessi documenti nello stesso periodo di tempo, senza che più persone scrivessero nella stessa sezione, sovrascrivendo il lavoro di altri",
    "Si è deciso di utilizzare diversi branch su git, ognuno dedicato ad ogni attività per ogni sprint, in questo modo è stato più facile trovare sezioni sovrascritte e verificare solo le parti cambiate del documento",
    "OPI-04",
    "Inizio progetto",
    "Nella fase iniziale si sono presentati dei problemi sulla formattazione del testo, struttura, stile e stesura dei documenti",
    "Per organizzarsi meglio sulla stesura e stile dei documenti, si è fatto in modo che ogni documento prenda lo stile dallo stesso file, in modo da facilitarne anche la modifica",
    "OPI-05",
    "Inizio progetto",
    "Alcuni lavori assegnati nella fase iniziale richiedevano troppo tempo per essere assegnati ad un solo membro",
    "Il gruppo si è impegnato per fare in modo che le attività assegnate abbiano un livello di granularità più fine",
    "OPI-06",
    "Inizio progetto",
    "Inizialmente venivano inserite nella branch main (principale) modifiche che presentavano errori, spesso a causa della mancanza di verifica",
    "Il problema è stato risolto attraverso l'utilizzo di branch protection, che controlla se il verificatore ha approvato le modifiche, se la tabella delle versioni è correttamente compilata e se il codice sorgente del documento compila correttamente",
    "OPI-07",
    "Fase PB",
    "Durate la fase PB, soprattutto nella fase finale, alcuni membri del gruppo hanno avuto difficoltà a maturare le ore produttive necessarie per portare a completamento il progetto",
    "Durante diversi incontri, tra cui uno con il professore Vardanega, è stata analizzata la situazione di ogni membro riguardo alle ore produttive svolte e si è stimato il tempo e il lavoro necessario per completare il progetto. Successivamente ogni membro si è impegnato a completare le ore mancanti, mantenendo comunque un buon livello di qualità",
    "OPI-08",
    "Fase PB",
    "Durante la fase PB, dove la maggior parte della codifica ha luogo, si è riscontrata una difficoltà nel tenere aggiornati tutti i membri con i progressi e le scelte relative al codice prese",
    "Per risolvere il problema si è deciso di aggiornare periodicamente tutto il gruppo riguardo progressi e scelte e di lavorare maggiormente in piccoli gruppi, in modo sincrono, soprattutto per svolgere attività dove modifiche, scelte e discussioni sono necessarie",
  ),
)

== Valutazione sui ruoli

#figure(
  caption: "Valutazione sui ruoli",
  table(
    columns: (0.4fr, 0.8fr, 1fr, 1fr, 1fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*Codice*], [*Periodo*], [*Ruolo*], [*Problema*], [*Azione correttiva*]),
    "RL-01",
    "Inizio progetto",
    "Tutti",
    "Il gruppo ha riscontrato difficoltà nel capire i compiti assegnati a ciascun ruolo, e come assegnarli",
    "È stato deciso di assegnare i ruoli in maniera arbitraria in base alle attività da svolgere del singolo membro in caso di necessità",
    "RL-02",
    "Inizio progetto",
    "Verificatore",
    "Il ruolo del verificatore ",
    "Si è deciso di caricare ogni cambiamento alla repository attraverso una pull request, il verificatore ha il compito di approvarla",
    "RL-03",
    "Inizio progetto",
    "Responsabile, Amministratore",
    "È risultata poco chiara la differenza tra i ruoli di responsabile e amministratore",
    "I ruoli di responsabile e amministratore vengono dichiarati ad ogni riunione insieme agli altri ruoli, e vengono chiariti i singoli compiti da eseguire. Questi sono basati su quanto imparato dal corso di Ingegneria del Software",
  ),
)
== Valutazione sugli strumenti

#figure(
  caption: "Valutazione sugli strumenti utilizzati",
  table(
    columns: (0.4fr, 0.6fr, 0.8fr, 1fr, 1fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*Codice*], [*Periodo*], [*Strumento*], [*Problema*], [*Azione correttiva*]),
    "STR-01",
    "Inizio progetto",
    "Git, GitHub",
    "Non essendo molto familiare con gli strumenti di git, il gruppo ha avuto difficoltà all'inizio del progetto a gestire i branch, pull request e assegnare le issues",
    "Durante un incontro sono state spiegate le diverse funzionalità di git per creare un branch nuovo e la procedura per il merge. Inoltre ogni issue veniva assegnato a una o più persone per garantire una migliore organizzazione",
    "STR-02",
    "PoC",
    "GPT-4o mini, Python, Svelte, MongoDB, FastAPI, Chroma",
    "Essendo tutti strumenti nuovi per la maggior parte del gruppo, è risultato difficile capire come utilizzarli e come integrarli tra loro",
    "Le persone già familiari con questi strumenti hanno spiegato il loro modo d'uso agli altri membri, sono state richieste comunque delle ore aggiuntive a ogni persona per imparare e capire le basi degli strumenti utilizzati",
    "STR-03",
    "Fine primo periodo",
    "Typst",
    "Verso il revisionamento per RTB, la nuova versione di Typst 0.13 ha causato dei problemi nel compilare le tabelle. Queste venivano schiacciate e venivano visualizzate come una singola linea",
    "Nella nuova versione è stato modificato un tag usato per creare le tabelle nei documenti, è bastato aggiungere un altro tag insieme a quello usato",
  ),
)