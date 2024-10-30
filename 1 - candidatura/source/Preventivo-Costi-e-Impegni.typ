#import "../../template/documenti.typ" : *

#show : doc => documento(
    titolo: "Preventivo costi e dichiarazione impegni",
    data: [28/10/2024],
    sommario: "Dichiarazione dei costi e ore di lavoro",
    ruoli: (
        "Filippo Sabbadin","Redattore",
        "Matteo Bazzan","Verificatore",
        "Luca Ribon","Verificatore",
        "Francesco Fragonas","Verificatore",
        "Gabriele Magnelli","Verificatore",
        "Luca Rossi", "Verificatore",
        "Yi Hao Zhuo", "Verificatore"
    ),
    versioni : (
        "0.1.0","28/10/2024","Filippo Sabbadin","Prima stesura",
    ),
    doc,
)

= Calcolo ore

== Data stimata di consegna
La data di consegna stimata per il prodotto finito è il giorno *28/04/2025*.

== Ore generali

Ogni membro del gruppo CodeHex16 si impegna a lavorare per un totale di 94 ore distribuite in  25 settimane.
#table(
  columns: (1.5fr, 1fr, 1fr, 1fr),
  inset: 8pt,
  align: (x,y) => if(x==0 and y>0 and y< 7) {left} else {center+horizon},
  fill: (x,y) => if (y== 0 or y == 7) { luma(230) },
  table.header(
    [*Ruolo*], [*Costo/Ora*], [*Ora/Ruolo*], [*Totale Ruolo*], 
  ),
  "Responsabile","30","70","2100",
  "Amministratore","20","70","1400",
  "Analista","25","88","2200",
  "Progettista","25","120","3000",
  "Programmatore","15","180","2700",
  "Verificatore","15","130","1950",
  "Totale","",[*658 h*],[*13350 €*]
)

== Ore per membro

#table(
  columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 8pt,
  align: (x,y) => if(x==0 and y>0) {left} else {center+horizon},
  fill: (x,y) => if y== 0 or x==7 { luma(230) },
  table.header(
    [*Membro*], [*Resp.*], [*Amm.*], [*Anal.*], [*Proget.*], [*Prog.*], [*Verif.*], [*Totale*]
  ),
  "Ribon","10","10","12","17","26","19","94",
  "Bazzan","10","10","12","18","26","18","94",
  "Fragonas","10","10","12","17","26","19","94",
  "Magnelli","10","10","12","17","26","19","94",
  "Sabbadin","10","10","13","17","26","18","94",
  "Rossi","10","10","14","17","25","18","94",
  "Zhuo","10","10","13","17","25","19","94",
)