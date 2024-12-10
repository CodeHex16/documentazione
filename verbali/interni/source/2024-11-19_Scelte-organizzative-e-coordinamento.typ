#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Scelte organizzative e coordinamento",
    ordine-del-giorno: ("Formalizzazione numero di versione","Modifica alla rotazione dei ruoli", "Miglioramento sistema di issue", "Coordinamento sull'analisi dei requisiti", "Pagina Notion"),
    data: [19/11/2024],
    ora: [16:00-18:15],
    tipo: "interno",
    versioni: (
      "0.1.1", "26/11/2024", "Yi Hao Zhuo", "Aggiunta link glossario", "Luca Rossi",
      "0.1.0","19/11/2024","Luca Ribon","Prima stesura", "Filippo Sabbadin"
    ),
    presenze: (
        "Luca Ribon","Relatore", "2h15m",
        "Francesco Fragonas", "Verificatore", "2h",
        "Filippo Sabbadin", "Verificatore", "2h",
        "Matteo Bazzan", "Verificatore", "2h15m",
        "Gabriele Magnelli", "Verificatore", "1h",
        "Yi Hao Zhuo", "Verificatore", "2h15min"
    ),
    doc,
)

= Formalizzazione numero di versione
È stato definito un formato standard per la numerazione delle versioni dei documenti: dato un numero di versione 'x.y.z' dove x, y e z sono numeri interi, si ha che
- *x* è il numero di versione principale, incrementato ogni qual volta il documento sia terminato e pronto per una revisione
- *y* è il numero di versione secondaria, incrementato ogni qual volta il documento sia stato modificato in modo significativo
- *z* è il numero di versione di correzione, incrementato ogni qual volta il documento subisca correzioni minori
Per i verbali si è deciso di usare il formato 0.y.z in quanto questi sono documenti prettamente interni e di durata breve.
Per tutti gli altri documenti invece il formato scelto sarà quello esposto precedentemente (x.y.z).

= Modifica alla rotazione dei ruoli
Si è deciso di rivedere la rotazione dei ruoli che è passata da una frequenza di una settimana a *due settimane*.
Inoltre si è deciso di suddividere il periodo di lavoro in *#gloss[sprint]* della durata di una settimana; questi vengono preceduti da uno #gloss[sprint planning], dove si definiscono gli elementi del #gloss[backlog], e seguiti da uno #gloss[sprint review], dove si valutano i risultati ottenuti e si decide se validarlo. 
== Aggiornamento ruoli
È stata applicata la prima rotazione dei ruoli, nello specifico i ruoli aggiornati sono: 
#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  fill: (x,y) => if (y== 0) { luma(230) },
  table.header(
    [*Membro*], [*Ruolo*], 
  ),
  "Matteo Bazzan", "Analista",
  "Francesco Fragonas",	"Progettista",
  "Gabriele Magnelli", "Analista",
  "Luca Ribon",	"Responsabile",
  "Luca Rossi",	"Verificatore",
  "Filippo Sabbadin",	"Verificatore",
  "Yi Hao Zhuo",	"Amministratore"
)

= Miglioramento sistema di issue
È stata configurata la sezione "Projects" di #gloss[GitHub] per la gestione delle issue, integrando in una view *"Generale"* anche dei dettagli per migliorare la gestione delle attività tramite le issue, in particolare oltre ai campi di default "Assignees", "Labels", "Projects" e "Milestone" si è deciso di aggiungere anche
- *Priorità*: bassa, media, alta
- *Peso*: indica l'entità del lavoro da svolgere; la scala usata è XS, S, M, L, XL (dal meno al più impegnativo)
- *Sprint*: indica a quale sprint è associata l'issue
- *Ruolo*: indica il ruolo che si occupa dell'issue
- *Ore*: indica le ore produttive impiegate per portare a termine l'attività
Inoltre è stata creata anche una view *"Miei TODO"* per permettere ad ogni membro di visualizzare le issue a lui assegnate con lo stesso livello di dettaglio della view Generale.

= Coordinamento sull'analisi dei requisiti
Vista la complessità del documento si è deciso dedicare del tempo a strutturare in modo migliore il lavoro ad esso dedicato: attualmente è stato stabilita la necessità di *tre analisti*, inoltre sono state individuate le prime attività di analisi per l'attuale sprint suddivise per macro argomento.

= Pagina Notion
È stata creata una pagina #gloss[Notion] per organizzare le note interne al gruppo che non necessitano di essere formalizzate in un verbale; quest'ultima, ad esempio, include link utili, dubbi da risolvere, note utili per azioni future o comprensione di determinati argomenti.
È stata avanzata anche la proposta di integrare le issue di GitHub nella pagina Notion in modo da poterle anche manipolare, seguiranno valutazioni di fattibilità.

= Azioni future
- #issue("34")[*Analisi app nativa vs #gloss[webapp]*]: analisi sui vantaggi e svantaggi, e sull'applicabilità dello sviluppare un'applicazione mobile nativa o una webapp.
- #issue("35")[*Analisi framework frontend per webapp*]: nel caso si utilizzasse una webapp sarà conveniente utilizzare un framework per lo sviluppo dell'interfaccia web.
- #issue("36")[*Analisi #gloss[LLM]*]: analisi dei vari modelli proposti per individuare quello più corretto per il caso d'uso.
- #issue("37")[*Analisi database SQL*]: analisi dei database SQL presenti nel mercato per individuare quello più corretto per il caso d'uso.
- #issue("40")[*Aggiunta dei termini dei documenti nel glossario*]: iniziare ad integrare i termini, presenti nei documenti di questo sprint, che lo richiedono nel glossario.
- #issue("41")[*Integrazione github issue nella pagina notion*]: integrare le issue nella pagina notion.
