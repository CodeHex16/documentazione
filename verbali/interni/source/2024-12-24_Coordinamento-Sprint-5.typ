#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Coordinamento Sprint 5",
    ordine-del-giorno: ("Revisione Sprint 4", "Coordinamento per lo Sprint 5", "Condivisione progressi documenti RTB","Scelta framework per webapp", "Nome della webapp"),
    data: [24/12/2024],
    ora: [9:00-12:00],
    tipo: "interno",
    versioni: (
      "0.1.0","24/12/2024","Matteo Bazzan","Prima stesura", "Filippo Sabbadin"
    ),
    presenze: (
        "Matteo Bazzan", "Relatore", "3h",
        "Luca Ribon","Verificatore", "3h",
        "Filippo Sabbadin", "Verificatore", "3h",
        "Francesco Fragonas", "Verificatore", "3h",
        "Yi Hao Zhuo", "Verificatore", "3h",
        "Gabriele Magnelli", "Verificatore", "3h",
    ),
    doc,
)

= Revisione Sprint 4
Durante la riunione è stato analizzato il lavoro svolto nello *Sprint 4*, in particolare sono stati condivisi i progressi sui documenti Norme di Progetto e Analisi dei Requisiti, sono stati presentati i due POC sviluppati con due framework diversi Svelte e Vue.js.

= Scelta del framework per la webapp
Durante lo Sprint 4 è stata condotta un'analisi approfondita tra i framework Vue.js e Svelte/SvelteKit attraverso lo sviluppo di PoC paralleli. In seguito alla presentazione da parte dei due incaricati e averne valutato i risultati, il team ha deciso di adottare Svelte per lo sviluppo della webapp. 

La scelta è stata motivata dai seguenti fattori:
- Compilazione anticipata del codice che risulta in un bundle più leggero e prestazioni runtime migliori, più adatto alle prestazioni solitamente più modeste dei dispositivi mobile.
- Il nuovo sistema di reattività introdotto in Svelte 5.
- Sintassi più pulita e vicina al vanilla JavaScript/HTML.

= Definizione del nome per la webapp
Durante la riunione è stato ufficialmente definito il nome che sarà dato alla webapp del chatbot: *"Suppl-AI"*. 

La scelta è stata il risultato di una discussione che ha considerato i seguenti aspetti:
- La fusione tra il termine "Supply" (fornitura) e "AI" (Artificial Intelligence).
  - Il termine "Supply" richiama il target dell'utenza di questa webapp, ovvero fornitori che offrono questo chatbot ai loro clienti.
  - Il suffisso "AI" evidenzia il fatto che ci si interfaccia con un modello di intelligenza artificiale.

Il nome "Suppl-AI" verrà utilizzato in tutta la documentazione ufficiale e nel materiale tecnico del progetto, sostituendo le denominazioni generiche utilizzate finora.

= Revisione ruoli e durata Sprint
A seguito degli scorsi sprint, il team ha concordato sulle seguenti modifiche:
- *Rotazione dei ruoli*: Per questo sprint la rotazione dei ruoli non sarà circolare, ma questa volta i ruoli sono stati scelti in base al lavoro precedentemente svolto, in modo da proseguire più efficacemente nella stesura dei documenti dell'RTB e garantire una migliore qualità del lavoro.
- I *nuovi ruoli* per lo Sprint 5 sono:
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 8pt,
  fill: (x,y) => if (y== 0) { luma(230) },
  table.header(
    [*Membro*], [*Ruolo Sprint 3*], [*Ruolo Sprint 4*]
  ),
  "Matteo Bazzan",  "Programmatore","Progettista",
  "Francesco Fragonas","Verificatore","Responsabile",
  "Gabriele Magnelli",  "Amministratore","Amministratore",
  "Luca Ribon",	"Analista","Analista",
  "Luca Rossi",	"Responsabile","Analista",
  "Filippo Sabbadin", "Analista","Verificatore",
  "Yi Hao Zhuo",	"Programmatore","Verificatore",
)

= Azioni future
- #issue("117")[*Procedere con lo studio degli LLM*]: Valutare i modelli degli LLM nel mercato e scegliere quello più adatto alle esigenze del progetto.
- #issue("126")[*Continuare stesura use case*].
- #issue("127")[*Continuare stesura analisi dei requisiti*]: Stesura di altre parti del documenti di analisi dei requisiti che non siano gli Use Case.
- #issue("130")[*Inizio stesura Piano di Qualifica*].
- #issue("131")[*Continuare la stesura Piano di Progetto*].
- #issue("132")[*Continuare la stesura Norme di Progetto*].
- #issue("120")[*Sistemare durata sprint in Google Sheet*]: Aggiornare il documento di Google Sheet con gli sprint di durata 2 settimane.
- #issue("133")[*Aggiornamento Glossario*]: Allineare i termini del glossario aggiungendo i nuovi termini
- #issue("134")[*Stesura diario di bordo n.8 (2025-01-08)*]
