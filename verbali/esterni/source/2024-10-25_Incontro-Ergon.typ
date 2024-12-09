#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Incontro con il referente dell'azienda Ergon",
    ordine-del-giorno: ("Quadro generale del progetto","Domande sul progetto e caso d'uso", "Prospettive per la Comunicazione Futura"),
    data: [25/10/2024],
    ora: [15:30-16:00],
    tipo: "esterno",
    versioni: (
        "0.2.0", "30/10/2024", "Luca Ribon", "Aggiunta firma e modifica titolo","",
        "0.1.0", "25/10/2024", "Matteo Bazzan", "Prima stesura","",
    ),
    presenze: (
        "Matteo Bazzan","Redattore","30m",
        "Luca Ribon","Responsabile","30m",
        "Francesco Fragonas","Verificatore","30m",
        "Gabriele Magnelli","Verificatore","30m",
        "Filippo Sabbadin","Verificatore","30m",
        "Yi Hao Zhuo","Verificatore","30m",
        "Gianluca Carlesso","Referente azienda Ergon","30m",
    ),
    doc,
)
= Quadro generale del progetto
La riunione con il referente di *Ergon* è iniziata descrivendo un quadro generale del progetto, integrando ulteriori dettagli rispetto a quelli definiti nel capitolato. Di seguito viene riportata una lista delle domande poste con la risposta ricevuta dal referente.

= Domande sul progetto
#set enum(numbering: "Q1.", spacing: 1.5em)

+ _Quali formati di documenti neccessari alla costruzione del contesto devono essere supportati?_
    \ I formati principali richiesti sono .txt, .pdf e .docx, e potrebbero essere presenti anche dei file .csv.
+ _Quali parametri si vogliono rendere configurabili tramite l’interfaccia utente?_
    - Gestione degli utenti: creazione e modifica degli utenti con accesso al #gloss[chatbot] del fornitore
    - Inserimento di tuple (domanda, risposta) predefinite dal configuratore (prese da un ipotetico FAQ) in modo da ottimizzare il modello in caso venissero chieste domande simili 
+ _Citando il capitolato:_
    \ #quote()[La piattaforma deve tenere conto del   flusso di interazioni uomo-macchina con i relativi tempi di attesa mantenendo uno stato complessivo sulla conversazione aggiornato] \ _ci si riferisce alla necessità di garantire un’interazione naturale con brevi tempi di risposta?_
    \ Nello specifico si intende che, dopo aver posto una domanda, l'utente riceva un feedback visivo (es. “sto scrivendo”) per simulare la presenza di un interlocutore reale.
+ _Il supporto multilingua da parte dell'#gloss[LLM] è un requisito?_
    \ In questo caso il requisito riguarda solo il supporto della lingua italiana, ma è possibile estendere il supporto anche ad altre lingue.
+ _Per quanto riguarda lo sviluppo della parte lato utente, è preferibile utilizzare .NET MAUI come suggerito nel documento, o si può valutare anche una web app?_
    \ Ergon Informatica consiglia .NET MAUI, in quanto è una tecnologia ampiamente utilizzata internamente e per la quale possono fornire supporto diretto. Tuttavia, è consentito sviluppare una web app per la UI, se preferiamo questa opzione; in tal caso, la scelta delle tecnologie sarà a nostra discrezione.
+ _Saranno messe a disposizione risorse per poter utilizzare i modelli LLM, specialmente per la fase di debugging e testing, come ad esempio delle piattaforme di hosting o dei token (se neccessari)?_
    \ Se necessario, Ergon può fornire le risorse necessarie all'utilizzo modelli LLM o per altre esigenze legate a tutta la fase di sviluppo del progetto.
+ _È possibile avere ulteriori dettagli sulle risorse relative a LLM e .NET MAUI che vengono citate nel capitolato?_
    \ L’azienda conferma la disponibilità a fornire corsi online asincorni su .NET MAUI e sugli LLM (in base ai modelli che considereremo per il progetto, preferibilmente due opzioni principali).
+ _È necessario raccogliere feedback degli utenti relativi alle risposte restituite dal chatbot?_
    \ Il requisito in questione è opzionale.


= Caso d'uso
Successivamente è stato chiesto un caso d'uso più specifico e attinente alla realtà, il referente ha esposto il seguente:
Il prodotto è pensato per essere utilizzato da degli operatori del *settore alimentare* e dei *servizi di ristorazione*, in quanto è quello dove Ergon opera per la maggior parte; nello specifico l'utente può interagire con il chatbot per avere informazioni dettagliate sui prodotti del singolo fornitore.
In caso di più fornitori che usano la piattaforma, l'utente riceverà un chatbot diverso per ogni fornitore.

= Prospettive per la Comunicazione Futura
Gli incontri futuri avverranno prevalentemente online, con la possibilità di organizzare un paio di incontri in presenza, se necessario. Non sarà stabilita una cadenza settimanale fissa; le riunioni saranno invece concordate di volta in volta con un preavviso di un paio di giorni, per garantire la massima flessibilità e adattabilità alle esigenze del gruppo.
