#let gloss(body) = {
  link("https://codehex16.github.io/glossario#"+body.text)[
    #text(blue, size:12pt, font: "Noto Sans")[#underline[#body]\*]
  ]
}

#let issue(number, title) = {
  show link : it => {
    set text(font: "Noto Sans")
    underline(it)
  }
  link("https://github.com/CodeHex16/documentazione/issues/"+number)[
    #title
  ]
}

#let documento(
  titolo: "Titolo del documento",
  email: "unipd.codehex16@gmail.com",
  destinatari: ("Prof. Vardanega Tullio","Prof. Cardin Riccardo"),
  fase: [Candidatura],
  versioni : (
    "0.1.0","","","",
  ),
  data: [],
  sommario: [],
  ruoli: (
  ),
  
  contenuto,
) = {
  set text(font: "Noto Sans")
  set text(size: 12pt)
  set par(justify: true, linebreaks: "optimized")
  show link : set text(font:"Jetbrains Mono");


  set page(numbering: "1")
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
  par(justify: false)[
    #text(28pt, weight: "black", fill: black, hyphenate: false)[#titolo]
  ]

  align(right+horizon)[
    #stack(spacing: 1em,..destinatari)
    Università degli Studi Di Padova \ \
    #data
  ]

  align(left+bottom)[
  #table(
        columns: (auto, auto),
        stroke: none,
        table.vline(start: 0, x:1, stroke: 0.5pt),
        inset: 10pt,
        ..ruoli
      )
  ]
  

  
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
    footer: [
      #context { align(center, counter(page).display(page.numbering)) }
    ],
  )

  // CONTENUTO 
  set align(left)

  contenuto

  v(5em)
  align(right)[
    Cordiali saluti, \
    Il gruppo _CodeHex16_
  ]
}