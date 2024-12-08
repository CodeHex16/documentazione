#let toIdCase(str) = {
  return lower(str).replace(" ", "-")
}

#let gloss(body) = {
  link("https://codehex16.github.io/glossario#"+toIdCase(body.text))[#text(blue, size:12pt, font: "Noto Sans")[#underline[#body]\*]]
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