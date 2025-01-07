#import "../../template/documenti.typ" : *
#import "../../template/i-figured.typ"

#show : doc => documento(titolo: "Piano di Qualifica", data: [03/01/2024], ruoli: (
  "Matteo Bazzan",
  "",
  "Luca Ribon",
  "",
  "Francesco Fragonas",
  "",
  "Gabriele Magnelli",
  "",
  "Filippo Sabbadin",
  "Redattore",
  "Luca Rossi",
  "",
  "Yi Hao Zhuo",
  "",
), sommario: [], versioni: ("0.1.0", "03/01/2024", "Filippo Sabbadin", "Prima stesura", ""), doc)

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
In questo documento vengono dichiarate tutte le metriche che il gruppo CodeHex16 userà per misurare la #gloss[qualità] del
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
- Capitolato C7 - LLM : Assistente Virtuale
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")

- Norme di Progetto
=== Riferimenti informativi
- Slide T08:

- Slide T09:

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

- *CC - Completion Cost*
Costo finale raggiunto alla fine del progetto. Idealmente non deve superare quello estimato durante le fasi iniziali.
- *EC - Estimated Cost*
Costo stimato calcolando le ore necessario per lo sviluppo del progetto.

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

=== Documentazione
- *Indice di Gulpease*
Indica la complessità nella lettura di una frase o documento. Considera come variabili il numero di parole, di frasi e
di lettere.\
Formula dell'indice di Gulpease:\
$ 89+((300*"numero di frasi") - (10*"numero di lettere"))/"numero di parole" $ <Gulpease>\
- *Correttezza ortografica*
Indica il numero di errori ortografici presenti nella documentazione.
#figure(caption: [Valori per misurare la qualità della documentazione], table(
  columns: (0.8fr, 2fr, 1.2fr, 1.2fr),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPC0000",
  "Indice di Gulpease",
  "\u{2265}40",
  "\u{2265}60",
  "MPC0000",
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
  columns: (0.8fr, 2fr, 1.2fr, 1.2fr),
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

= Qualità di prodotto