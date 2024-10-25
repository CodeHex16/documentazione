#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Conferme sulla scelta dei capitolati",
    ordine-del-giorno: ("Seconda discussione sui capitolati","Comunicazione con le aziende", "Organizzazione incontri interni"),
    data: [22/10/2024],
    ora: [14:30-15:30],
    tipo: "interno",
    versione: [0.2.0],
    presenze: (
        "Filippo Sabbadin","Redattore","1h",
        "Yi Hao Zhuo","Verificatore","1h",
        "Luca Ribon ","Verificatore ","1h",
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

*Motivazioni:*

Il gruppo ha concordato di assegnare la massima priorità al capitolato n. 7, intitolato "LLM: Assistente Virtuale", proposto dall'azienda Ergon. Questo progetto si è distinto per diversi aspetti ritenuti cruciali:
- La rilevanza del progetto in ambito lavorativo: si tratta di una soluzione che potrebbe essere ampiamente richiesta da diverse aziende, soprattutto nell'ottica di sviluppo di assistenti virtuali e chatbot avanzati.
- La forte integrazione di intelligenza artificiale, in particolare con l'uso di modelli linguistici di grandi dimensioni (LLM), elemento chiave che soddisfa l’interesse del gruppo per l’IA.
- La concretezza del progetto, che si presta ad essere applicato in scenari reali e che potrebbe avere un impatto immediato sul mondo aziendale.

=== Seconda preferenza

Capitolato scelto come seconda preferenza:
"*NearYou - Smart custom advertising platform*" (Azienda: Synclab)

*Motivazioni:*

La seconda scelta del gruppo è caduta sul capitolato "NearYou - Smart custom advertising platform", proposto da Synclab. Sebbene la parte di intelligenza artificiale sia meno marcata rispetto alla prima opzione, questo capitolato presenta comunque elementi tecnologici di grande interesse:
- Tecnologie legate alla personalizzazione della pubblicità e all’analisi dei dati, con un focus su algoritmi di machine learning per ottimizzare campagne pubblicitarie.
- Potenziale di utilizzo nel marketing digitale, settore in forte espansione, che richiede soluzioni sempre più innovative per raggiungere target specifici.
- Sfida tecnica interessante, che consentirebbe al gruppo di esplorare nuove aree di sviluppo software, pur mantenendo una certa complessità gestibile.

=== Terza preferenza

Capitolato scelto come terza preferenza:
"*Vimar GENIALE*" (Azienda: Vimar)

*Motivazioni:*

Infine, come terza scelta, il gruppo ha optato per il capitolato "Vimar GENIALE", presentato da Vimar. Questo progetto si distingue per la sua somiglianza con il capitolato 7, ma con alcune differenze importanti:
- L'output del sistema non è basato su dati predefiniti, ma viene generato a partire da informazioni estratte direttamente dal sito web di Vimar, il che aggiunge una dimensione dinamica interessante.
- La presenza di un sistema di risposta intelligente, che sfrutta dati aziendali reali e richiede una forte integrazione con le tecnologie web.

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