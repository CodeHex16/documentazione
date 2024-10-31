#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Conferme sulla scelta dei capitolati",
    ordine-del-giorno: ("Seconda discussione sui capitolati","Comunicazione con le aziende", "Organizzazione incontri interni"),
    data: [22/10/2024],
    ora: [14:30-15:30],
    tipo: "interno",
    versioni: (
      "0.3.0","24/10/2024","Luca Ribon","Correzione errori nel testo",
      "0.2.0","22/10/2024","Francesco Fragonas","Aggiunta terza preferenza",
      "0.1.0","22/10/2024","Filippo Sabbadin","Prima stesura",
    ),
    presenze: (
        "Filippo Sabbadin","Redattore","1h",
        "Luca Ribon","Responsabile ","1h",
        "Francesco Fragonas","Redattore","1h",
        "Gabriele Magnelli","Verificatore","1h",
        "Luca Rossi","Verificatore","1h",
        "Yi Hao Zhuo","Verificatore","1h",
    ),
    doc,
)

= Seconda discussione sui capitolati

== Revisione dei capitolati proposti

Nel corso di questo incontro, il gruppo ha effettuato una revisione approfondita dei capitolati disponibili, con l’obiettivo di definire una strategia per la scelta finale del progetto da sviluppare. Nello specifico, si è deciso di riconsiderare le preferenze espresse durante il primo incontro, alla luce delle nuove riflessioni e dei criteri emersi dalla discussione.

I capitolati in esame erano complessivamente nove, tra i quali il gruppo ha selezionato tre preferenze principali, ordinate in base a vari fattori, tra cui la presenza di tecnologie innovative (in particolare l'intelligenza artificiale), la rilevanza del progetto nel mercato del lavoro e la fattibilità in termini di competenze richieste.

== Criteri di selezione

Durante la discussione sono emersi i seguenti criteri fondamentali per la scelta dei capitolati:

- *Presenza di tecnologie avanzate*, con particolare attenzione all'intelligenza artificiale, ritenuta un settore chiave per il futuro professionale dei membri del gruppo.
- *Applicabilità nel mondo del lavoro*, ovvero la capacità del progetto di rispondere a esigenze concrete delle aziende e del mercato.
- *Fattibilità del progetto*, basata sulla valutazione delle competenze già acquisite dai membri del gruppo e su quelle da sviluppare durante il percorso.

== Decisioni finali sui capitolati


=== Prima preferenza
Capitolato scelto come prima preferenza:
Capitolato 7 - "*LLM: Assistente Virtuale*" (Azienda: Ergon)

=== Seconda preferenza
Capitolato scelto come seconda preferenza:
"*NearYou - Smart custom advertising platform*" (Azienda: Synclab)

=== Terza preferenza        
Capitolato scelto come terza preferenza:
"*Vimar GENIALE*" (Azienda: Vimar)

= Comunicazione con l'azienda Ergon Informatica Srl
Al termine della decisione sui capitolati, il gruppo ha concordato di inviare una prima e-mail all'azienda *Ergon Informatica Srl*, in merito al capitolato "LLM: Assistente Virtuale". L'obiettivo della comunicazione era quello di ottenere maggiori informazioni riguardo al progetto e alle tecnologie consigliate per lo sviluppo. 

Sono state poste le seguenti domande:

- Si suppone che per il reperimento dei dati siano supportati almeno i formati .pdf e .txt; ne vengono rischiesti altri? 
- Che parametri si vogliono rendere configurabili tramite l'interfaccia utente?
- Citando: _"La piattaforma nel suo complesso, deve tener conto del flusso di interazioni uomo-macchina con i relativi tempi di attesa mantenendo uno stato complessivo sulla conversazione aggiornato."_ ci si riferisce al fatto che l'interazione via chat abbia attese brevi in modo che l'interazione risulti naturale e fluente?
- Pro e contro nell'uso di fonti dati ODBC o di un middleware per la comunicazione tra database e LLM?
- Vengono fornite delle risorse per poter interagire o hostare i LLM (se necessario), soprattutto in vista di una fase di debugging e/o testing del prodotto?

= Organizzazione degli incontri futuri
Come ultimo punto dell'incontro, il gruppo ha discusso riguardo la *programmazione dei prossimi incontri*. Al fine di semplificare la pianificazione e assicurare la massima disponibilità di tutti i membri, è stato creato un #link("https://docs.google.com/spreadsheets/d/16KMeeW7fNX_SnfywgynXvfblE6J0bMLXzpujRgH2c2Q/edit?gid=0#gid=")[#underline[*documento condiviso su Google Fogli*]]. Questo strumento permette a ciascun membro di aggiornare il proprio calendario all'inizio di ogni settimana, specificando la disponibilità suddivisa per giorni e fasce orarie (mattina, primo pomeriggio, tardo pomeriggio, sera).

Nel dettaglio:

- Ogni membro del gruppo inserisce la propria disponibilità scegliendo tra le opzioni: online, in presenza, entrambe, o nessuno.
- Il sistema genera automaticamente un calendario generale, che mostra per ciascuna giornata e fascia oraria quante persone sono disponibili e quale modalità (online o in presenza) è preferibile per gli incontri.

Questa soluzione ci permetterà di ottimizzare la pianificazione degli incontri settimanali, garantendo una partecipazione quanto più possibile completa e coordinata.
