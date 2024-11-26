#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Revisione documenti",
    ordine-del-giorno: ("Revisione documenti", "Stesura bozza preventivo costi","Tracciamento attività con GitHub"),
    data: [28/10/2024],
    ora: [15:00-18:00],
    tipo: "interno",
    versioni: (
      "0.2.0","26/11/2024","Yi Hao Zhuo","Aggiunta link glossario","",
      "0.1.0","28/10/2024","Matteo Bazzan","Prima stesura","Yi Hao Zhuo"
    ),
    presenze: (
        "Matteo Bazzan","Redattore","3h",
        "Luca Ribon","Responsabile" ,"3h",
        "Francesco Fragonas","Verificatore","3h",
        "Gabriele Magnelli","Verificatore","3h",
        "Filippo Sabbadin","Verificatore","3h",
        "Yi Hao Zhuo","Verificatore","3h",
        "Luca Rossi","Verificatore","40min"
    ),
    doc,
)

= Revisione documenti

In seguito al primo Diario di Bordo tenutosi durante la lezione del 28/10/2024, il gruppo ha avviato una revisione approfondita dei documenti precedentemente realizzati, aggiornandoli in base alle domande e risposte emerse dalle presentazioni dei vari gruppi. Questo lavoro di revisione ci ha permesso di affinare la struttura e il contenuto dei nostri documenti per garantirne una maggiore chiarezza e coerenza.

== Verbali interni

Nei verbali interni abbiamo aggiunto una tabella dedicata al versionamento, già presente nei documenti di candidatura, ma che mancava nei verbali. Questa tabella consente di tenere traccia della versione di ogni documento, specificando chi ha effettuato le modifiche e in quale data, facilitando così il controllo delle modifiche e la tracciabilità delle stesse.

== Verbali esterni

Abbiamo inoltre rielaborato il verbale esterno redatto durante l'incontro con l'azienda Ergon Informatica (Capitolato 7 "LLM: Assistente Virtuale"), con l'obiettivo di mettere in evidenza le risposte ricevute dal referente aziendale e ciò che il gruppo ha compreso dalle domande poste. Anche in questo verbale è stata inserita la tabella per il versionamento, coerentemente con quanto fatto per i verbali interni.

== Documenti di Candidatura

Infine, abbiamo rivisitato il documento di valutazione capitolati, apportando gli ultimi dettagli necessari, con un focus particolare sul capitolato per il quale abbiamo espresso preferenza. Questa revisione ha comportato un'analisi più accurata dei contenuti per rafforzare le motivazioni a supporto della nostra scelta.

= Stesura Preventivo dei Costi e delle Tempistiche

Abbiamo iniziato a redigere il documento di preventivo, considerando sia i costi sia le tempistiche necessarie per la realizzazione del progetto. Abbiamo prestato particolare attenzione al rispetto del tetto massimo di previsione dei costi: il budget stabilito non potrà essere superato. In caso di difficoltà, è possibile ridurre i costi solo diminuendo le ore dei ruoli più costosi e redistribuendole a favore dei ruoli con un costo orario inferiore, in modo da rimanere entro i limiti di spesa.

Inoltre, è stato concordato un periodo di conclusione del progetto, tenendo conto della possibilità di eventuali imprevisti che potrebbero richiedere un prolungamento dell'impegno.

Per facilitare il calcolo dei costi con le relative ore e per avere una data stimata di fine progetto abbiamo creato un #link("https://docs.google.com/spreadsheets/d/16KMeeW7fNX_SnfywgynXvfblE6J0bMLXzpujRgH2c2Q/edit?gid=2000412310#gid=2000412310",[#underline[*documento su Google Fogli*]]).

= Sistema di Tracciamento delle Attività

Abbiamo introdotto l'uso delle #gloss[GitHub Issues] come sistema di tracciamento delle attività da assegnare ai membri del gruppo. Questo strumento ci permette di gestire e monitorare le attività in modo efficace, favorendo una chiara suddivisione dei compiti.

Oltre ad aver già creato alcune issue iniziali, abbiamo impostato una prima milestone relativa alla fase di candidatura, in modo da avere una panoramica delle attività necessarie per il completamento di questa fase. Inoltre, abbiamo configurato una #gloss[GitHub board] per visualizzare lo stato di avanzamento delle issue, suddividendole in tre colonne: To Do, In Progress, e Done. Questo sistema ci consente di monitorare facilmente il progresso di ogni attività e di aggiornare lo stato di ciascun task in tempo reale.