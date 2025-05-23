#import "../../template/documenti.typ": *

#let pseudoheading(body) = {
  set align(center)
  set par(justify: false)
  smallcaps(body)
}

#show: doc => documento(
  titolo: "Piano di Progetto",
  data: [24/10/2024],
  ruoli: (
    "Matteo Bazzan",
    "Verificatore",
    "Luca Ribon",
    "Redattore, Verificatore",
    "Francesco Fragonas",
    "Redattore, Verificatore",
    "Gabriele Magnelli",
    "Redattore, Verificatore",
    "Filippo Sabbadin",
    "Verificatore",
    "Luca Rossi",
    "Redattore, Verificatore",
    "Yi Hao Zhuo",
    "Verificatore",
  ),
  sommario: [Piano di Progetto],

  versioni: (
    "2.0.1",
    "19/05/2025",
    "Luca Rossi",
    "Correzione errori nella sezione PB",
    "Luca Ribon",
    "2.0.0",
    "17/05/2025",
    "Luca Rossi",
    "Aggiunto sprint 15 e
rendicontazione del periodo pb",
    "Gabriele Magnelli",
    "1.6.0",
    "09/05/2025",
    "Luca Rossi",
    "Aggiunto sprint 14",
    "Luca Ribon",
    "1.5.0",
    "05/05/2025",
    "Luca Rossi",
    "Aggiunto sprint 13",
    "Luca Ribon",
    "1.4.0",
    "25/04/2025",
    "Francesco Fragonas",
    "Aggiunto sprint 12",
    "Luca Ribon",
    "1.3.0",
    "18/04/2025",
    "Luca Rossi",
    "Aggiornamento della retrospettiva",
    "Francesco Fragonas",
    "1.2.0",
    "04/04/2025",
    "Luca Rossi",
    "Aggiunto Sprint 10 e 11",
    "Luca Ribon",
    "1.1.0",
    "04/04/2025",
    "Luca Rossi",
    "Aggiunto Sprint 9 e parte della retrospettiva PdP a seguito di RTB",
    "Luca Ribon",
    "1.0.0",
    "06/03/2025",
    "Luca Ribon",
    "Aggiunto Sprint 8, resoconto RTB e correzioni finali",
    "Matteo Bazzan",
    "0.7.0",
    "01-03-2025",
    "Luca Rossi",
    "Aggiunta descrizione Sprint 7",
    "Luca Ribon",
    "0.6.0",
    "14-02-2025",
    "Luca Rossi",
    "Aggiunta descrizione Sprint 6",
    "Luca Ribon",
    "0.5.0",
    "17-01-2025",
    "Gabriele Magnelli",
    "Aggiunta descrizione Sprint 5 e correzione immagine Sprint 4",
    "Luca Rossi",
    "0.4.0",
    "05/01/2025",
    "Francesco Fragonas",
    "Aggiunta sezione Pianificazione del lavoro e Periodi di sviluppo",
    "Yi Hao Zhuo",
    "0.3.0",
    "18/12/2024",
    "Francesco Fragonas",
    "Aggiunta sezione analisi dei rischi",
    "Filippo Sabbadin",
    "0.2.0",
    "05/12/2024",
    "Luca Rossi",
    "Aggiunta sezione preventivo",
    "Matteo Bazzan",
    "0.1.0",
    "24/10/2024",
    "Luca Ribon",
    "Definizione della struttura base e definizione delle linee guida per la stesura",
    "Filippo Sabbadin",
  ),
  doc,
)

= Introduzione
== Glossario
Nel documento verranno evidenziati diversi termini tramite #gloss[questo stile], questi, se premuti, reindirizzeranno alla definizione del termine nel #gloss[glossario]. In questo modo sarà possibile chiarire i termini tecnici o ambigui.
== Scopo del documento
Il documento #gloss[Piano di Progetto] ha come obbiettivo quello di definire le attività e nello specifico di:
- pianificare lo svolgimento delle attività
- valutare lo stato di avanzamento del progetto
- stimare i costi e le risorse necessarie, e aggiornare le stime ad ogni periodo, in modo da poter sempre gestire l'allocazione delle risorse nel modo più efficiente possibile
  - questo punto comprende anche un'analisi dei rischi in cui si può incorrere durante lo svolgimento del progetto; in questo modo possiamo prevenire o mitigare il più possibile le potenziali difficoltà future
// Decidere se integrare ulteriori dettagli riguardo al prodotto (stack tecnologico, ...)
== Scopo del prodotto
Il prodotto consiste nella creazione di un'interfaccia in stile #gloss[chatbot], accessibile tramite interfaccia mobile, che delle aziende fornitrici possono configurare in modo che l'#gloss[assistente virtuale] conosca il contesto aziendale e possa rispondere alle domande dei clienti del #gloss[fornitore].
L'assistente virtuale sfrutta un #gloss[LLM] per comprendere il contesto tramite l'analisi dei documenti aziendali.
Il fornitore, tramite un'#gloss[interfaccia web] di amministrazione, potrà inserire i documenti aziendali, memorizzare delle domande e delle risposte predefinite e gestire gli #gloss[account] dei clienti.
// Riportare le risorse (immagini, grafici, ecc...) utilizzate per la stesura del documento
== Riferimenti
=== Riferimenti normativi
- #link("https://docs.google.com/spreadsheets/d/16KMeeW7fNX_SnfywgynXvfblE6J0bMLXzpujRgH2c2Q/edit?gid=359634719#gid=359634719")[#underline("Google Fogli usato come consuntivo orario")] _(ultima consultazione 19-05-2025)_;
- #link("https://github.com/orgs/CodeHex16/projects/1")[#underline("Project Board su GitHub")] _(ultima consultazione 19-05-2025)_;
=== Riferimenti informativi
- Slide T04 - Gestione di Progetto: https://codehex16.github.io/resources/slides/T4.pdf _(ultima consultazione 19-05-2025)_;
- #link("https://www.iso.org/obp/ui/#iso:std:iso:31000:ed-1:v1:en")[#underline[Standard ISO/IEC 31000:2009]] _(versione v1)_;
- Glossario:
  - Documento: #link("https://codehex16.github.io/docs/glossario/glossario.pdf") _(versione 1.0.0)_;
  - Pagina web: #link("https://codehex16.github.io/glossario.html") _(ultima consultazione 19-05-2025)_;


= Analisi dei rischi
Questa sezione del Piano di Progetto ha lo scopo di identificare, analizzare e gestire i rischi che potrebbero influire sull'avanzamento delle attività e sul raggiungimento degli obiettivi prefissati.
L'analisi dei rischi è essenziale per mitigare gli impatti di eventuali problematiche e garantire una gestione efficace delle difficoltà riscontrate durante lo sviluppo del progetto.

//spero possa aver senso, ma se serve cambio questa modalità

Sono state integrate le informazioni emerse nelle retrospettive (fino allo Sprint 9-10) con l'analisi dei rischi iniziale.
Ogni tabella include una sezione [*Aggiornamento*] dove si riportano gli esiti reali delle misure adottate e le eventuali variazioni di probabilità e pericolosità.

L'approccio adottato prevede l'identificazione delle principali categorie di rischio, la valutazione del grado di pericolosità e la definizione di azioni preventive e piani di mitigazione per affrontare eventuali criticità. Le categorie principali considerate includono:

- *Rischi organizzativi*: problemi legati a pianificazione, gestione delle risorse, comunicazione e rispetto di tempi o #gloss[budget].
- *Rischi tecnici*: difficoltà con strumenti, tecnologie, integrazioni o imprevisti hardware/software.
- *Rischi di analisi e progettazione*: errori nella comprensione dei requisiti, specifiche poco chiare o cambiamenti significativi durante il progetto.

Secondo lo standard ISO/IEC 31000:2009, la gestione dei rischi si articola in cinque fasi chiave:

1. *Identificazione dei rischi*:
  - Riconoscere le fonti di rischio, le aree di impatto e le cause che potrebbero influenzare gli obiettivi del progetto.
  - Utilizzare attività di #gloss[brainstorming] per generare un elenco completo dei rischi potenziali e valutare le circostanze che potrebbero determinare il loro verificarsi.

2. *Analisi dei rischi*:
  - Valutare la probabilità e l'impatto di ciascun rischio per comprenderne la gravità.

3. *Valutazione dei rischi*:
  - Stabilire le priorità tra i rischi identificati, determinando quali richiedono interventi immediati o piani di mitigazione.

4. *Trattamento dei rischi*:
  - Implementare misure per ridurre la probabilità di accadimento e minimizzare i danni, come azioni preventive, soluzioni tecniche o piani di emergenza.

5. *Monitoraggio e revisione dei rischi*:
  - Integrare il controllo dei rischi nel processo di gestione del progetto e effettuare verifiche periodiche per aggiornare la situazione.

== Rischi organizzativi

#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4 or y == 6 or y == 8) { luma(230) },
  table.header(table.cell(colspan: 2)[*Comunicazione inefficace*]),
  [*Descrizione*],
  [Una comunicazione scarsa o inefficace tra i membri del team può portare a fraintendimenti, errori e rallentamenti nei tempi di esecuzione.],

  [*Probabilità*], [Alta],
  [*Pericolosità*], [Alta],
  [*Rilevamento*],
  [Monitoraggio della qualità e frequenza delle riunioni di aggiornamento, analisi dei #gloss[feedback], misurazione delle performance del team.],

  [*Piano di contingenza*],
  [Implementare strumenti di comunicazione efficaci (#gloss[GitHub], #gloss[Telegram]), riunioni regolari di aggiornamento, definire chiaramente i canali di comunicazione.],

  [*Aggiornamento*],
  [Sprint 1: emerse criticità su rotazione dei ruoli troppo rapida. \
    Sprint 2-3: difficoltà nell'uso di GitHub e branch protection, parzialmente risolte. \
    Sprint 9-10: definita leadership più chiara e sessioni di tutoraggio che hanno migliorato la comunicazione, pur restando margini di miglioramento con più membri in parallelo. \
    Sprint 13-15: migliorato il coordinamento interno attraverso check frequenti in chat e riunioni di allineamento pre-consegna, soprattutto per sincronizzare lo sviluppo e le verifiche.],
)

#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Imprecisioni nella pianificazione delle attività*]),
  [*Descrizione*],
  [Errori nella pianificazione possono derivare da scarsa comprensione dei requisiti, stime errate di risorse o tempi, o inesperienza del team.],

  [*Probabilità*], [Alta],
  [*Pericolosità*], [Alta],
  [*Rilevamento*],
  [Confronto periodico con il Piano di Progetto e monitoraggio delle attività tramite strumenti come board su GitHub. Ritardi costanti sono segnali chiave.],

  [*Piano di contingenza*],
  [Revisionare il Piano di Progetto per aggiornare tempistiche e risorse. In caso di difficoltà, il Responsabile riassegna risorse o posticipa attività.],

  [*Aggiornamento*],
  [Sprint 1-5: frequente rotazione dei ruoli e scarsa definizione delle stime hanno causato inefficienze. \
    Sprint 6-7: migliorata la durata degli sprint (due settimane) per gestire meglio i compiti. \
    Sprint 9-10: aggiustata la pianificazione con riunioni più frequenti per rivedere stime e priorità. \
    Sprint 14-15: pianificazione più accurata grazie alla consapevolezza del carico documentale e tecnico residuo. La stima delle ore è risultata più vicina alla realtà.],
)

#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4 or y == 6 or y == 8) { luma(230) },
  table.header(table.cell(colspan: 2)[*Impegni personali e universitari*]),
  [*Descrizione*],
  [Gli impegni accademici o personali dei membri del team possono interferire con il rispetto delle scadenze del progetto.],

  [*Probabilità*], [Alta],
  [*Pericolosità*], [Media],
  [*Rilevamento*],
  [Monitoraggio delle scadenze tramite riunioni regolari e verifica delle disponibilità segnalate su un calendario condiviso in Google Fogli.],

  [*Piano di contingenza*],
  [Concordare una pianificazione flessibile basata sulle disponibilità indicate. In caso di necessità, ridistribuire le attività o posticipare #gloss[task] meno prioritarie.],

  [*Aggiornamento*],
  [Sprint 5-6: festività natalizie e sessione invernale hanno rallentato alcune task. Pianificazione flessibile riduce l'impatto su scadenze. \
    Sprint 12-13: fine sessione e rientro in periodo accademico regolare hanno migliorato la disponibilità del team.],
)

#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Dubbi sulle indicazioni di proponente/docenti*]),
  [*Descrizione*],
  [Difficoltà o dubbi nella comprensione delle indicazioni fornite da proponente o professori possono rallentare il progetto.],

  [*Probabilità*], [Media],
  [*Pericolosità*], [Alta],
  [*Rilevamento*],
  [Il gruppo rileva queste incertezze quando, dopo aver discusso le nuove indicazioni in riunione, rimangono punti di domanda irrisolti.],

  [*Piano di contingenza*],
  [Organizzare incontri di chiarimento con i referenti esterni; se necessario, definire scadenze più lunghe per le task.],

  [*Aggiornamento*],
  [Sprint 9: sono emersi equivoci sulle correzioni del prof. Cardin; risolti con un incontro dedicato. Il rischio rimane attivo in PB se arrivano nuove istruzioni. \
    Sprint 13: chiarito un equivoco sulle modalità di aggiornamento del Piano di Progetto durante un incontro dedicato. Il rischio rimane medio.],
)


== Rischi tecnici

#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Inesperienza*]),
  [*Descrizione*],
  [Il team potrebbe non avere l'esperienza necessaria con le competenze richieste dal progetto, portando a errori, inefficienze o rallentamenti nel lavoro.],

  [*Probabilità*], [Alta],
  [*Pericolosità*], [Alta],
  [*Rilevamento*], [Valutazione delle competenze iniziali del team, blocchi emersi durante gli sprint.],
  [*Piano di contingenza*],
  [Studio individuale delle tecnologie, sessioni di pairing e maggiori momenti formativi interni.],

  [*Aggiornamento*],
  [Sprint 1-4: si è notato che la rotazione dei ruoli troppo frequente aumentava la confusione. \
    Sprint 5-7: si è stabilizzato l'assegnamento in base alle competenze. \
    Sprint 8-10: l'inesperienza è ancora un fattore critico, ma sessioni di tutoring hanno limitato i danni. \
    Sprint 14-15: l'integrazione API è risultata stabile anche durante i test con carichi simulati.],
)

#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Problemi di disponibilità e performance delle #gloss[API] LLM*]),
  [*Descrizione*],
  [Le API LLM potrebbero andare offline o non soddisfare le aspettative in termini di performance, impattando il funzionamento del sistema.],

  [*Probabilità*], [Bassa],
  [*Pericolosità*], [Alta],
  [*Rilevamento*], [Monitoraggio continuo delle API e gestione di errori o malfunzionamenti.],
  [*Piano di contingenza*],
  [Gestire elegantemente gli errori, implementare un meccanismo di caching per colmare l'assenza temporanea delle API.],

  [*Aggiornamento*],
  [Dall'analisi dello Sprint 4 (PoC frontend) e 8-9 (PoC completo), non si è rilevato alcun downtime di API. Il gruppo rimane vigile per possibili cali di performance in fase di stress test.],
)

== Rischi di analisi e progettazione

#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Cambiamenti dei requisiti*]),
  [*Descrizione*],
  [Cambiamenti imprevisti richiesti dall'azienda #gloss[proponente] o da nuove esigenze emerse durante il progetto.],

  [*Probabilità*], [Bassa],
  [*Pericolosità*], [Media],
  [*Rilevamento*], [Segnalazioni da parte del cliente o analisi delle modifiche rispetto al piano iniziale.],
  [*Piano di contingenza*],
  [Effettuare un'analisi iniziale approfondita, mantenere dialogo costante con il proponente, valutare l'impatto delle variazioni e ricalibrare le stime.],

  [*Aggiornamento*],
  [Sprint 1-5: alcuni requisiti tecnici (frontend nativo vs webapp) sono stati rivisti senza grossi disagi. \
    Dopo l'RTB, i requisiti si sono stabilizzati e non sono emersi ulteriori scostamenti. \
    Sprint 13: piccolo aggiustamento nella struttura delle FAQ su richiesta del gruppo stesso, gestito senza impatti significativi.],
)

#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Errori nella progettazione dell'architettura*]),
  [*Descrizione*],
  [Una progettazione inadeguata può compromettere scalabilità e performance, rendendo difficile la gestione del sistema.],

  [*Probabilità*], [Media],
  [*Pericolosità*], [Alta],
  [*Rilevamento*],
  [Monitoraggio continuo delle prestazioni tramite test di carico, benchmark e analisi delle aree critiche.],

  [*Piano di contingenza*],
  [Revisione dell'architettura prima dello sviluppo avanzato, con correzioni tempestive in caso di problemi.],

  [*Aggiornamento*],
  [Negli Sprint 4, 8 e 10 si è definita o aggiornata l'architettura e svolto un PoC di integrazione. Alcune difficoltà sono emerse nel collegare i moduli (LLM, DB, frontend), ma gestite con successivi refactoring. \
    Sprint 11-13: aggiunta di nuove funzionalità (statistiche, storico, gestione preferenze) ha richiesto revisioni parziali ma non critiche all'architettura.],
)

= Preventivo
Il preventivo è stato calcolato considerando i costi orari dei diversi ruoli coinvolti e il numero stimato di ore per ciascuno, basandosi su un'analisi dettagliata delle attività necessarie per il progetto.
Di seguito sono riportate tabelle riepilogative che mostrano sia il compenso totale che il compenso orario per ogni ruolo, oltre alla distribuzione delle ore tra i membri del team.

#figure(
  table(
    columns: (1.5fr, 1fr, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
    fill: (x, y) => if (y == 0 or y == 7) { luma(230) },
    table.header(
      [*Ruolo*],
      [*Costo/Ora*],
      [*Ora/Ruolo*],
      [*Totale Ruolo*],
    ),

    "Responsabile", "30", "63", "1890",
    "Amministratore", "20", "70", "1400",
    "Analista", "25", "75", "1875",
    "Progettista", "25", "119", "2975",
    "Programmatore", "15", "177", "2655",
    "Verificatore", "15", "140", "2100",
    "Totale", "", [*644 h*], [*€ 12.895*],
  ),
  caption: [
    Preventivo di ore e costo per ciascun ruolo
  ],
)
#figure(
  table(
    columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if (x == 0 and y > 0) { left } else { center + horizon },
    fill: (x, y) => if y == 0 or x == 7 { luma(230) },
    table.header(
      [*Membro*],
      [*Resp.*],
      [*Amm.*],
      [*Anal.*],
      [*Proget.*],
      [*Prog.*],
      [*Verif.*],
      [*Totale*],
    ),

    "Ribon", "9", "10", "11", "17", "25", "20", "92",
    "Bazzan", "9", "10", "11", "17", "25", "20", "92",
    "Fragonas", "9", "10", "11", "17", "25", "20", "92",
    "Magnelli", "9", "10", "11", "17", "25", "20", "92",
    "Sabbadin", "9", "10", "11", "17", "25", "20", "92",
    "Rossi", "9", "10", "10", "17", "26", "20", "92",
    "Zhuo", "9", "10", "10", "17", "26", "20", "92",
  ),
  caption: [
    Distribuzione delle ore di ciascun membro del gruppo, suddivise per ruolo
  ],
)

*Metodo di calcolo*: i costi orari sono stati stimati sulla base di #gloss[standard] di mercato e di esperienze precedenti. Le ore totali per ogni ruolo sono state calcolate considerando il numero di attività assegnate e il livello di complessità delle stesse.

== Retrospettiva RTB
Le seguenti tabelle rappresentano un resoconto delle ore svolte dal gruppo con i relativi costi e delle ore svolte da ogni membro, aggiornate alla fine del periodo RTB.

#figure(
  table(
    columns: (1.2fr, 0.8fr, 0.8fr, 1fr, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
    fill: (x, y) => if (y == 0 or y == 7) { luma(230) },
    table.header(
      [*Ruolo*],
      [*Costo/Ora*],
      [*Ora/Ruolo*],
      [#text(maroon)[*Ora/Ruolo Rimanenti*]],
      [*Totale Ruolo*],
      [#text(maroon)[*Costo attuale*]],
    ),

    "Responsabile", "30", "63", [#text(maroon)[21,5]], "1890", [#text(maroon)[1245]],
    "Amministratore", "20", "70", [#text(maroon)[39]], "1400", [#text(maroon)[620]],
    "Analista", "25", "75", [#text(maroon)[6,25]], "1875", [#text(maroon)[1718,75]],
    "Progettista", "25", "119", [#text(maroon)[115,5]], "2975", [#text(maroon)[87,5]],
    "Programmatore", "15", "177", [#text(maroon)[121,25]], "2655", [#text(maroon)[836,25]],
    "Verificatore", "15", "140", [#text(maroon)[84,85]], "2100", [#text(maroon)[827,25]],
    "Totale", "", [*644 h*], [#text(maroon)[*388,35 h*]], [*€ 12.895*], [#text(maroon)[*€ 5.334,75*]],
  ),
  caption: [
    Ore e costo per ciascun ruolo aggiornate al termine del periodo RTB
  ],
)

#figure(
  table(
    columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if (x == 0 and y > 0) { left } else { center + horizon },
    fill: (x, y) => if y == 0 or x == 7 { luma(230) },
    table.header(
      [*Membro*],
      [*Resp.*],
      [*Amm.*],
      [*Anal.*],
      [*Proget.*],
      [*Prog.*],
      [*Verif.*],
      [*Totale*],
    ),

    "Ribon", "7,25", "8", "31,25", "0", "3,25", "9,4", "59,15",
    "Bazzan", "2", "1", "5", "3,5", "26,5", "8,45", "46,45",
    "Fragonas", "11", "8", "0", "0", "17", "6,25", "42,25",
    "Magnelli", "8,75", "11,5", "8,5", "0", "0", "8,5", "37,25",
    "Sabbadin", "3", "0", "22", "0", "0", "10,5", "35,5",
    "Rossi", "9,5", "1", "2", "0", "0", "5", "17,5",
    "Zhuo", "0", "1,5", "0", "0", "9", "7,05", "17,55",
  ),
  caption: [
    Ore per ciascun membro del gruppo, suddivise per ruolo, aggiornate al termine del periodo RTB
  ],
)


Dall'analisi della retrospettiva del periodo RTB, il gruppo ha rilevato che l'assegnazione delle attività in base alle competenze ha portato a risultati rapidi, ma ha anche generato una disomogeneità nelle ore svolte e nella distribuzione dei ruoli, rallentando la crescita come gruppo.

La mancanza di una leadership solida e la scarsa diffusione delle competenze hanno reso il team dipendente da pochi membri esperti, con conseguenti colli di bottiglia in momenti critici. La visione complessiva del lavoro, inoltre, non è sempre stata chiara a tutti i componenti.

Per affrontare queste criticità, il gruppo ha deciso di attuare le seguenti soluzioni:
- dedicare momenti di lavoro condiviso sulla stessa issue, così da favorire la coesione e il passaggio di conoscenze, compatibilmente con gli impegni individuali;
- organizzare sessioni periodiche di affiancamento tra membri esperti e meno esperti, al fine di colmare i gap e distribuire meglio il carico.

Queste misure richiederanno uno sforzo aggiuntivo nel breve periodo, ma nel medio-lungo termine dovrebbero ridurre i colli di bottiglia e migliorare la resilienza del gruppo. L'obiettivo è una maggiore omogeneità nelle competenze e una distribuzione più equilibrata dei compiti, così da prevenire ritardi futuri e aumentare l'efficienza complessiva del lavoro.


=== Aggiornamento preventivo
Analizzando la retrospettiva del periodo RTB il gruppo ha deciso di rivedere il preventivo iniziale senza però apportare modifiche ad ore e costi totali. \
Infatti le modifiche apportate riguardano solo una riorganizzazione delle ore tra i vari ruoli; nella tabella seguente sono riportate le ore e i costi aggiornati a seguito della riorganizzazione e nella colonna "Variazione ore" vengono mostrate le ore aggiunte o rimosse al preventivo iniziale:

#figure(
  table(
    columns: (1.2fr, 0.8fr, 0.8fr, 0.8fr, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
    fill: (x, y) => if (y == 0 or y == 7) { luma(230) },
    table.header(
      [*Ruolo*],
      [*Costo/Ora*],
      [*Ora/Ruolo*],
      [#text(maroon)[*Variazione ore*]],
      [#text(maroon)[*Ora/Ruolo Rimanenti*]],
      [*Totale ruolo*],
    ),

    "Responsabile", "30", "66", [#text(maroon)[+3]], [#text(maroon)[24,5]], [#text(maroon)[1980]],
    "Amministratore", "20", "61", [#text(maroon)[-9]], [#text(maroon)[30]], [#text(maroon)[1220]],
    "Analista", "25", "84", [#text(maroon)[+9]], [#text(maroon)[15,25]], [#text(maroon)[2100]],
    "Progettista", "25", "110", [#text(maroon)[-9]], [#text(maroon)[106,5]], [#text(maroon)[2750]],
    "Programmatore", "15", "185", [#text(maroon)[+8]], [#text(maroon)[129,25]], [#text(maroon)[2775]],
    "Verificatore", "15", "138", [#text(maroon)[-2]], [#text(maroon)[82,85]], [#text(maroon)[2070]],
    "Totale", "", [*644 h*], [#text(maroon)[*-*]], [#text(maroon)[*388,35 h*]], [*€ 12.895*],
  ),
  caption: [
    Ore e costi per ciascun ruolo riorganizzate al termine del periodo RTB
  ],
)
La necessità di riorganizzare la distribuzione ore è stata causata da una mancanza di esperienza e competenze nella pianificazione di progetto, che ha portato a stimare in modo errato le ore necessarie per alcune delle attività svolte nel periodo di RTB.\
Di seguito sono riportate le motivazioni che hanno guidato questa riorganizzazione:
- per il ruolo di *Responsabile* abbiamo preferito aggiungere 3 ore che, seppur poche, ci permetteranno di avere più margine di ore lavorative in caso di necessità;
- per il ruolo di *Amministratore* sono state rimosse 9 ore dato che buona parte della configurazione dell'ambiente di lavoro è già stata svolta; prevediamo che le ore rimanenti bastino per aggiornare i documenti associati a questo ruolo e per compiere eventuali attività di configurazione, legate allo sviluppo, che sorgeranno in futuro;
- per il ruolo di *Analista* abbiamo ritenuto fondamentale aggiungere 9 ore per avere un buon margine in caso fosse necessario rivedere o aggiornare l'analisi dei requisiti;
- per il ruolo di *Progettista* sono state rimosse 9 ore dato che abbiamo ritenuto le ore rimanenti eccessive per il ruolo in questione; questa sovrastima è stata causata da un errore, iniziale, di comprensione delle attività associate a questo ruolo;
- abbiamo notato che il numero di ore impiegate per lo sviluppo del PoC è stato più alto del previsto, per questo abbiamo deciso di aggiungere 8 ore al ruolo di *Programmatore*;
- il ruolo di *Verificatore* ha subito una riduzione di 2 ore dato che per questo ruolo non abbiamo individuato particolari necessità, quindi abbiamo ritenuto ragionevole ridurre le ore di questo ruolo per assegnarle ad altri ruoli che ne necessitano di più.




== Retrospettiva PB

Le seguenti tabelle rappresentano un resoconto delle ore svolte dal gruppo con i relativi costi e delle ore svolte da ogni membro, aggiornate alla fine del periodo PB.

#figure(
  table(
    columns: (1.2fr, 0.8fr, 0.8fr, 1fr, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
    fill: (x, y) => if (y == 0 or y == 7) { luma(230) },
    table.header(
      [*Ruolo*],
      [*Costo/Ora*],
      [*Ora/Ruolo*],
      [#text(maroon)[*Ora/Ruolo Rimanenti*]],
      [*Totale Ruolo*],
      [#text(maroon)[*Costo attuale*]],
    ),

    "Responsabile", "30", "56", [#text(maroon)[0]], "1680", [#text(maroon)[1680]],
    "Amministratore", "20", "77", [#text(maroon)[0]], "1540", [#text(maroon)[1540]],
    "Analista", "25", "85,75", [#text(maroon)[3,25]], "2225", [#text(maroon)[2143,75]],
    "Progettista", "25", "107,95", [#text(maroon)[2,05]], "2750", [#text(maroon)[2698,75]],
    "Programmatore", "15", "199,05", [#text(maroon)[-0,05]], "2985", [#text(maroon)[2985]],
    "Verificatore", "15", "107,25", [#text(maroon)[5,75]], "1695", [#text(maroon)[1608,75]],
    "Totale", "", [*644 h*], [#text(maroon)[*11 h*]], [*€ 12.875*], [#text(maroon)[*€ 12.657*]],
  ),
  caption: [
    Ore e costo per ciascun ruolo aggiornate al termine del periodo PB
  ],
)

#figure(
  table(
    columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if (x == 0 and y > 0) { left } else { center + horizon },
    fill: (x, y) => if y == 0 or x == 7 { luma(230) },
    table.header(
      [*Membro*],
      [*Resp.*],
      [*Amm.*],
      [*Anal.*],
      [*Proget.*],
      [*Prog.*],
      [*Verif.*],
      [*Totale*],
    ),

    "Ribon", "8,75", "8", "36,25", "10,2", "17,55", "14,25", "95",
    "Bazzan", "2", "1", "13", "13,5", "56,5", "9", "95",
    "Fragonas", "11", "8", "0", "7", "44", "18,45", "91,45",
    "Magnelli", "9,75", "20,5", "8,5", "14,25", "21,5", "17,5", "92",
    "Sabbadin", "6,4", "2", "22", "10", "28", "14,5", "91,9",
    "Rossi", "10,5", "29", "3", "16", "6", "14", "86,1",
    "Zhuo", "0", "1,5", "0", "35", "25,5", "19,55", "81,55",
  ),
  caption: [
    Ore per ciascun membro del gruppo, suddivise per ruolo, aggiornate al termine del periodo PB
  ],
)


Dall'analisi delle attività svolte nel periodo PB, il gruppo ha dimostrato una crescita nella capacità di pianificazione e distribuzione del lavoro, riuscendo a completare tutte le attività previste e rispettare quasi completamente le ore assegnate.
La gestione condivisa della fase di verifica e il progressivo allineamento delle competenze tecniche hanno ridotto le disomogeneità osservate nel periodo precedente. La percentuale di completamento dei ruoli principali ha superato il 95% in quasi tutti i casi, con una copertura completa per ruoli chiave come Responsabile, Amministratore e Programmatore.
Nel complesso, il periodo PB ha evidenziato un miglioramento significativo dell'autonomia e dell'efficienza del gruppo rispetto alla fase RTB.

=== Aggiornamento preventivo

Analizzando la retrospettiva del periodo PB il gruppo ha deciso di rivedere il preventivo iniziale senza superare il totale delle ore o dei costi. \
L'aggiornamento ha previsto una riorganizzazione interna tra i ruoli per allineare la distribuzione alle attività effettivamente svolte fino ad ora. Nella tabella seguente vengono riportate le ore aggiornate, le variazioni rispetto al piano originario, le ore rimanenti e i costi aggiornati.

#figure(
  table(
    columns: (1.2fr, 0.8fr, 0.8fr, 0.8fr, 1fr, 1fr),
    inset: 8pt,
    align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
    fill: (x, y) => if (y == 0 or y == 7) { luma(230) },
    table.header(
      [*Ruolo*],
      [*Costo/Ora*],
      [*Ora/Ruolo*],
      [#text(maroon)[*Variazione ore*]],
      [#text(maroon)[*Ora/Ruolo Rimanenti*]],
      [*Totale ruolo*],
    ),

    "Responsabile", "30", "56", [#text(maroon)[-10]], [#text(maroon)[0]], [#text(maroon)[1680]],
    "Amministratore", "20", "77", [#text(maroon)[+16]], [#text(maroon)[0]], [#text(maroon)[1540]],
    "Analista", "25", "89", [#text(maroon)[+5]], [#text(maroon)[3,25]], [#text(maroon)[2225]],
    "Progettista", "25", "110", [#text(maroon)[0]], [#text(maroon)[2,05]], [#text(maroon)[2750]],
    "Programmatore", "15", "199", [#text(maroon)[+14]], [#text(maroon)[-0,05]], [#text(maroon)[2985]],
    "Verificatore", "15", "113", [#text(maroon)[-25]], [#text(maroon)[5,75]], [#text(maroon)[1695]],
    "Totale", "", [*644 h*], [#text(maroon)[*-*]], [#text(maroon)[*11 h*]], [*€ 12875*],
  ),
  caption: [
    Ore e costi aggiornati a seguito della retrospettiva PB
  ],
)

L'aggiornamento è stato dettato da un'analisi dettagliata delle attività svolte durante gli sprint 11-15. Le principali motivazioni alla base della riorganizzazione sono:
- il ruolo di *Responsabile* ha assorbito meno tempo del previsto, permettendo una riduzione di 10 ore;
- per il ruolo di *Amministratore* è emersa una maggiore attività di aggiornamento documentale e supporto, che ha giustificato l'aggiunta di 16 ore;
- il ruolo di *Analista* è stato rifinito, aumentando le ore di 5 per garantire un margine adeguato per eventuali modifiche;
- il ruolo di *Programmatore* ha richiesto un incremento di 14 ore, dovuto a un carico di lavoro maggiore del previsto;
- per il *Verificatore* sono state ridotte 25 ore, in quanto le ore necessarie per le attività di verifica nel periodo PB sono state inferiori rispetto a quanto inizialmente previsto.





= Pianificazione del lavoro
La *pianificazione del progetto* si basa su un modello iterativo e incrementale, con lo scopo di garantire un monitoraggio continuo del progresso e una gestione efficace delle attività. Abbiamo deciso di suddividere il lavoro in #gloss[sprint], ognuno dei quali inizia con un incontro per stabilire obiettivi e analizzare eventuali difficoltà, e si conclude con una retrospettiva sul lavoro svolto. Questo approccio ci ha permesso di adattarci rapidamente alle necessità del progetto, mantenendo una visione chiara delle priorità e dei risultati attesi.

== Organizzazione degli sprint
Gli sprint rappresentano le unità operative fondamentali per il lavoro del gruppo. Inizialmente della durata di una settimana, sono stati successivamente estesi a due settimane per consentire una pianificazione più realistica delle attività.
Ogni sprint inizia con un incontro di pianificazione durante il quale:

- Si analizzano le task concluse, in lavorazione e non ancora iniziate.
- Vengono fissati nuovi obiettivi con priorità e peso relativi.

A fine sprint, si tiene una retrospettiva per valutare il progresso, identificare eventuali ostacoli e migliorare il processo di lavoro.

== Gestione delle task
Le task costituiscono le unità operative elementari del lavoro e vengono gestite tramite una board di GitHub. Ogni task è associata a un responsabile, un peso, una priorità e un ruolo specifico.
Per monitorare l'#gloss[efficienza] e il tempo impiegato, ogni attività è stata tracciata nel dettaglio, includendo la durata prevista e quella effettiva. Questi dati sono riportati su un foglio Google condiviso, che offre una panoramica in tempo reale dell'avanzamento complessivo del progetto.

Questo approccio consente una chiara distribuzione dei compiti, facilitando il controllo del progresso e l'individuazione di eventuali criticità nel raggiungimento degli obiettivi.

= Periodi di sviluppo
== Introduzione
Il progetto è stato suddiviso in tre macro periodi principali, ciascuno associato a una milestone cruciale:

- *#gloss[RTB] (Requirements and Technology Baseline)*: Focus sull'#gloss[analisi dei requisiti], sulla definizione delle tecnologie e sulla preparazione di un Proof of Concept (#gloss[PoC]).
- *#gloss[PB] (Product Baseline)*: Concentrato sull'implementazione delle funzionalità principali e sulla verifica dell'architettura progettata.

Questa suddivisione consente una chiara definizione degli obiettivi di breve e medio termine, facilitando il monitoraggio dell'avanzamento e l'identificazione tempestiva di eventuali criticità.

Ciascun macro periodo è composto da sprint di durata variabile (inizialmente di una settimana, poi portata a due settimane). Gli sprint rappresentano unità operative chiave, durante le quali vengono svolte attività specifiche con obiettivi ben definiti. Per ogni sprint, il team tiene una riunione iniziale per pianificare le task e una retrospettiva finale per valutare i risultati.

Al termine di ogni macro periodo, viene effettuata una revisione complessiva del lavoro svolto, analizzando l'aderenza agli obiettivi prefissati e pianificando le attività per la fase successiva.

== Periodo RTB
*Periodo*: 18/11/2024 - 07/03/2025 (data stimata)

#pseudoheading[*Obiettivi principali*]

- *Analisi dettagliata dei requisiti*: Identificazione e classificazione dei requisiti funzionali e non funzionali del progetto.
- *Studio delle tecnologie*: Esplorazione delle tecnologie proposte e valutazione della loro adeguatezza.
- *Proof of Concept (PoC)*: Realizzazione di una demo iniziale per verificare la fattibilità tecnica del progetto utilizzando le tecnologie scelte.
- *Documentazione*: Produzione dei documenti fondamentali, tra cui Analisi dei Requisiti, Glossario, Piano di Progetto e #gloss[Norme di Progetto].

Durante questo periodo, il team ha lavorato intensamente sulla comprensione delle esigenze del cliente e sulla definizione delle basi tecnologiche. L'obiettivo era garantire che tutte le scelte progettuali e tecniche fossero ben motivate e supportate da un'adeguata analisi preliminare.

=== Sprint 1
*Intervallo temporale*: 18/11/2024 - 24/11/2024
#pseudoheading[*Restrospettiva*]
Durante lo *Sprint 1*, della durata di una settimana, il gruppo si è concentrato principalmente sulla definizione delle tecnologie da utilizzare per il progetto. In seguito a una discussione con l'azienda proponente, sono stati analizzati i requisiti tecnologici, comprese le opzioni per lo sviluppo dell'app e la scelta degli strumenti da impiegare. Sono state inoltre avviate le attività per la stesura del glossario tecnico, con la creazione di una pagina web ad hoc per il glossario stesso.

Durante lo sprint sono state individuate delle criticità relative ad una frequenza di rotazione dei ruoli troppo alta, date dall'inesperienza nella pianificazione di progetto; queste hanno portando ad un cambio di contesto per i membri troppo frequente e quindi inefficiente.\
Per questo motivo si è deciso, dallo sprint successivo in poi, di aumentare la durata delle assegnazioni dei ruoli in base alle necessità.

#pseudoheading[*Attività svolte*]

- *Analisi app nativa vs #gloss[webapp]*: Discussione con l'azienda per valutare la possibilità di sviluppare una webapp invece di un'app nativa, come inizialmente richiesto nel capitolato.
- *Analisi framework #gloss[frontend]*: Studio dei framework frontend nel caso in cui si decidesse di optare per una webapp.
- *Analisi LLM*: Valutazione dei modelli linguistici (LLM) disponibili per generare le risposte, con focus su parametri come le lingue supportate e i requisiti di training.
- *Analisi database #gloss[SQL]*: Confronto tra diversi database SQL per individuare la soluzione più adeguata al caso d'uso del progetto.
- *Creazione e aggiornamento del Glossario*: Redazione del documento glossario con i termini tecnici fondamentali e creazione della relativa pagina web nel sito, che sarà aggiornata durante il progetto.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint1-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint1-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

=== Sprint 2
*Intervallo temporale*: 25/11/2024 - 01/12/2024
#pseudoheading[*Retrospettiva*]
Durante lo *Sprint 2*, il gruppo ha proseguito i lavori avviati nello Sprint 1, concentrandosi principalmente sull'elaborazione dei documenti fondamentali per il progetto. Sono state definite le attività relative ai documenti "Analisi dei Requisiti", "Glossario", "Norme di Progetto" e "Piano di Progetto". Inoltre, si è proceduto con l'aggiornamento dei ruoli dei membri del gruppo, tenendo conto delle necessità del progetto.

Durante questo sprint il gruppo ha incontrato le prime difficoltà con l'utilizzo di GitHub, che ci concretizzavano in errori nel prodotto presente nella branch principale. Per questo si è deciso di normare l'utilizzo di branch come descritto nel documento "Norme di Progetto"; inoltre è stata introdotta la meccanica di branch protection, a cui sono state integrate delle GitHub Action, in modo da evitare che venissero introdotti nella branch principale documenti non verificati o sorgenti #gloss[typst] con errori di compilazione.

#pseudoheading[*Attività svolte*]

- *Aggiornamento del glossario*: Aggiornamento dei termini tecnici utilizzati nei nuovi documenti creati durante lo Sprint 2.
- *Individuazione #gloss[use case] dell'interfaccia utente*: Definizione preliminare degli use case legati all'interfaccia utente.
- *Individuazione use case amministratore*: Studio e definizione iniziale degli use case relativi all'interfaccia amministrativa.
- *Inizio stesura Analisi dei Requisiti*: Redazione della sezione "Descrizione del prodotto" nel documento "Analisi dei Requisiti".
- *Studio delle Norme di Progetto*: Analisi e definizione della struttura e dei contenuti principali per il documento "Norme di Progetto".
- *Studio del Piano di Progetto*: Analisi e definizione della struttura e dei contenuti principali per il documento "Piano di Progetto".

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint2-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint2-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

=== Sprint 3
*Intervallo temporale*: 02/12/2024 - 08/12/2024
#pseudoheading[*Retrospettiva*]
Durante lo *Sprint 3*, il gruppo ha continuato le attività avviate negli sprint precedenti, concentrandosi sul completamento e l'aggiornamento dei principali documenti di progetto. È stata effettuata una rotazione dei ruoli tra i membri del team per migliorare la distribuzione del carico di lavoro e consentire una maggiore flessibilità operativa. Inoltre, sono stati introdotti nuovi #gloss[branch] nel repository per gestire le #gloss[pull request] e mantenere una maggiore coerenza nella collaborazione.

#pseudoheading[*Attività svolte*]

- *Stesura del Piano di Progetto*: Continuazione del documento, con focus sulle sezioni di pianificazione temporale e risorse necessarie.
- *Stesura delle Norme di Progetto*: Espansione e completamento delle norme per garantire coerenza e standardizzazione durante lo sviluppo.
- *Stesura dell'Analisi dei Requisiti*: Aggiunta degli use case principali e finalizzazione dell'introduzione al documento.
- *Aggiornamento del glossario*: Inserimento di nuovi termini emersi durante lo sviluppo dei documenti.
- *Gestione repository*: Introduzione di branch dedicati per i principali documenti (Analisi dei Requisiti, Norme di Progetto, Piano di Progetto) per una migliore gestione delle pull request.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint3-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint3-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

=== Sprint 4
*Intervallo temporale*: 09/12/2024 - 22/12/2024
#pseudoheading[*Retrospettiva*]
Con lo *Sprint 4* il team ha deciso di estendere la durata degli sprint a due settimane per affrontare in modo più efficace task complesse e migliorare la gestione della rotazione dei ruoli. Durante questo sprint, il focus principale è stato la realizzazione del Proof of Concept (PoC) per il frontend, testando due framework diversi, #gloss[Svelte] e #gloss[Vue.js], e il proseguimento nella stesura dei principali documenti di progetto.

Inoltre è stato svolto un *incontro online* con il referente dell'azienda Ergon Informatica per ottenere chiarimenti essenziali sull'utilizzo degli LLM e sulla struttura del sistema. Questo ha permesso di delineare meglio l'Analisi dei Requisiti e di avviare la pianificazione del Proof of Concept (PoC).

Durante questo sprint ci si è resi conto che il gruppo iniziava ad essere più autonomo e le attività iniziavano ad essere di maggior durata; abbiamo quindi constatato che una durata degli sprint troppo rigida, come quella utilizzata fino ad allora, avrebbe rischiato di ridurre la produttività del gruppo. Per questo motivo si è deciso di aumentare la durata degli sprint.

#pseudoheading[*Attività svolte*]

- *Stesura Norme di Progetto*: Continuazione del documento, con un focus sulla definizione di norme per il codice e i processi di sviluppo.
- *Realizzazione PoC per l'interfaccia web*: Implementazione di un prototipo di interfaccia web utilizzando i framework Svelte e Vue.js, al fine di confrontarne complessità e tempi di sviluppo.
- *Aggiornamento Glossario*: Revisione e aggiornamento dei termini tecnici sulla base del lavoro svolto nello Sprint 4.
- *Stesura Verbale Esterno*: Creazione del verbale relativo all'incontro online con l'azienda Ergon Informatica.
- *Definizione Use Case dell'interfaccia cliente e fornitore*: Proseguimento nella definizione degli use case del sistema, con particolare attenzione alle interfacce cliente e fornitore.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint4-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint4-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

=== Sprint 5
*Intervallo temporale* : 23/12/2024 - 06/01/2025
#pseudoheading[*Retrospettiva*]
Con lo *Sprint 5* il team ha scelto in modo definitivo il nome della webapp e sarà: *#gloss[Suppl-AI]* nome scelto dalla fusione delle parole "Supply"(fornitura) e "AI"(Artificial Intelligence) e si è deciso il framework da usare per la parte frontend della webapp, cioè *Svelte*.

Inoltre, per essere il più efficiente possibile, il team non ha seguito la rotazione circolare dei ruoli, ma questi sono stati assegnati in base alle attività svolte precedentemente da ogni membro del gruppo.

In generale, durante questo sprint, si è continuata la stesura dei documenti principali del progetto.

In questo sprint abbiamo anche cercato di anticipare il calo di produttività dato dalle festività natalizie e dall'avvicinarsi della sessione invernale, per questo abbiamo cercato di adattare e distribuire il carico di lavoro al periodo.

#pseudoheading[*Attività svolte*]

- *Stesura Norme di Progetto*: Continuazione della stesura del documento, con un focus sulla definizione dei ruoli;
- *Stesura Piano di Progetto*: Continuazione della stesura del documento concentrandosi nelle sezioni pianificazione del lavoro e periodi di sviluppo ;
- *Stesura Piano di Qualifica*: Inizio stesura del documento e in particolare iniziando a definire le metriche di qualità;
- *Aggiornamento Glossario*: Revisione e aggiornamento dei termini tecnici sulla base del lavoro svolto nello Sprint 5;
- *Continuazione definizione Use Case dell'interfaccia cliente e fornitore*: Proseguimento nella definizione degli use case del sistema, con particolare attenzione alle interfacce cliente e fornitore;

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint5-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint5-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

=== Sprint 6
*Intervallo temporale*: 07/01/2025 - 20/01/2025
#pseudoheading[*Retrospettiva*]
Con lo *Sprint 6*, il team ha proseguito nella stesura della documentazione principale del progetto.
Inoltre, sono stati integrati i diagrammi #gloss[UML] degli use case.

Un punto chiave di questo sprint è stato l'incontro con il proponente, durante il quale il team ha verificato la completezza degli Use Case e presentato la scelta dell'LLM.

#pseudoheading[*Attività svolte*]

- *Stesura Norme di Progetto*: Continuazione della stesura del documento, con ulteriore dettaglio sulla gestione delle revisioni e degli standard adottati.
- *Aggiornamento Glossario*: Integrazione di nuovi termini tecnici sorti durante la stesura dei documenti.
- *Integrazione Diagrammi UML degli use case*: Aggiunta dei diagrammi per supportare la comprensione delle funzionalità chiave del sistema.
- *Scelta dell'LLM*: Discussione e decisione definitiva sul modello linguistico da integrare nel progetto.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint6-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint6-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

=== Sprint 7
*Intervallo temporale*: 21/01/2025 - 10/02/2025
#pseudoheading[*Retrospettiva*]
Durante lo *Sprint 7*, il team ha completato diverse attività legate alla documentazione. Inoltre, sono stati definiti gli aspetti architetturali del *Proof of Concept* (PoC).

Inoltre abbiamo constatato che la strategia di assegnazione delle attività adottata dallo Sprint 5 è stata discretamente efficace dato che ha permesso di completare quasi tutte le task assegnate nonostante il periodo impegnativo.
Abbiamo inoltre deciso di aumentare ulteriormente la durata degli sprint per poter progredire in modo più efficiente con la stesura dei documenti e lo sviluppo del PoC dato l'avvicinarsi della consegna prevista dell'RTB.

#pseudoheading[*Attività svolte*]

- *Aggiornamento Piano di Progetto*: Revisione e integrazione delle sezioni relative agli sprint precedenti.
- *Continuazione e miglioramento dell'Analisi dei Requisiti*: Revisione e perfezionamento delle sezioni Use Case e Requisiti del documento.
- *Continuazione stesura Piano di Qualifica*: Terminata la sezione delle metriche di qualità e dei test da effettuare.
- *Definizione architettura PoC*: Strutturazione in componenti principali e creazione repository GitHub.
- *Incontro con il prof. Cardin*: è stato svolto un incontro con il prof. Cardin per risolvere alcuni dubbi riguardanti l'Analisi dei Requisiti.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint7-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint7-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

=== Sprint 8
*Intervallo temporale*: 11/02/2025 - 08/03/2025
#pseudoheading[*Retrospettiva*]
Con lo *Sprint 8* il gruppo si è impegnato nel concludere le attività necessarie al raggiungimento dell'RTB, nello specifico è stata conclusa la stesura di tutta la documentazione relativa al periodo RTB ed è stato terminato il PoC.

In questo periodo il gruppo ha dovuto affrontare alcune difficoltà tecniche legate alla realizzazione del PoC. Nello specifico c'è stato bisogno di alcuni incontri di coordinazione tra i membri che hanno contribuito allo sviluppo per gestire l'integrazione tra le componenti del PoC.

#pseudoheading[*Attività svolte*]
- *Completamento del PoC*: Sviluppo delle componenti frontend e #gloss[backend], integrazione con l'API di LLM e implementazione dell'autenticazione.
- *Verifica e correzione dei documenti*: Revisione completa di tutti i documenti per la milestone RTB con correzione aggiornamento del contenuto e correzione degli errori presenti.
- *Finalizzazione del documento Analisi dei Requisiti*: Completamento dei casi d'uso e dei requisiti con relativa verifica.
- *Aggiornamento della struttura del sito web*: Modifica della struttura del sito web per migliorare l'esperienza utente.
- *Incontro con il prof. Cardin*: è stato svolto un incontro con il prof. Cardin per risolvere alcuni dubbi riguardanti l'Analisi dei Requisiti.
- *Preparazione all'RTB*: è stato redatto il materiale necessario alla consegna dell'RTB.


#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint8-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint8-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

=== Sprint 9
*Intervallo temporale*: 12/03/2025 - 22/03/2025

#pseudoheading[*Retrospettiva*]
Con lo *Sprint 9* il gruppo ha completato la presentazione dell'RTB al docente, ricevendo feedback e indicazioni di miglioramento da parte del prof. Cardin.
Questa fase ha segnato l'inizio della preparazione per la milestone PB, con particolare attenzione alla riorganizzazione della documentazione e alla progettazione dell'architettura.
È emersa la necessità di chiarire alcuni aspetti relativi alla struttura dei documenti, gestire in modo più efficace la distinzione tra documentazione interna ed esterna, e definire strumenti per CI/CD e testing.
Il gruppo ha mostrato capacità di adattamento, reagendo rapidamente ai cambiamenti richiesti e preparando le basi per le attività del prossimo sprint.

#pseudoheading[*Attività svolte*]
- *Presentazione RTB*: Consegna e presentazione della milestone RTB al docente.
- *Ricezione e integrazione dei feedback*: Analisi delle osservazioni del prof. Cardin, con pianificazione delle azioni correttive.
- *Avvio documentazione PB*: Studio e definizione della struttura dei documenti da produrre in PB.
- *Progettazione dell'architettura*: Approfondimento della componente API e database.
- *Studio strumenti CI/CD e testing*: Prima valutazione degli strumenti da adottare.
- *Aggiornamento della struttura dei file*: Avvio della riorganizzazione della documentazione interna ed esterna.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint9-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint9-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)


#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4 or y == 6 or y == 8) { luma(230) },
  table.header(table.cell(colspan: 2)[*Ore rimanenti per persona*]),
  [*Membro*], [*Ore mancanti*],
  [Ribon], [31.35],
  [Bazzan], [37.55],
  [Fragonas], [45.75],
  [Magnelli], [54.75],
  [Sabbadin], [48.10],
  [Rossi], [63.50],
  [Zhuo], [74.45],
  [*TOTALE*], [*355.45*],
)

== Periodo PB
Le documentazione relativa al periodo PB verrà redatta dopo il superamento della RTB.

=== Sprint 10
*Intervallo temporale*: 24/03/2025 - 31/03/2025

#pseudoheading[*Retrospettiva*]
Durante lo *Sprint 10*, il gruppo ha consolidato i progressi iniziati nella fase successiva all'RTB. Sono state svolte attività su tutti i fronti: correzione dei documenti secondo i feedback ricevuti,
completamento della progettazione architetturale e avvio dello sviluppo dell'interfaccia fornitore.
La collaborazione è risultata più efficace rispetto agli sprint precedenti, grazie a una maggiore condivisione interna e al chiarimento delle responsabilità nei vari ruoli.
Tuttavia, alcune attività hanno richiesto più tempo del previsto a causa della complessità dell'integrazione dei servizi e della necessità di coordinare i vari moduli in parallelo.

#pseudoheading[*Attività svolte*]
- *Correzione documentazione*: Aggiornamento di Analisi dei Requisiti, Piano di Progetto, Norme di Progetto e struttura dei verbali in seguito all'RTB.
- *Progettazione architettura*: Completamento della progettazione per i servizi LLM, Database e Suppl-AI; iniziale integrazione tra i moduli.
- *Implementazione interfaccia fornitore*: Avvio dello sviluppo frontend e definizione dell'interfaccia lato fornitore.
- *Verifica struttura del Manuale Utente*: Revisione preliminare del contenuto per l'utente finale e per il fornitore.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint10-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint10-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4 or y == 6 or y == 8) { luma(230) },
  table.header(table.cell(colspan: 2)[*Ore rimanenti per persona*]),
  [*Membro*], [*Ore mancanti*],
  [Ribon], [10.6],
  [Bazzan], [21.55],
  [Fragonas], [34.75],
  [Magnelli], [38.75],
  [Sabbadin], [43.1],
  [Rossi], [49.5],
  [Zhuo], [59.45],
  [*TOTALE*], [*257.7*],
)

=== Sprint 11
*Intervallo temporale*: 01/04/2025 - 07/04/2025

#pseudoheading[*Retrospettiva*]
Durante lo *Sprint 11*, il gruppo ha proseguito il lavoro di consolidamento avviato dopo l'RTB. Sono state completate diverse attività fondamentali: correzioni importanti ai documenti principali (Analisi dei Requisiti, Piano di Progetto, Norme di Progetto), implementazione di funzionalità core come l'autenticazione con ruoli tramite #gloss[token], il miglioramento del backend LLM e l'ampliamento del database.
È stato inoltre svolto un incontro esterno con il prof. Cardin, durante il quale sono stati chiariti alcuni dubbi relativi all'Analisi dei Requisiti e alla rappresentazione dell'architettura frontend.
Il gruppo ha avviato anche lo studio della configurazione della pipeline CI/CD, dimostrando una crescente attenzione alla qualità e all'integrazione continua.
La collaborazione interna si è ulteriormente rafforzata, sebbene permangano alcune difficoltà nella gestione delle attività più complesse e nell'integrazione tra moduli diversi.

#pseudoheading[*Attività svolte*]
- *Correzione documentazione*: Aggiornamento di Analisi dei Requisiti, Piano di Progetto e Norme di Progetto in seguito al TB.
- *Incontro esterno con il proponente*: Chiarimenti sull'inclusione tra gli use case, correzione dello use case 40, uso dei pattern MVC con Svelte e rappresentazione dei diagrammi UML.
- *Implementazione interfaccia amministratore*: Inizio sviluppo del frontend per la gestione amministrativa.
- *Implementazione backend LLM e documenti*: Continuazione dello sviluppo delle API di backend.
- *Ampliamento Database*: Revisione e miglioramento della struttura dati.
- *Implementazione autenticazione*: Creazione del sistema di login basato su ruoli e token.
- *Studio della CI/CD*: Analisi e progettazione iniziale della pipeline di integrazione e testing automatizzato.
- *Verifica dei documenti e sviluppo*: Verifica incrociata dei documenti aggiornati e prime implementazioni di test automatici.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint11-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint11-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4 or y == 6 or y == 8) { luma(230) },
  table.header(table.cell(colspan: 2)[*Ore rimanenti per persona*]),
  [*Membro*], [*Ore mancanti*],
  [Ribon], [10.6],
  [Bazzan], [21.55],
  [Fragonas], [34.75],
  [Magnelli], [38.75],
  [Sabbadin], [43.1],
  [Rossi], [39.5],
  [Zhuo], [59.45],
  [*TOTALE*], [*247.7*],
)

=== Sprint 12
*Intervallo temporale*: 08/04/2025 - 15/04/2025

#pseudoheading[*Retrospettiva*]
Durante lo *Sprint 12*, il gruppo ha continuato attivamente lo sviluppo del progetto, concentrandosi sia sull'ampliamento delle funzionalità software sia sull'evoluzione della documentazione tecnica.
Dal lato frontend è proseguita l'implementazione dell'interfaccia amministratore, con particolare attenzione all'aggiunta di personalizzazioni come la gestione dinamica del colore e del logo in modalità chiara e scura.
Sul backend sono state completate funzionalità fondamentali, come l'invio automatico di e-mail alla creazione di un nuovo account utente e le operazioni CRUD su utenti, documenti e #gloss[FAQ].
Contemporaneamente, sono stati avviati i primi capitoli della *#gloss[Specifica Tecnica]*, e si è proseguito con l'introduzione dei test automatici tramite `pytest`, dimostrando una crescente attenzione alla qualità del software.
Nel complesso, non sono emersi problemi rilevanti: l'unica leggera difficoltà si è manifestata nella gestione del lavoro sincrono di più programmatori sul frontend, ma è stata affrontata senza particolari ostacoli.

#pseudoheading[*Attività svolte*]
- *Sviluppo frontend*: Continuazione dell'interfaccia amministratore con pagine dedicate e navigazione.
- *Gestione UI dinamica*: Implementazione della selezione di colore e logo, compatibile con dark/light mode.
- *Invio mail account utente*: Integrazione backend per l'invio automatico di e-mail al momento della registrazione.
- *CRUD utenti/documenti/FAQ*: Implementazione completa delle funzionalità di creazione, lettura, aggiornamento e eliminazione.
- *Specifica Tecnica*: Avvio della stesura dei primi capitoli del documento.
- *Test automatici*: Prosecuzione nello sviluppo di test di integrazione e unitari con `pytest`.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint12-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint12-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4 or y == 6 or y == 8) { luma(230) },
  table.header(table.cell(colspan: 2)[*Ore rimanenti per persona*]),
  [*Membro*], [*Ore mancanti*],
  [Ribon], [9.1],
  [Bazzan], [11.5],
  [Fragonas], [21.75],
  [Magnelli], [30.75],
  [Sabbadin], [34.1],
  [Rossi], [33.5],
  [Zhuo], [51.45],
  [*TOTALE*], [*192.2*],
)

=== Sprint 13
*Intervallo temporale*: 16/04/2025 - 27/04/2025

#pseudoheading[*Retrospettiva*]
Durante lo *Sprint 13*, il gruppo si sta avvicinando alla conclusione del progetto, con soli due sprint rimanenti prima della consegna finale. In questa fase è stato dato maggiore spazio allo sviluppo software, con il completamento delle funzionalità di autenticazione, gestione password e CRUD di documenti, utenti e #gloss[FAQ], inclusa la gestione dinamica di logo e colori.
Sono inoltre state definite e scritte le ultime sezioni delle *Norme di Progetto* e aggiornati *Piano di Qualifica* e *Piano di Progetto* con le ultime metriche e retrospettive.


#pseudoheading[*Attività svolte*]
- *CRUD e autenticazione*: Implementazione del sistema CRUD per utenti/documenti/FAQ e completamento del login frontend e backend.
- *Gestione interfaccia*: Finalizzazione delle personalizzazioni lato fornitore (profilo, logo, dark/light mode).
- *Documentazione*: Aggiornamento di Norme di Progetto (con sezione sviluppo e metriche), Piano di Progetto (retrospettiva sprint 12), Piano di Qualifica e relativi verbali.
- *Pulizia post-merge*: Sistemazione interfaccia dopo merge e rifiniture grafiche.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint13-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint13-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4 or y == 6 or y == 8) { luma(230) },
  table.header(table.cell(colspan: 2)[*Ore rimanenti per persona*]),
  [*Membro*], [*Ore mancanti*],
  [Ribon], [2.8],
  [Bazzan], [6.55],
  [Fragonas], [16.55],
  [Magnelli], [17],
  [Sabbadin], [21.1],
  [Rossi], [24.5],
  [Zhuo], [51.45],
  [*TOTALE*], [*139.95*],
)

=== Sprint 14
*Intervallo temporale*: 28/04/2025 - 04/05/2025

#pseudoheading[*Retrospettiva*]
Durante lo *Sprint 14*, il gruppo ha proseguito il completamento delle ultime funzionalità software lato frontend e backend, concentrandosi sull'integrazione dei moduli e sulla rifinitura dell'interfaccia.
Parallelamente è continuato l'aggiornamento dei documenti principali del progetto, con particolare attenzione alla retrospettiva, agli indici e alle sezioni di sviluppo.
Sono state completate alcune task legate alla verifica grafica, alla valutazione delle risposte del bot e al testing generale del sistema.

#pseudoheading[*Attività svolte*]
- *Aggiornamento documentazione*: Integrazione sezione sviluppo in NdP, aggiornamento PdP, PdQ e AdR.
- *Integrazione backend-frontend*: Sincronizzazione finale tra interfacce e servizi.
- *Verifica e testing*: Prove complete sulla funzionalità del sistema, verifica esecuzione tramite CI/CD.
- *Valutazione risposte bot*: Verifica qualitativa delle risposte generate lato backend.
- *UI e flag utente*: Gestione del flag “remember me” e revisione estetica della pagina FAQ.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint14-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint14-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4 or y == 6 or y == 8 or y == 10 or y == 12) {
    luma(230)
  },
  table.header(table.cell(colspan: 2)[*Ore rimanenti per persona*]),
  [*Membro*], [*Ore mancanti*],
  [Ribon], [0.5],
  [Bazzan], [-0.45],
  [Fragonas], [16.55],
  [Magnelli], [7],
  [Sabbadin], [11.1],
  [Rossi], [17.5],
  [Zhuo], [29.45],
  [*TOTALE*], [*81.65*],
)

=== Sprint 15
*Intervallo temporale*: 29/04/2025 - 19/05/2025

#pseudoheading[*Retrospettiva*]
Durante lo *Sprint 15*, il gruppo ha concluso l'ultima fase di sviluppo prima della consegna, portando a termine numerose attività sia dal lato documentale che software.
Dal punto di vista tecnico sono state completate la gestione dello storico chat, l'integrazione delle statistiche e l'aggiunta di funzionalità mancanti, come la gestione delle preferenze dell'admin, la richiesta della password per modifiche sensibili e la visualizzazione delle FAQ nel contesto della conversazione.
Parallelamente è stato migliorato il testing e aggiornato il Piano di Qualifica con dettagli relativi alla copertura, alle suite e ai risultati.
Sul fronte documentale si è completata la stesura del *Piano di Progetto*, della *Specifica Tecnica* e del *Manuale Utente*, mentre le attività di verifica sono state suddivise equamente.
Lo sprint è stato ben organizzato, con un buon bilanciamento tra il carico tecnico e la chiusura dei documenti, dimostrando una maturità crescente nella gestione del progetto.
Tutti i membri del gruppo hanno raggiunto le ore minime richieste per il progetto.

#pseudoheading[*Attività svolte*]
- *Testing e copertura*: Stesura di test unitari e generazione di report con coverage e risultati aggregati.
- *Statistica e storico*: Completamento delle schermate statistiche frontend e backend, gestione dello storico.
- *Bugfix e miglioramenti*: Correzione bug residuali (es. no-context), gestione della sicurezza nei form e preferenze.
- *Finalizzazione PdP e NdP*: Completamento e verifica degli ultimi capitoli, integrazione delle metriche.
- *Manuale Utente e Specifica Tecnica*: Completamento documenti e verifica.
- *Verifiche finali*: Controllo incrociato di verbali, documenti e codice, aggiornamento documentazione post-merge.

#pseudoheading[*Ruoli ricoperti e ore svolte*]

#figure(
  image("../imgs/sprint15-tabella.png", width: 100%),
  caption: [
    Suddivisione oraria per membro e ruolo.
  ],
)

#figure(
  image("../imgs/sprint15-grafico.png", width: 100%),
  caption: [
    Suddivisione oraria per ruolo con relativi costi.
  ],
)

#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4 or y == 6 or y == 8) { luma(230) },
  table.header(table.cell(colspan: 2)[*Ore rimanenti per persona*]),
  [*Membro*], [*Ore mancanti*],
  [Ribon], [-3],
  [Bazzan], [-3],
  [Fragonas], [0.55],
  [Magnelli], [0],
  [Sabbadin], [0.1],
  [Rossi], [5.9],
  [Zhuo], [10.45],
  [*TOTALE*], [*11*],
)