#import "../../template/lettera.typ": *

#show: doc => documento(
  titolo: "\nLettera di Presentazione PB",
  data: [21/05/2025],
  ruoli: (
    "Matteo Bazzan",
    "",
    "Luca Ribon",
    "",
    "Francesco Fragonas",
    "Redattore",
    "Gabriele Magnelli",
    "",
    "Filippo Sabbadin",
    "",
    "Luca Rossi",
    "",
    "Yi Hao Zhuo",
    "",
  ),
  doc,
)

Con il presente documento il gruppo CodeHex16 intende presentare la propria candidatura alla Product
Baseline (PB) per il capitolato C7: *Assistente virtuale* proposto dall'azienda Ergon.

Tutta la documentazione scritta è disponibile al seguente link:
#align(center, link("https://codehex16.github.io"))
dove è possibile trovare i seguenti documenti:
- Verbali interni ed esterni;
- #link("https://codehex16.github.io/docs/3%20-%20PB/Specifica-Tecnica.pdf")[#underline("Specifica Tecnica")];
- #link("https://codehex16.github.io/docs/3%20-%20PB/Manuale-Utente.pdf")[#underline("Manuale Utente")];
- #link("https://codehex16.github.io/docs/3%20-%20PB/Piano-di-Progetto.pdf")[#underline("Piano di Progetto")];
- #link("https://codehex16.github.io/docs/3%20-%20PB/Analisi-dei-Requisiti.pdf")[#underline("Analisi dei Requisiti")];
- #link("https://codehex16.github.io/docs/3%20-%20PB/Piano-di-Qualifica.pdf")[#underline("Piano di Qualifica")];
- #link("https://codehex16.github.io/docs/3%20-%20PB/Norme-di-Progetto.pdf")[#underline("Norme di Progetto")];
- #link("https://codehex16.github.io/docs/glossario/glossario.pdf")[#underline("Glossario")] (consultabile anche dal #link("https://codehex16.github.io/glossario.html")[#underline("sito web")] del gruppo);
Inoltre, viene fornito il codice sorgente del *Minimum Viable Product (MVP)*, presentato e accettato dall'azienda proponente in data 21/05/2025 come descritto nel verbale esterno #link("")[#underline("LINK VERBALE ESTERNO DA INSERIRE !!!")] \
#align(center, link("https://github.com/CodeHex16/MVP"))

Il gruppo infine comunica che il costo totale per la realizzazione del progetto è sceso a *€12.657* rispetto a €12.895 dichiarati in fase di candidatura e che la data di consegna è stata posticipata dal 28/04/2025 al *21/05/2025*. \

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
