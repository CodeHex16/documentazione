#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Scelte organizzative e coordinamento",
    ordine-del-giorno: ("Formalizzazione sistema di versionamento","Modifica alla rotazione dei ruoli", "Miglioramento sistema di issue", "Coordinamento sull'analisi dei requisiti"),
    data: [19/11/2024],
    ora: [16:00-18:15],
    tipo: "interno",
    versioni: (
      "0.1.0","19/11/2024","Luca Ribon","Prima stesura", ""
    ),
    presenze: (
        "Luca Ribon","Relatore" ,"2h15m",
        "Francesco Fragonas", "Responsabile", "2h",
        "Filippo Sabbadin","Redattore","2h",
        "Matteo Bazzan","Verificatore","2h15m",
        "Gabriele Magnelli","Verificatore","1h",
        "Yi Hao Zhuo","Verificatore","2h15min"
    ),
    doc,
)

= Modifica alla rotazione dei ruoli
rotazione ogni due settimane, sprint da una

= Miglioramento sistema di issue
(usare progetti git per rendicontazione ore, integrazione sprint)