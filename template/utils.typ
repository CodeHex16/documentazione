#let toIdCase(str) = {
  return lower(str).replace(" ", "-")
}

#let gloss(body) = {
  link("https://codehex16.github.io/glossario#"+toIdCase(body.text))[#text(blue, size:12pt, font: "Noto Sans")[#underline[#body]\*]]
}

#let issue(number, title, repo: "documentazione") = {
  show link : it => {
    set text(font: "Noto Sans", weight: 700)
    underline(it)
  }
  link("https://github.com/CodeHex16/"+repo+"/issues/"+number)[
    #title
  ]
}

#let pseudoheading(body) = {
  set align(center)
  set par(justify: false)
  smallcaps(body)
}