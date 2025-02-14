#import "../../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Correzione della documentazione per la candidatura",
    ordine-del-giorno: ("Correzione preventivo costi", "Revisione GitHub Page","Sistemazione versionamento documenti","Revisione lettera presentazione"),
    data: [04/11/2024],
    ora: [14:40-17:20],
    tipo: "interno",
    versioni: (
      "0.1.1","04/11/2024","Yi Hao Zhuo","Aggiunta link glossario", "Luca Rossi",
      "0.1.0","04/11/2024","Francesco Fragonas","Prima stesura", "Gabriele Magnelli"
    ),
    presenze: (
        "Matteo Bazzan","Amministratore","2h40min",
        "Luca Ribon","Responsabile" ,"2h40min",
        "Francesco Fragonas", "Redattore", "2h40min",
        "Gabriele Magnelli","Verificatore","2h40min",
        "Yi Hao Zhuo","Verificatore","2h40min",
    ),
    doc,
)

= Revisione candidatura
== Correzione del Preventivo costi e impegni
È stato deciso di riassegnare le ore lavorative, distribuendo i carichi in base ai ruoli specifici e analizzando il contributo di ogni membro nelle diverse fasi del progetto.
Il costo totale è stato ridotto da 13.350 a *12.895*, rispettando tutti i requisiti del progetto.

== Definizione del processo di rotazione dei ruoli
La rotazione dei ruoli seguirà un elenco in ordine alfabetico per l'assegnazione iniziale, con una variazione settimanale dei ruoli in modalità circolare. È prevista la possibilità di modificare la frequenza di rotazione, consentendo inoltre che alcuni membri possano mantenere uno stesso ruolo più a lungo, se necessario, per garantire continuità nello svolgimento delle attività.

== Revisione e miglioramento della GitHub page
È stato risolto il problema segnalato dei link: ora i file fanno parte della #gloss[Github Page], quindi è possibile visualizzarli direttamente nel browser in un'altra scheda, senza lo scaricamento automatico, migliorando l'esperienza di navigazione.

== Aggiornamento del versionamento dei documenti
Per ogni modifica, è stato aggiunto il nome del verificatore/i responsabile del controllo del contenuto dei documenti.

== Correzione della lettera di presentazione
È stata aggiunta una tabella contentente i nominativi dei membri del gruppo e le rispettive matricole ed è stata corretta la data di consegna prevista.

= Conclusione
Durante l'incontro sono stati effettuati diversi aggiornamenti e modifiche alla documentazione per la candidatura al Capitolato 7 "#gloss[LLM]: #gloss[Assistente Virtuale]". Le principali azioni intraprese includono:

- *Ottimizzazione dei costi*: riduzione dei costi totali da 13.350 a 12.895, con una riassegnazione delle ore stabilita sull'importanza di ogni ruolo.
- *Rotazione dei ruoli*: definizione di una rotazione settimanale per una gestione equilibrata dei ruoli con la possibilità di cambio della frequenza.
- *Aggiornamento della lettera di presentazione* con una tabella dettagliata dei membri e l'aggiornamento della data di consegna.
- *Miglioramento della #gloss[GitHub page]* per una visualizzazione diretta dei file nel browser.
- *Tracciamento delle verifiche sui documenti* per ogni modifica, aggiungendo il nome del verificatore/i.

Durante l'incontro sono stati verificati in modo sincorno i documenti 
- 2024-11-04_Correzione_candidatura.pdf
- Preventivo-Costi-e-Impegni.pdf


= Riferimenti

- #link("https://docs.google.com/spreadsheets/d/16KMeeW7fNX_SnfywgynXvfblE6J0bMLXzpujRgH2c2Q/edit?gid=2000412310#gid=2000412310",[#underline[*Documento calcolo ore progetto*]])

- #link("https://github.com/CodeHex16/documentazione/blob/main/1%20-%20candidatura/Preventivo-Costi-e-Impegni.pdf",[#underline[*Preventivo costi e impegni*]])
- #link("https://github.com/CodeHex16/documentazione/blob/main/1%20-%20candidatura/Lettera-di-candidatura.pdf",[#underline[*Lettera di candidatura*]])