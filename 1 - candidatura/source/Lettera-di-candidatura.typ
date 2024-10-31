#import "../../template/lettera.typ" : *

#show : doc => documento(
    titolo: "Lettera di presentazione",
    data: [31 Ottobre 2024],
    sommario: "Dichiarazione della scelta del capitolato",
    ruoli: (
        "Luca Ribon","Responsabile",
        "Matteo Bazzan","Redattore",
        "Filippo Sabbadin","Validatore",
        "Francesco Fragonas","Validatore",
        "Gabriele Magnelli","Validatore",
        "Luca Rossi", "Validatore",
        "Yi Hao Zhuo", "Validatore"
    ),
    versioni : (
        "0.1.0","31/10/2024","Filippo Sabbadin","Prima stesura",
        "0.2.0","31/10/2024","","Stesura finale"
    ),
    doc,
)

Egregio Prof. Vardanega Tullio,\
Egregio Prof. Cardin Riccardo \

con la presente il gruppo _CodeHex16_ comunica di volersi candidare e impegnare nell'appalto numero C7: 

#align(center)[*Assistente virtuale - Ergon*]

proposto dall'azienda _Ergon_.

== Documentazione

#show link: underline

Tutti i collegamenti ai documenti sono disponibili alla pagina web:
#align(center)[https://codehex16.github.io] 
In alternativa è possibile accedere direttamente alla repository:
#align(center)[https://github.com/CodeHex16/documentazione]
strutturata nel seguente modo:

#align(center)[
```
documentazione/
    ├── 📂 template/        # file di template per i documenti/
    │   └── 📂 images/      # assets per i documenti
    ├── 📂 verbali/
    │   ├── 📂 interni/
    │   │   ├── 📂 source/
    │   │   └── 📄 *.pdf
    │   └── 📂 esterni/
    │       ├── 📂 source/
    │       └── 📄 *.pdf
    └── 📂 1 - candidatura
        ├── 📂 source/
        └── 📄 *.pdf
```
]

=== Verbali
#table(
  columns: (1fr, 1fr, 3fr),
  inset: 8pt,
  align: center,
  fill: (x,y) => if (y== 0) { luma(230) },
  table.header(
    [*Data*], [*Tipo*], [*Documento*], 
  ),
  "21/10/2024","Interno", link("https://github.com/CodeHex16/documentazione/tree/main/verbali/interni/2024-10-21_Incontro-Iniziale.pdf")[2024-10-21_Incontro-Iniziale.pdf],
  "22/10/2024","Interno", link("https://github.com/CodeHex16/documentazione/tree/main/verbali/interni/2024-10-22_Discussione-Capitolati.pdf")[2024-10-22_Discussione-Capitolati.pdf],
  "25/10/2024","Esterno", link("https://github.com/CodeHex16/documentazione/tree/main/verbali/esterni/2024-10-25_Incontro-Ergon.pdf")[2024-10-25_Incontro-Ergon.pdf],
  "28/10/2024","Interno", link("https://github.com/CodeHex16/documentazione/tree/main/verbali/interni/2024-10-28_Revisione-documenti.pdf")[2024-10-28_Revisione-documenti.pdf],
  "31/10/2024","Interno", link("https://github.com/CodeHex16/documentazione/tree/main/verbali/interni/2024-10-31_Lettera-e-Revisione-finale.pdf")[2024-10-31_Lettera-e-Revisione-finale.pdf],
)

=== Candidatura
#table(
  columns: (1fr, 1fr),
  inset: 8pt,
  align: center,
  fill: (x,y) => if (y== 0) { luma(230) },
  table.header(
    [*Data*],[*Documento*], 
  ),
  "24/10/2024", link("https://github.com/CodeHex16/documentazione/blob/main/1%20-%20candidatura/Valutazione-Capitolati.pdf")[Valutazione-Capitolati.pdf],
  "28/10/2024", link("https://github.com/CodeHex16/documentazione/blob/main/1%20-%20candidatura/Preventivo-Costi-e-Impegni.pdf")[Preventivo-Costi-e-Impegni.pdf],
  
)

In particolare nel documento #link("https://github.com/CodeHex16/documentazione/blob/main/1%20-%20candidatura/Preventivo-Costi-e-Impegni.pdf")[Preventivo-Costi-e-Impegni.pdf] si specifica che il costo totale per ultimare il progetto ammonta a *€13.350* e la data di consegna ultima è il *28/04/2024*.

