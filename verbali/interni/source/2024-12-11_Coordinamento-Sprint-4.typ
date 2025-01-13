#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Coordinamento Sprint 4",
    ordine-del-giorno: ("Revisione Sprint 3", "Coordinamento per lo Sprint 4", "Incontro azienda Ergon", "Revisione ruoli e durata sprint"),
    data: [11/12/2024],
    ora: [15:00-17:30],
    tipo: "interno",
    versioni: (
      "0.1.2","24/12/2024","Luca Ribon","Correzione durata sprint",  
      "0.1.1","11/12/2024","Francesco Fragonas","Correzione titolo e link issue", "Matteo Bazzan",
      "0.1.0","11/12/2024","Francesco Fragonas","Prima stesura", "Matteo Bazzan"
    ),
    presenze: (
        "Luca Ribon","Verificatore", "2h30min",
        "Filippo Sabbadin", "Verificatore", "2h30min",
        "Matteo Bazzan", "Verificatore", "2h30min",
        "Francesco Fragonas", "Relatore", "2h30min",
        "Yi Hao Zhuo", "Verificatore", "2h30min"
    ),
    doc,
)

= Revisione Sprint 3
Durante la riunione è stato analizzato il lavoro svolto nello *Sprint 3*, con un focus sulle #gloss[task] completate e su quelle attualmente in sviluppo. È stato constatato che tutte le attività sono state avviate, senza alcuna task rimasta non iniziata. Inoltre, è stata aggiornata la rendicontazione delle ore in base al lavoro svolto.

= Coordinamento per lo Sprint 4
Per lo *Sprint 4* sono state definite nuove task sulla base del lavoro già completato. Le attività previste riguardano:

- Proseguimento nella stesura dei documento per l'#gloss[RTB].
- Realizzazione del Proof of Concept (#gloss[PoC]) per la parte frontend, testando due tecnologie diverse: #gloss[Svelte] e #gloss[Vue.js].

= Incontro con l'azienda Ergon
È stato svolto un incontro online con il referente dell’azienda #gloss[proponente], *Ergon Informatica*, per discutere i seguenti argomenti:

- Chiarimenti sull'utilizzo degli #gloss[LLM].
- Definizione della struttura ideale del sistema per delineare meglio gli #gloss[Use Case] per l'#gloss[Analisi dei Requisiti].
Approfondimenti sulla realizzazione del PoC.

= Revisione ruoli e durata Sprint
A seguito dell’esperienza maturata durante gli sprint precedenti, il team ha concordato sulle seguenti modifiche:

- *Durata degli sprint*: Si passerà da sprint di 1 settimana a sprint di 2 settimane per avere una gestione più efficace delle task più complesse e per una sincronizzazione con la rotazione dei ruoli. Questa modifica sarà applicata a partire dallo Sprint 4.
- *Revisione dei ruoli*: Per favorire lo sviluppo dei PoC, sono state apportate modifiche ai ruoli assegnati per lo Sprint 4:
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 8pt,
  fill: (x,y) => if (y== 0) { luma(230) },
  table.header(
    [*Membro*], [*Ruolo Sprint 3*], [*Ruolo Sprint 4*]
  ),
  "Matteo Bazzan", "Verificatore", "Programmatore",
  "Francesco Fragonas",	"Analista", "Verificatore",
  "Gabriele Magnelli", "Amministratore", "Amministratore",
  "Luca Ribon",	"Analista", "Analista",
  "Luca Rossi",	"Responsabile", "Responsabile",
  "Filippo Sabbadin",	"Analista", "Analista",
  "Yi Hao Zhuo",	"Verificatore", "Programmatore"
)

= Azioni future

- #issue("1",repo:"proof-of-concept")[*Realizzazione PoC dell'#gloss[interfaccia web] con Svelte*] e #issue("2",repo:"proof-of-concept")[*Vue.js*]: Sviluppo con Svelte e Vue.js per confrontare i due framework in termini di complessità e tempi di sviluppo.
- #issue("97")[*Stesura #gloss[Norme di Progetto]*]: Continuazione stesura del documento Norme di Progetto.
- #issue("98")[*Stesura Verbale esterno*]: Stesura del verbale esterno relativo all'incontro odierno con il referente dell'azienda.
- #issue("104")[*Definizione Use Case dell'interfaccia cliente*] e #issue("105")[*#gloss[fornitore]*]: Coninuazione della definizione degli Use Case nel documento Analisi dei Requisiti.
- #issue("102")[*Aggiornamento #gloss[Glossario]*]: Aggiornamento del glossario sulla base dell'aggiornamento dei documenti.
