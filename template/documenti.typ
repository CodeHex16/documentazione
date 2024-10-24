#let documento(
  titolo: "Titolo del documento",
  email: "unipd.codehex16@gmail.com",
  data: [],
  versione : [0.1.0],
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
  

  // Titolo
  set align(center)
  par(
    justify: false, 
    text(28pt, weight: "black", fill: black, hyphenate: false)[#titolo]
  )

  table(
    columns: (auto,auto),
    align: left,
    inset: 10pt,
    stroke: none,
    [*Data*], [#data],
    table.hline(stroke: 0.5pt),
    [*Ora*], [#ora],
    table.hline(stroke: 0.5pt),
    [*Versione*], [#versione]
  )


  // Presenze
  set align(left)

  set align(left)
  table(
        columns: (auto, auto),
        stroke: none,
        table.vline(start: 1, x:1, stroke: 0.5pt),
        inset: 10pt,
        table.header(text(size:14pt)[*Presenze*]),
        ..presenze
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
    #v(1em)
  ] 
  
  counter(page).update(1)
  contenuto
}