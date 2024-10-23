#let verbale(
  titolo: "Titolo del verbale",
  ordine-del-giorno: (),
  data: [],
  tipo: "interno",
  versione : "0.1.0",
  presenze: (
  ),
  contenuto,
) = {
  set text(font: "Noto Sans")
  set text(size: 12pt)
  set par(justify: true)
  show link : set text(font:"Jetbrains Mono");


  grid(
    columns: (1fr, 1fr),
    align : horizon,
    
    align(left, 
    image("images/logo_unipd.svg", height: 6em),
    ), 
    align(right,
    stack(
      align(center)[
      #image("images/logo_extended.jpg", width: 13em)
      #v(0em)
      #text(size: 10pt, fill: rgb("#424242"),
      link("mailto:unipd.codehex16@gmail.com"))

      ]
    )
    )
  )
  
  
  v(2em)
  // Titolo
  set align(center)
  text(28pt, weight: "black", fill: black)[#titolo]

  // Sottotitolo
  v(0.5em)
  text(16pt, weight: "bold", fill: black)[Verbale di riunione #tipo \ ]
  // Data
  v(0em)
  text(12pt, weight: "regular", fill: black)[Data: #data] 
  v(0em)
  text(12pt, weight: "regular", fill: black)[Versione: #versione] 
  v(2em)
  block(
    //stroke: stroke(paint: gray, thickness: 1pt, dash: "loosely-dashed"),
    fill: luma(247),
    radius: 0.5em,
    inset: 2em,
  // Ordine del giorno
    [

      #text(16pt, weight: "bold", fill: black)[Ordine del giorno]
      #v(0.5em)
      #align(left)[
        #text(12pt, weight: "regular", fill: black, )[
          #list(tight: false,spacing: auto, .. ordine-del-giorno)
        ]
      ]
    ]
  )

  // Presenze
  v(2em)
  set align(left)
  block(
    radius: 0.5em,
    inset: 2em,
    [
      #set align(left)
      #text(16pt, weight: "bold", fill: black)[Presenze]
      #list(tight: false, spacing: auto, ..presenze)
      
    ]
  )

  // INDICE
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
  
  counter(page).update(1)
  contenuto
}