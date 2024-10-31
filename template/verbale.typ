#let verbale(
  titolo: "Titolo del verbale",
  email: "unipd.codehex16@gmail.com",
  ordine-del-giorno: (""),
  data: [],
  ora: [],
  tipo: "interno",
  versioni : (
    "0.1.0","","","",
  ),
  presenze: (
  ),
  contenuto,
) = {
  set text(font: "Noto Sans")
  set text(size: 12pt)
  set par(justify: true, linebreaks: "optimized",first-line-indent:1em)
  show link : set text(font:"Jetbrains Mono");


  grid(
    columns: (1fr, 1fr),
    align : horizon,
    
    align(left, 
    image("images/logo_unipd.png", height: 6em),
    ), 
    align(right,
      box(
        align(center)[
        #image("images/logo_extended.jpg", width: 13em)
        #v(0em)
        #text(size: 10pt, fill: rgb("#424242"),
        link("mailto:unipd.codehex16@gmail.com"))
        ]
      )
    )
  )
  

  // Titolo
  set align(center)
  par(
    justify: false, 
    text(28pt, weight: "black", fill: black, hyphenate: false)[#titolo]
  )
  // Sottotitolo
  text(16pt, weight: "bold", fill: black)[Verbale di riunione #tipo \ ]

  table(
    columns: (auto,auto),
    align: left,
    inset: 10pt,
    stroke: none,
    [*Data*], [#data],
    table.hline(stroke: 0.5pt),
    [*Ora*], [#ora],
    table.hline(stroke: 0.5pt),
    [*Versione*], [#versioni.at(0)]
  )

  block(
    fill: luma(247),
    radius: 0.5em,
    inset: 2em,
  // Ordine del giorno
    [
      #text(14pt, weight: "bold", fill: black)[Ordine del giorno]
      #align(left)[
        #text(12pt, weight: "regular", fill: black, )[
          #list(tight: false,spacing: auto, ..ordine-del-giorno) 
          //nota: nel caso l'argomento sia uno, aggiungere un virgola dentro la parentesi senza niente dopo, altrimenti da errore perché pensa sia una string e non una lista
        ]
      ]
    ]
  )

  // Presenze
  set align(left)
  table(
        columns: (auto, auto, auto),
        stroke: none,
        table.vline(start: 1, x:1, stroke: 0.5pt),
        table.vline(start:1, x:2, stroke: 0.5pt),
        inset: 9pt,
        table.header(text(size:14pt)[*Presenze*]),
        ..presenze
      )


  // Versionamento
  pagebreak()
  text(size: 16pt, weight: "black", "Registro delle Versioni")
  table(
    columns: (auto,auto,auto,auto),
    inset: 10pt,
    table.header(
      [*Versione*],[*Data*],[*Autore*],[*Cambiamenti*]
    ),
    ..versioni
  )
      

  // Indice
  pagebreak()
  
  set page(
    margin: (top: 4cm, bottom: 4cm, left: 2cm, right: 2cm),
    header: [
      #grid(
        align: horizon, 
        columns: (1fr, 1fr),
        align(left)[#image("images/logo.jpg", width: 2em)], align(right)[#titolo], 
      )
      #line(length: 100%, stroke: 0.5pt)
    ],
    numbering: "I",
    footer: [
      #align(center, line(length: 15%))
      #context { align(center, counter(page).display(page.numbering)) }
    ],
  )
  counter(page).update(1)


  show outline.entry.where(level: 1): it => {
    v(1.5em, weak: true)
    strong(it)
  }
  outline(title: [Indice], indent: auto)


  pagebreak()
  // CONTENUTO 
  set page(numbering: "1")
  set align(left)
  set heading(numbering: "1.")
  show heading.where(level: 1): set align(center)
  show heading : it => [
    #it
    #v(0.2em)
  ] 
  
  counter(page).update(1)
  contenuto

  if tipo == "esterno" {
    align(bottom+right, 
      box()[
        #align(left,
          text("Firma referente azienda")
        )
        #v(3em)
        #line(length: 20em)  
      ]
    )
  }
}