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
    "Redattore",
    "Gabriele Magnelli",
    "Redattore",
    "Filippo Sabbadin",
    "Verificatore",
    "Luca Rossi",
    "Redattore, Verificatore",
    "Yi Hao Zhuo",
    "Verificatore",
  ),
  sommario: [Piano di Progetto],

  versioni: (
    "1.1.0",
    "04/04/2025",
    "Luca Rossi",
    "Aggiunto Sprint 9",
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
- #link("https://docs.google.com/spreadsheets/d/16KMeeW7fNX_SnfywgynXvfblE6J0bMLXzpujRgH2c2Q/edit?gid=359634719#gid=359634719")[#underline("Google Fogli usato come consuntivo orario")] _(ultima consultazione 07-03-2025)_;
- #link("https://github.com/orgs/CodeHex16/projects/1")[#underline("Project Board su GitHub")] _(ultima consultazione 07-03-2025)_;
=== Riferimenti informativi
- Slide T04 - Gestione di Progetto: https://codehex16.github.io/resources/slides/T4.pdf _(ultima consultazione 06-03-2025)_;
- #link("https://www.iso.org/obp/ui/#iso:std:iso:31000:ed-1:v1:en")[#underline[Standard ISO/IEC 31000:2009]] _(versione v1)_;
- Glossario:
  - Documento: #link("https://codehex16.github.io/docs/glossario/glossario.pdf") _(versione 1.0.0)_;
  - Pagina web: #link("https://codehex16.github.io/glossario.html") _(ultima consultazione 06-03-2025)_;


= Analisi dei rischi
Questa sezione del Piano di Progetto ha lo scopo di identificare, analizzare e gestire i rischi che potrebbero influire sull'avanzamento delle attività e sul raggiungimento degli obiettivi prefissati. L'analisi dei rischi è essenziale per mitigare gli impatti di eventuali problematiche e garantire una gestione efficace delle difficoltà riscontrate durante lo sviluppo del progetto.

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
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Comunicazione inefficace*]),
  [*Descrizione*],
  [Una comunicazione scarsa o inefficace tra i membri del team può portare a fraintendimenti, errori e rallentamenti nei tempi di esecuzione],

  [*Probabilità*], [Alta],
  [*Pericolosità*], [Alta],
  [*Rilevamento*],
  [Monitoraggio della qualità e frequenza delle riunioni di aggiornamento, analisi dei #gloss[feedback], misurazione delle performance del team],

  [*Piano di contingenza*],
  [Implementare strumenti di comunicazione efficaci (#gloss[GitHub], #gloss[Telegram]), riunioni regolari di aggiornamento, definire chiaramente i canali di comunicazione],
	//TODO: DA SPOSTARE IN UN'ALTRA TABELLA
  [*Difficoltà di comunicazione interna e leadership debole*],
  [Nelle fasi iniziali il gruppo tendeva a sottovalutare la necessità di una leadership più solida. Le difficoltà riscontrate nello Sprint 8 e 9 (integrazione del PoC, condivisione delle correzioni con il proponente) 
  hanno evidenziato che una leadership chiara e una comunicazione costante sono fondamentali per evitare colli di bottiglia.],

  [*Accorgimenti*],
  [- Definizione più chiara di compiti e responsabilità, con riferimento esplicito alle Norme di Progetto.
  - Uso di canali di messaggistica strutturati (issue #gloss[GitHub] + #gloss[Telegram]) per gestire i feedback in tempo reale.],
)
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Imprecisioni nella pianificazione delle attività*]),
  [*Descrizione*],
  [Errori nella pianificazione possono derivare da scarsa comprensione dei requisiti, stime errate di risorse o tempi, o inesperienza del team],

  [*Probabilità*], [Alta],
  [*Pericolosità*], [Alta],
  [*Rilevamento*],
  [Confronto periodico con il Piano di Progetto e monitoraggio delle attività tramite strumenti come board su GitHub. Ritardi costanti sono segnali chiave],

  [*Piano di contingenza*],
  [Revisionare il Piano di Progetto per aggiornare tempistiche e risorse. In caso di difficoltà, il Responsabile riassegna risorse o posticipa attività],
)
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Impegni personali e universitari*]),

  [*Descrizione*],
  [Gli impegni accademici o personali dei membri del team possono interferire con il rispetto delle scadenze del progetto.],

  [*Probabilità*], [Alta],
  [*Pericolosità*], [Media],
  [*Rilevamento*],
  [Monitoraggio delle scadenze tramite riunioni regolari e verifica delle disponibilità segnalate su un calendario condiviso in Google Fogli.],
  [*Piano di contingenza*],
  [Maggiore attenzione al calendario condiviso, riunioni di aggiornamento più frequenti, eventuale riassegnazione delle attività in caso di assenze prolungate.],
  [*Aggiornamento*],
  [ Nelle fasi iniziali il gruppo tendeva a sottovalutare la necessità di una leadership più solida. Le difficoltà riscontrate nello Sprint 8 e 9 (integrazione del PoC, condivisione delle correzioni con il proponente) 
  hanno evidenziato che una leadership chiara e una comunicazione costante sono fondamentali per evitare colli di bottiglia.],
  [*Accorgimenti*],
  [- Definizione più chiara di compiti e responsabilità, con riferimento esplicito alle Norme di Progetto.
  - Uso di canali di messaggistica strutturati (issue GitHub + Telegram) per gestire i feedback in tempo reale.],
)

== Rischi tecnici
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Inesperienza*]),
  [*Descrizione*],
  [Il team potrebbe non avere l'esperienza necessaria con le competenze richieste dal progetto, portando a errori, inefficienze o rallentamenti nel lavoro],

  [*Probabilità*], [Alta],
  [*Pericolosità*], [Media],
  [*Rilevamento*],
  [Valutazione delle competenze iniziali del team, feedback regolari durante il progresso del progetto],

  [*Piano di contingenza*],
  [Studio individuale delle nuove tecnologie con allineamento continuo fra i membri del gruppo],
)
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Problemi di disponibilità e performance delle #gloss[API] LLM*]),
  [*Descrizione*],
  [Le API LLM potrebbero andare offline o non soddisfare le aspettative in termini di performance, impattando il funzionamento del sistema],

  [*Probabilità*], [Bassa],
  [*Pericolosità*], [Alta],
  [*Rilevamento*], [Monitoraggio continuo delle API e gestione di errori o malfunzionamenti],
  [*Piano di contingenza*],
  [In caso di errori gestirli in modo elegante ed eventualmente implementare un meccanismo di caching dei dati in modo da colmare parzialmente l'assenza temporanea delle API],
)

== Rischi di analisi e progettazione
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Cambiamenti dei requisiti*]),
  [*Descrizione*],
  [Cambiamenti imprevisti richiesti dall'azienda #gloss[proponente] o da nuove esigenze emerse durante il progetto],

  [*Probabilità*], [Media],
  [*Pericolosità*], [Media],
  [*Rilevamento*], [Segnalazioni da parte del cliente o analisi delle modifiche richieste rispetto al piano iniziale],
  [*Piano di contingenza*],
  [Effettuare una buona analisi iniziale dei requisiti e mantenere un dialogo costante con l'azienda proponente, cercando di prevedere modifiche potenziali e valutare il loro impatto in anticipo],
)
#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if (y > 0) { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4) { luma(230) },
  table.header(table.cell(colspan: 2)[*Errori nella progettazione dell'architettura*]),
  [*Descrizione*],
  [Una progettazione inadeguata può compromettere scalabilità e performance, rendendo difficile la gestione del sistema],

  [*Probabilità*], [Media],
  [*Pericolosità*], [Alta],
  [*Rilevamento*],
  [Monitoraggio continuo delle prestazioni tramite test di carico, benchmark e analisi delle aree critiche per identificare potenziali problemi di performance o scalabilità],

  [*Piano di contingenza*],
  [Revisione dell'architettura prima dello sviluppo avanzato, con correzioni tempestive in caso di problemi],
)

#table(
  columns: (1fr, 2fr),
  inset: 8pt,
  align: (x, y) => if y > 0 { left } else { center + horizon },
  fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4 or y == 6 or y == 8) { luma(230) },
  table.header(table.cell(colspan: 2)[*Difficoltà tecniche e integrazione di componenti*]),

  [*Descrizione*],
  [Il team potrebbe non avere l'esperienza necessaria con le tecnologie adottate e le integrazioni richieste, causando errori e inefficienze durante lo sviluppo.],

  [*Probabilità*], [Media],
  [*Pericolosità*], [Media],
  [*Rilevamento*],
  [Valutazione delle competenze iniziali, monitoraggio dei blocchi tecnici e delle difficoltà di integrazione emerse durante gli sprint.],

  [*Piano di contingenza*],
  [Studio individuale delle tecnologie, documentazione interna condivisa e collaborazione diretta tra membri per superare blocchi.],

  [*Aggiornamento*],
  [L’esperienza accumulata durante la realizzazione del PoC, soprattutto sugli strumenti di CI/CD e testing, ha evidenziato aree di incertezza nelle configurazioni.],

  [*Accorgimenti*],
  [- Adozione di un primo pipeline di build e test.,
   - Pianificazione di sessioni di pairing in caso di blocchi tecnici.,
   - Creazione di documentazione interna per i passaggi di setup e deploy.,]
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
Le seguenti tabelle rappresentano un resoconto delle ore svolte dal gruppo con i relativi costi e delle ore svolte da ogni membro.
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

Dall’analisi della retrospettiva del periodo RTB, il gruppo ha rilevato che l’assegnazione delle attività in base alle competenze ha portato a risultati rapidi, ma ha anche generato una disomogeneità nelle ore svolte e nella distribuzione dei ruoli, rallentando la crescita condivisa.

La mancanza di una leadership solida e la scarsa diffusione delle competenze hanno reso il team dipendente da pochi membri esperti, con conseguenti colli di bottiglia in momenti critici. La visione complessiva del lavoro, inoltre, non è sempre stata chiara a tutti i componenti.

Per affrontare queste criticità, il gruppo ha ipotizzato alcune soluzioni:
- dedicare momenti di lavoro condiviso sulla stessa issue, così da favorire la coesione e il passaggio di conoscenze, compatibilmente con gli impegni individuali;
- organizzare sessioni periodiche di affiancamento tra membri esperti e meno esperti, al fine di colmare i gap e distribuire meglio il carico.

Queste misure richiederanno uno sforzo aggiuntivo nel breve periodo, ma nel medio-lungo termine dovrebbero ridurre i colli di bottiglia e migliorare la resilienza del gruppo. L’obiettivo è una maggiore omogeneità nelle competenze e una distribuzione più equilibrata dei compiti, così da prevenire ritardi futuri e aumentare l’efficienza complessiva del lavoro.

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
    "Totale", "", [*644 h*], [#text(maroon)[*0 h*]], [#text(maroon)[*388,35 h*]], [*€ 12.895*],
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
- *#gloss[CA] (Customer Acceptance)*: Dedicato al completamento, alla validazione finale del prodotto e alla consegna al cliente.

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
- *Continuazione definizione Use Case dell’interfaccia cliente e fornitore*: Proseguimento nella definizione degli use case del sistema, con particolare attenzione alle interfacce cliente e fornitore;

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

Un punto chiave di questo sprint è stato l’incontro con il proponente, durante il quale il team ha verificato la completezza degli Use Case e presentato la scelta dell’LLM.

#pseudoheading[*Attività svolte*]

- *Stesura Norme di Progetto*: Continuazione della stesura del documento, con ulteriore dettaglio sulla gestione delle revisioni e degli standard adottati.
- *Aggiornamento Glossario*: Integrazione di nuovi termini tecnici sorti durante la stesura dei documenti.
- *Integrazione Diagrammi UML degli use case*: Aggiunta dei diagrammi per supportare la comprensione delle funzionalità chiave del sistema.
- *Scelta dell’LLM*: Discussione e decisione definitiva sul modello linguistico da integrare nel progetto.

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
Con lo *Sprint 9* il gruppo ha completato la presentazione dell’RTB al docente, ricevendo feedback e indicazioni di miglioramento da parte del prof. Cardin.  
Questa fase ha segnato l’inizio della preparazione per la milestone PB, con particolare attenzione alla riorganizzazione della documentazione e alla progettazione dell’architettura.  
È emersa la necessità di chiarire alcuni aspetti relativi alla struttura dei documenti, gestire in modo più efficace la distinzione tra documentazione interna ed esterna, e definire strumenti per CI/CD e testing.  
Il gruppo ha mostrato capacità di adattamento, reagendo rapidamente ai cambiamenti richiesti e preparando le basi per le attività del prossimo sprint.

#pseudoheading[*Attività svolte*]
- *Presentazione RTB*: Consegna e presentazione della milestone RTB al docente.
- *Ricezione e integrazione dei feedback*: Analisi delle osservazioni del prof. Cardin, con pianificazione delle azioni correttive.
- *Avvio documentazione PB*: Studio e definizione della struttura dei documenti da produrre in PB.
- *Progettazione dell’architettura*: Approfondimento della componente API e database.
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

// == Periodo CA
// Le documentazione relativa al periodo PB verrà redatta dopo il superamento della RTB.

// #pseudoheading[*Obiettivi principali*]

// - *Validazione finale del prodotto*: Esecuzione di test conclusivi per garantire che il prodotto soddisfi tutti i requisiti.
// - *Ottimizzazioni finali*: Correzione degli ultimi bug e miglioramento delle prestazioni.
// - *Aggiornamento dei documenti*: Revisione e completamento della documentazione per la consegna finale.
// - *Consegna al cliente*: Preparazione e presentazione del prodotto finale.
// L'obiettivo principale di questo periodo è stato garantire che il prodotto fosse pronto per l'accettazione finale da parte del cliente, con particolare attenzione alla qualità e alla completezza.
