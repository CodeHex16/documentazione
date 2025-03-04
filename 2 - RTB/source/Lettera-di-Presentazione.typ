#import "../../template/lettera.typ": *

#show: doc => documento(
  titolo: "\n\nLettera di Presentazione RTB",
  data: [04/03/2025],
  ruoli: ("Filippo Sabbadin", "Redattore"),
  versioni: ("0.1.0", "Filippo Sabbadin", "Prima Stesura", "",),
  doc,
)

Egregio Prof. Vardanega Tullio,\
Egregio Prof. Cardin Riccardo,\
\
Con il presente documento il gruppo CodeHex16 intende presentare la propria candidatura alla Requirements and Technology
Baseline (RTB) per il capitolato C7:\
#align(center)[*Assistente virtuale*]\
Proposto dall'azienda Ergon.\
Tutta la documentazione scritta è disponibile al seguente link:
#align(center, link("https://codehex16.github.io"))
dove è possibile trovare i seguenti documenti:\
- verbali interni ed esterni;
- analisi dei requisiti;
- piano di qualifica;
- piano di progetto;
- norme di progetto;
- glossario (in alto a sinistra);
Inoltre, viene fornito il Proof of Concept (PoC) al seguente link:\
#align(center, link("https://github.com/CodeHex16/proof-of-concept"))
Il gruppo inoltre conferma che il costo totale per la realizzazione del progetto è rimasto a *€12.895* con data di
consegna il *28/04/2025*.\
Di seguito, vengono forniti nome, cognome e numero di matricola dei membri del gruppo CodeHex16:\
#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: center,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Nome Cognome*], [*Matricola*]),
  "Luca Ribon",
  "2075516",
  "Matteo Bazzan",
  "2076422",
  "Filippo Sabbadin",
  "2010008",
  "Francesco Fragonas",
  "2076436",
  "Gabriele Magnelli",
  "2075542",
  "Luca Rossi",
  "2042374",
  "Yi Hao Zhuo",
  "2044939",
)
Rimaniamo in attesa di una Vostra risposta.