#import "../../../../template/verbale.typ": *


#show: doc => verbale(
  titolo: "Coordinamento Sprint 3",
  ordine-del-giorno: ("Revisione Sprint 2", "Coordinamento per lo Sprint 3", "Ruotazione dei ruoli"),
  data: [04/12/2024],
  ora: [16:30-18:30],
  tipo: "interno",
  versioni: (
    "0.1.1",
    "11/12/2024",
    "Yi Hao Zhuo",
    "Aggiunta link glossario",
    "Matteo Bazzan",
    "0.1.0",
    "04/12/2024",
    "Gabriele Magnelli",
    "Prima stesura",
    "Matteo Bazzan",
  ),
  presenze: (
    "Luca Ribon",
    "Verificatore",
    "2h",
    "Filippo Sabbadin",
    "Verificatore",
    "2h",
    "Matteo Bazzan",
    "Verificatore",
    "2h",
    "Gabriele Magnelli",
    "Relatore",
    "2h",
    "Yi Hao Zhuo",
    "Verificatore",
    "2h",
  ),
  doc,
)

= Revisione Sprint 2
Abbiamo discusso il lavoro svolto durante lo #gloss[Sprint] 2 e analizzato le #gloss[task] completate e quelle rimaste in sospeso; successivamente abbiamo aggiornato la rendicontazione delle ore.\
Inoltre, sono stati introdotti e verranno introdotti nuovi #gloss[branch] per gestire al meglio le #gloss[pull request] e i singoli documenti più importanti come "#gloss[Analisi dei Requisiti]", "#gloss[Norme di Progetto]" e "#gloss[Piano di Progetto]"

= Coordinamento per lo Sprint 3
Per lo #gloss[sprint] 3 abbiamo definito nuove task generiche relative ai documenti Analisi dei Requisiti, Norme di Progetto, Piano di Progetto e il "#gloss[Glossario]".

= Ruotazione ruoli
Abbiamo applicato la ruotazione dei ruoli, quindi per i prossimi due sprint (sprint 3 e sprint 4) i ruoli aggiornati sono:
#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header(
    [*Membro*],
    [*Ruolo*],
  ),

  "Matteo Bazzan", "Verificatore",
  "Francesco Fragonas", "Analista",
  "Gabriele Magnelli", "Amministratore",
  "Luca Ribon", "Analista",
  "Luca Rossi", "Responsabile",
  "Filippo Sabbadin", "Analista",
  "Yi Hao Zhuo", "Verificatore",
)

= Azioni future
- #issue("83")[*Stesura piano di progetto*]: Continuazione stesura del documento Piano di Progetto;
- #issue("82")[*Stesura Norme di Progetto*]: Continuazione stesura del documento Norme di Progetto;
- #issue("81")[*Aggiungere #gloss[use case] nella repo*] e #issue("95")[*Completare introduzione nell'analisi dei requisiti*]: Continuazione stesura del documento Analisi dei Requisiti;
- #issue("56")[*Aggiornamento glossario*]: Agggioramento del glossario con i termini usati nei documenti dello sprint 3;
