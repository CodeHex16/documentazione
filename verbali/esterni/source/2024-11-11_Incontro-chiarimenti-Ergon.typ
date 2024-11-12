#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Incontro di chiarimento con l'azienda Ergon",
    ordine-del-giorno: ("Quadro generale del progetto","Domande sul progetto e caso d'uso", "Prospettive per la Comunicazione Futura"),
    data: [11/11/2024],
    ora: [16:00-16:30],
    tipo: "esterno",
    versioni: (
        "0.1.0", "11/11/2024", "Gabriele Magnelli", "Prima stesura","Filippo Sabaddin"
    ),
    presenze: (
        "Matteo Bazzan","Verificatore","30m",
        "Luca Ribon","Amministratore","30m",
        "Francesco Fragonas","Responsabile","30m",
        "Gabriele Magnelli","Redattore","30m",
        "Filippo Sabbadin","Verificatore","30m",
        "Yi Hao Zhuo","Verificatore","30m",
        "Gianluca Carlesso","Referente azienda Ergon","30m",
    ),
    doc,
)
= Motivi del colloquio
La riunione con il referente di *Ergon* era rivolta, interamente, al chiarimento di alcuni apetti tecnici generali del progetto. Di seguito viene riportata una lista delle domande poste con la risposta ricevuta dal referente.
= Domande di approfondimento sul progetto
#set enum(numbering: "Q1.", spacing: 1.5em)

+  _L'interfaccia mobile è destinata sia ad iOS che ad Android?_
  \ La piattaforma fondamentale è Android, ma meglio se supporta entrambi; fondamentale che sia responsive e intuitiva da utilizzare.
+ _Dobbiamo usare un particolare framework per la parte di frontend?_\
  \No, possiamo scegliere noi, alcuni potrebbero essere Blazor o React.
+ _E' necessario un login?_\
  \Sì è necessaria un'autenticazione all'avvio della webapp.
+ _Possiamo ipotizzare la chat come schermata principale?_\
  \Sì subito dopo l'autenticazione la schermata principale sarà la chat tra utente e IA.
   Inoltre, per questa schermata, è conveniente una grafica semplice anche se sono apprezzate funzionalità aggiuntive quali dark-light mode.
+ _E' utile avere uno storico delle chat?_\
  \Sì, inoltre sarebbe utile poter modificare  il  periodo di visualizzazione della chat (es 30/60 giorni).
+ _E' necessario usare un logo in particolare?_\
  No, possiamo usare il logo del gruppo, ma nonostante questo sarebbe apprezzabile personalizzare loghi e colori da parte di un ipotetico fornitore che utilizza il sistema.
+ _Bisogna avere un'unica webapp che gestisca i chatbot di fornitori diversi?_\
  \Non è necessario,l'idea generale è che per ogni fornitore ci sia un'istanza a se della webapp. 
+ _Sarebbe utile avere delle statistiche?_\
  \Sì può essere una funzionalità aggiuntiva e molto utile quella di avere delle statistiche sull'utente come il numero di domande poste e il numero di risposte considerate corrette
+ _Sarebbe utile avere un feedback dall'utente sulle risposte dell' IA alle domande poste_?
  \Sì e conviene puntare su un modello semplice come quello del "pollice su/giù" che è più immediato rispetto ad un sistema basato su una valutazione numerica o a stelle che potrebbe essere più difficile da interpretare in maniera oggettiva. 
+ _E' possibile suggerire all'utente le domande da proporre?_\
  \Non serve, inoltre sarebbe utile che l'LLM riuscisse a rispondere a domande diverse dai template di domanda su cui è stato addestrato. 
+ _Caratteristiche particolare da considerare nella scelta del LLM?_\
  \Le caratteristiche principali da considerare nella scelta del LLM sono il numero di parametri su cui è addestrato il modello e la lingua su cui è allenato. Infatti, un modello potrebbe avere molti parametri, ma anche varie lingue supportate e quindi i parametri sono suddivisi per le lingue supportate e di conseguenza i parametri realmente utilizzati dal LLM sono meno.
  Infine, possiamo considerare anche altri LLM oltre a quelli proposti, anche non open-source 
+ _L'LLM deve essere multilingua?_\
  \Non è necessario che l'LLM scelta sia multilingua, ma deve supportare almeno la lingua italiana.
+ _Quale middleware conviene scegliere per la comunicazione tra database e LLM?_\
  \Dipende, infatti prima bisogna scegliere l'LLM da usare e poi capire quali API offre e adeguarci di conseguenza sulla scelta del middleware.
+ _Come vengono gestiti i dati del LLM?_\
  \Tutti i dati vengono inseriti in un database SQL, ma i dati su cui l'LLM viene addestrato vengono anche inseriti in un databse vettoriale. 
= Incontri futuri
I prossimi incontri possono essere fatti online, ma se vogliamo possiamo organizzare degli incontri in presenza.Infine, una volta che avremo scelto i vari strumenti da usare per il progetto l'azienda ci potrà fornire del materiale didattico di approfondimento.
