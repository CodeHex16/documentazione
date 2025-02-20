#import "../../../template/verbale.typ": *

#show : doc => verbale(
  titolo: "Coordinamento Sprint 8",
  ordine-del-giorno: ("Revisione Sprint 7", "Coordinamento per lo Sprint 8", "Condivisione progressi documenti RTB",),
  data: [14/02/2025],
  ora: [9:00-13:00],
  tipo: "interno",
  versioni: ("0.1.0", "14/02/2025", "Filippo Sabbadin", "Prima stesura", "Ribon Luca"),
  presenze: (
    "Matteo Bazzan",
    "Verificatore",
    "4h",
    "Luca Ribon",
    "Verificatore",
    "4h",
    "Filippo Sabbadin",
    "Relatore",
    "3h",
    "Francesco Fragonas",
    "Verificatore",
    "4h",
    "Gabriele Magnelli",
    "Verificatore",
    "4h",
  ),
  doc,
)

= Revisione Sprint 7
Durante la riunione è stato analizzato il lavoro svolto nello *Sprint 6* e lo stato attuale dei documenti. In
particolare, il gruppo si è concentrato sul documento #gloss[Analisi dei Requisiti], a seguito dell'incontro con il prof.
Cardin. Inoltre, sono stati controllati i documenti #gloss[Piano di Progetto], #gloss[Norme di Progetto] e si è deciso
di portare a termine il #gloss[Piano di Qualifica] entro questo sprint. Infine è stato controllato lo stato del #gloss[PoC] con
chiarimenti di dubbi sulla struttura di esso all'interno del gruppo.

= Revisione ruoli e durata Sprint
A seguito degli scorsi sprint, il team ha concordato sulle seguenti modifiche:
- *Rotazione dei ruoli*: I nuovi ruoli per lo sprint 8 sono i seguenti:
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 8pt,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Membro*], [*Ruolo Sprint 6*], [*Ruolo Sprint 7*]),
  "Matteo Bazzan",
  "Verificatore",
  "Programmatore",
  "Francesco Fragonas",
  "Programmatore",
  "Programmatore",
  "Gabriele Magnelli",
  "Amministratore",
  "Verificatore",
  "Luca Ribon",
  "Analista",
  "Analista",
  "Luca Rossi",
  "Responsabile",
  "Amministratore",
  "Filippo Sabbadin",
  "Analista",
  "Responsabile",
  "Yi Hao Zhuo",
  "Programmatore",
  "Analista",
)

= Azioni future
- #issue("6")[*Aggiornare sito web con una nuova struttura*].
- #issue("207")[*Sistemare use case e requisiti nell'adr*].
- #issue("211")[*Stesura verbale esterno 2025-02-14*].
- #issue("204")[*Togliere la tabella versionamento dai verbali*].
- #issue("205")[*Aggiunta sprint 7 al piano di progetto*].
- #issue("209")[*Stesura del verbale interno 2025-02-14*].
- #issue("213")[*Aggiungere cruscotto delle metriche nel piano di qualifica*].
- #issue("1")[*PoC database*].
- #issue("2")[*Continuazione PoC LLM*].
- #issue("4")[*Sistemare i link interni del sito web*].
- #issue("215")[*Conclusioni piano di qualifica*].
- #issue("217")[*Continuare norme di progetto*].
