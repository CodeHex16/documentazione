#import "../../template/documenti.typ" : *
#import "../../template/i-figured.typ"

#show : doc => documento(titolo: "Piano di Qualifica", data: [03/01/2024], ruoli: (
  "Matteo Bazzan",
  "",
  "Luca Ribon",
  "",
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
), sommario: [], versioni: ("0.1.0", "03/01/2024", "Filippo Sabbadin", "Prima stesura", ""), doc)

= Introduzione e scopo

== Glossario

== Versioni e maturità

== Riferimenti

=== Riferimenti normativi
- Capitolato C7 - LLM : Assistente Virtuale
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C7.pdf")

- Norme di Progetto
=== Riferimenti informativi
- Slide T08:

- Slide T09:

- Verifica e validazione:

- ISO/IEC 9126:2001 SWE Product Quality;
- ISO/IEC 14598:1999 SW Product Evaluation;
- ISO/IEC 25000:2005 SQuaRE: Systems and software Quality;
- 25010:2011 Quality model;
- 25020:2019 Quality measurement framework;
- 25030:2007 Quality requirements;
- 25040:2011 Quality evaluation;
- ISO 9000:2015 (fondamenti e glossario);
- ISO 9001:2015 (sistema qualità - requisiti);
  - ISO/IEC/IEEE 90003:2018 (versione applicata ai prodotti SW)
- ISO 9004:2018 (qualità organizzativa - autovalutazione)
- ISO/IEC 33020:2019.

= Metriche di qualità

== Qualità di processo

=== Fornitura

=== Sviluppo

=== Documentazione

#table(
  columns: (0.8fr, 2fr, 1.2fr, 1.2fr),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { left } else { center + horizon },
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*]),
  "MPC0000",
  "Indice di Gulpease",
  "\u{2265}40",
  "\u{2265}60",
)
Formula per l'indice di Gulpease:\
$ 89+((300*"numero di frasi") - (10*"numero di lettere"))/"numero di parole" $\
=== Verifica

=== Gestione della qualità

== Qualità del prodotto

= Qualità di prodotto