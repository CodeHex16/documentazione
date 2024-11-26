#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Discussione sui requisiti",
    ordine-del-giorno: ("Discussione incontro Ergon","Preparazione secondo diario di bordo"),
    data: [08/11/2024],
    ora: [16:30-18:00],
    tipo: "interno",
    versioni: (
      "0.3.0","26/11/2024","Yi Hao Zhuo","Aggiunta link glossario", "",
      "0.2.0","12/11/2024","Filippo Sabbadin","Correzione dei ruoli", "Gabriele Magnelli",
      "0.1.0","11/11/2024","Filippo Sabbadin","Prima stesura", "Gabriele Magnelli"
    ),
    presenze: (
        "Luca Ribon","Amministratore" ,"1h",
        "Francesco Fragonas", "Responsabile", "1h30min",
        "Filippo Sabbadin","Redattore","1h30min",
        "Matteo Bazzan","Verificatore","1h30min",
        "Gabriele Magnelli","Verificatore","1h30min",
        "Yi Hao Zhuo","Verificatore","1h30min"
    ),
    doc,
)

= Discussione incontro con Ergon
Il gruppo ha discusso la riunione effettuata online con l'azienda Ergon, con l'obiettivo di chiarire i requisiti del software e delinerare i principali strumenti da utilizzare per la realizzazione del progetto. Questo incontro ha permesso al team di avere una panoramica più chiara sulle esigenze dell'azienda proponente.

= Preparazione secondo diario di bordo
Dopo aver svolto l'incontro con Ergon, il gruppo ha lavorato alla preparazione del secondo diario di bordo che si terrà il giorno 12/11/2024. Durante questa attività sono stati raccolti i progressi realizzati finora e i futuri passi da seguire per il progresso del progetto.

= Azioni future
- *Stesura dell'analisi dei requisiti*: per avanzare con lo sviluppo, il team avvierà la stesura dell'analisi dei requisiti. In questa fase sarà fondamentale prendere una decisione definitiva sulla tipologia di applicazione da adottare (#gloss[webapp] o applicazione in #gloss[.NET MAUI]) e scegliere il modello di linguaggio (#gloss[LLM]) più adatto per soddisfare i requisiti funzionali richiesti.

- *Definizione delle norme di progetto e del glossario*: il team inizierà anche a redigere le norme di progetto e il glossario per mantenere chiarezza all'interno del gruppo e con l'azienda proponente.

