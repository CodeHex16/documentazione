#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Coordinamento Sprint 2",
    ordine-del-giorno: ("Revisione Sprint 1", "Coordinamento per lo Sprint 2", "Modifiche ai ruoli"),
    data: [26/11/2024],
    ora: [16:00-18:00],
    tipo: "interno",
    versioni: (
      "0.1.0","26/11/2024","Luca Ribon","Prima stesura", "Filippo Sabbadin"
    ),
    presenze: (
        "Luca Ribon","Relatore", "2h",
        "Francesco Fragonas", "Verificatore", "2h",
        "Filippo Sabbadin", "Verificatore", "2h",
        "Matteo Bazzan", "Verificatore", "2h",
        "Gabriele Magnelli", "Verificatore", "1h20m",
    ),
    doc,
)

= Revisione Sprint 1
Abbiamo discusso brevemente il lavoro svolto durante lo Sprint 1, analizzando le #gloss[task] completate e quelle rimaste in sospeso; successivamente abbiamo aggiornato la rendicontazione delle ore di conseguenza.

= Coordinamento per lo Sprint 2
Per lo sprint 2 abbiamo definito delle task relative ai documenti "#gloss[Analisi dei Requisiti]", "#gloss[Glossario]", "#gloss[Norme di Progetto]" e "#gloss[Piano di Progetto]". Ognuna di queste è stata assegnata ai membri con il ruolo adatto.

= Modifiche ai ruoli
Abbiamo deciso di modificare anticipatamente alcuni dei ruoli dopo aver risolto dei dubbi a riguardo, e tenendo in considerazione anche come sono state affrontate le task passate e le nuove task assegnate.
I ruoli aggiornati sono:
- Francesco Fragonas: passa da Progettista ad Amministratore
- Luca Rossi: passa da Verificatore ad Analista
- Yi Hao Zhuo: passa da Amministratore a Verificatore

= Azioni future
- #issue("56")[*Aggiornamento glossario*]: Agggioramento del glossario con i termini usati nei documenti dello sprint 2
- #issue("57")[*Individuazione use case Interfaccia Utente*]: Definizione iniziale degli  use case relativi all'interfaccia utente
- #issue("59")[*Descrizione del prodtto*]: Stesura della sezione "Descrizione del prodotto" del documento "Analisi dei Requisiti"
- #issue("60")[*Individuazione use case Amministratore*]: Definizione iniziale degli use case relativi all'interfaccia amministratore
- #issue("62")[*Studio del contenuto del documento Norme di Progetto*]: Definizione della struttura e del contenuto del documento "Norme di Progetto"
- #issue("63")[*Studio del contenuto del documento Piano di Progetto*]: Definizione della struttura e del contenuto del documento "Piano di Progetto"