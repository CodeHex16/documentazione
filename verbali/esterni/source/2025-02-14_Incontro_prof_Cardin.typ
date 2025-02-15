#import "../../../template/verbale.typ": *

#show : doc => verbale(
  titolo: "Incontro con il Professor Cardin",
  ordine-del-giorno: ("Discussione sulla corretteza degli Use Case scelti", "Chiarimenti dubbi sull'Analisi dei requisiti"),
  data: [14/02/2025],
  ora: [8:40-9:00],
  tipo: "esterno",
  versioni: ("0.1.0", "14/02/2025", "Filippo Sabbadin", "Prima stesura", ""),
  presenze: (
    "Matteo Bazzan",
    "Verificatore",
    "20m",
    "Luca Ribon",
    "Verificatore",
    "20m",
    "Francesco Fragonas",
    "Verificatore",
    "20m",
    "Gabriele Magnelli",
    "Redattore",
    "20m",
    "Filippo Sabbadin",
    "Verificatore",
    "20m",
  ),
  doc,
)
= Scopo dell'incontro

= Domande poste
#set enum(numbering: "Q1.", spacing: 1.5em)

+ _Domanda_\
  \Risposta

= Conclusioni