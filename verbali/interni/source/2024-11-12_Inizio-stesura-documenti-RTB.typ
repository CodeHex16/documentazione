#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Inizio stesura documenti RTB",
    ordine-del-giorno: ("Ampliamento GitHub Labels","Stesura documento Analisi dei requisiti"),
    data: [12/11/2024],
    ora: [15:00-18:00],
    tipo: "interno",
    versioni: (
      "0.1.2","13/11/2024","Luca Ribon","Sistemati la data di redazione", "Matteo Bazzan",
      "0.1.1","12/11/2024","Filippo Sabbadin","Sistemati link alle issue invertiti", "Matteo Bazzan",
      "0.1.0","12/11/2024","Filippo Sabbadin","Prima stesura", "Matteo Bazzan"
    ),
    presenze: (
        "Luca Ribon","Amministratore" ,"3h",
        "Francesco Fragonas", "Responsabile", "3h",
        "Filippo Sabbadin","Redattore","3h",
        "Matteo Bazzan","Verificatore","3h",
        "Gabriele Magnelli","Verificatore","2h30min"
    ),
    doc,
)

= Decisione sull'utilizzo delle GitHub Labels
Abbiamo deciso di implementare ulteriori etichette (GitHub Labels) più specifiche per le issue all'interno del repository, al fine di classificare e riconoscere facilmente a quale documento o fase del progetto ciascuna issue è collegata. Questo sistema di labeling permetterà una gestione più ordinata e rapida del workflow, facilitando la tracciabilità delle attività legate a documenti specifici.
\ In particolare sono state implementate le #link("https://github.com/CodeHex16/documentazione/labels", [*#underline[label]*]):
- Amministrazione
- Analisi dei requisiti
- Analisi dei rischi
- Hotfix
- Norme di Progetto
- Piano di Progetto
- Piano di Qualifica
- Verbali esterni
- Verbali interni

= Inizio stesura documenti RTB
Abbiamo iniziato la stesura dei documenti relativi alla sezione RTB (Requirements and Technology Baseline), che racchiude tutto ciò che è necessario per la corretta realizzazione del progetto. I documenti che abbiamo prodotto sono:
- Analisi dei requisiti
- Norme di progetto
- Piano di progetto
- Piano di qualifica

= Glossario
Oltre alla stesura dei primi documenti per la fase di RTB abbiamo realizzato il documento glossario.pdf, il quale raccoglie tutte le definizioni e significati ai termini specifici utilizzati nel contesto del progetto. L'idea è inoltre quella di realizzare una pagina web dedicata al glossario e mettere per ogni termine specifico nei documenti un collegamento alla relativa definizione.

= Azioni future
- #issue("20")[*Realizzazione pagina web glossario*]: per una migliore fruibilità dei documenti verrà realizzata una pagina web. In queso modo, cliccando sul termini evidenziati nei documenti, si verrà reindirizzati alla relativa definizione.
- #issue("25")[*Validazione verbale esterno*]: a seguito dell'ultimo incontro con l'azienda Ergon abbiamo prodotto un verbale, il quale deve essere inviato al referente per una revisione e validazione.
- *Continuazione stesura documenti*: prevediamo di continuare la stesura dei diversi documenti in base alle informazioni raccolte durante le lezioni e dopo l'incontro con Ergon.
