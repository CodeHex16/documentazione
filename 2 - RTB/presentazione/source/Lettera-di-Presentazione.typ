#import "../../../template/lettera.typ": *

#show: doc => documento(
  titolo: "\nLettera di Presentazione RTB",
  data: [07/03/2025],
  ruoli: (
    "Matteo Bazzan",
    "Verificatore",
    "Luca Ribon",
    "Verificatore",
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
  ),
  doc,
)

Con il presente documento il gruppo CodeHex16 intende presentare la propria candidatura alla Requirements and Technology
Baseline (RTB) per il capitolato C7: *Assistente virtuale* proposto dall'azienda Ergon.

Tutta la documentazione scritta è disponibile al seguente link:
#align(center, link("https://codehex16.github.io"))
dove è possibile trovare i seguenti documenti:
- Verbali interni ed esterni;
- #link("https://codehex16.github.io/docs/2%20-%20RTB/Analisi-dei-Requisiti.pdf")[#underline("Analisi dei Requisiti")];
- #link("https://codehex16.github.io/docs/2%20-%20RTB/Piano-di-Qualifica.pdf")[#underline("Piano di Qualifica")];
- #link("https://codehex16.github.io/docs/2%20-%20RTB/Piano-di-Progetto.pdf")[#underline("Piano di Progetto")];
- #link("https://codehex16.github.io/docs/2%20-%20RTB/Norme-di-Progetto.pdf")[#underline("Norme di Progetto")];
- #link("https://codehex16.github.io/glossario.html")[#underline("Glossario")];
Inoltre, viene fornito il codice sorgente del Proof of Concept (PoC) al seguente link:\
#align(center, link("https://github.com/CodeHex16/proof-of-concept"))
Il gruppo inoltre conferma che il costo totale per la realizzazione del progetto è rimasto a *€12.895* con data di consegna il *28/04/2025*.\
Di seguito, vengono forniti nome, cognome e numero di matricola dei membri del gruppo CodeHex16:
#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: center,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Nome Cognome*], [*Matricola*]),
  "Luca Ribon", "2075516",
  "Matteo Bazzan", "2076422",
  "Filippo Sabbadin", "2010008",
  "Francesco Fragonas", "2076436",
  "Gabriele Magnelli", "2075542",
  "Luca Rossi", "2042374",
  "Yi Hao Zhuo", "2044939",
)
Rimaniamo in attesa di un Vostro riscontro.
