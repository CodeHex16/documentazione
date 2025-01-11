#import "../../../template/verbale.typ": *

#show : doc => verbale(
    titolo: "Incontro di chiarimento con l'azienda Ergon",
    ordine-del-giorno: ("Quadro generale del progetto","Domande sul progetto e caso d'uso", "Prospettive per la Comunicazione Futura"),
    data: [11/11/2024],
    ora: [16:00-16:30],
    tipo: "esterno",
    versioni: (
      "0.1.1", "12/11/2024", "Ribon Luca", "Correzione typo e contenuti","Matteo Bazzan",  
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
Questa riunione con il referente di *Ergon* è rivolta, interamente, al chiarimento di alcuni aspetti tecnici generali del progetto. Di seguito viene riportata una lista delle domande poste con la risposta ricevuta dal referente.
= Domande di approfondimento sul progetto
#set enum(numbering: "Q1.", spacing: 1.5em)

+  _L'interfaccia mobile è destinata sia ad iOS che ad Android?_
  \ La piattaforma fondamentale è Android, ma meglio se supporta entrambi;  fondamentale che sia responsive e intuitiva da utilizzare.
+ _Dobbiamo usare un particolare framework per la parte di frontend web?_\
  \No, la scelta è libera, alcuni esempi potrebbero essere Blazor o React.
+ _E' necessario un login?_\
  \Sì, è necessaria un'autenticazione all'avvio della #gloss[webapp].
+ _Possiamo ipotizzare la chat come schermata principale?_\
  \Sì, subito dopo l'autenticazione la schermata principale sarà la chat tra utente e IA.
   La grafica può essere semplice ma vengono comunque apprezzate funzionalità aggiuntive come ad #gloss[esempio] la scelta tra dark/light mode.
+ _E' utile avere uno storico delle chat?_\
  \Sì, inoltre sarebbe utile poter modificare  il  periodo di visualizzazione della chat (es. 30/60 giorni).
+ _E' necessario usare un logo in particolare?_\
  No, si può il logo del gruppo anche perché in fase di utilizzo ogni istanza del'app sarà personalizzata in base al #gloss[fornitore]; nonostante questo potrebbe essere interessante dare la possibilità al fornitore di scegliere logo e impostare una palette colori per il suo #gloss[chatbot].
+ _Bisogna avere un'unica webapp che gestisca i chatbot di fornitori diversi?_\
  \Non è necessario, l'idea generale è che per ogni fornitore ci sia un'istanza a se della webapp. 
+ _Sarebbe utile avere delle statistiche?_\
  \Sì, può essere una funzionalità aggiuntiva e molto utile quella di avere delle statistiche sull'utente come il numero di domande poste e il numero di risposte considerate corrette.
+ _Sarebbe utile avere un #gloss[feedback] dall'utente sulle risposte dell' IA alle domande poste_?
  \Sì e conviene puntare su un modello semplice come quello del "pollice su/giù" che è più immediato rispetto ad un sistema basato su una valutazione numerica o a stelle che potrebbe essere più difficile da interpretare in maniera oggettiva. 
+ _E' necessario suggerire all'utente le domande da proporre?_\
  \Non è necessario, inoltre l'ideale sarebbe che l'#gloss[LLM] riuscisse a restituire delle risposte predefinite (dal configuratore del chatbot) anche se la domanda posta è solo simile alla domanda predefinita associata a quella risposta. 
+ _Caratteristiche particolare da considerare nella scelta del LLM?_\
  \Le caratteristiche principali da considerare nella scelta del LLM sono il numero di parametri su cui è addestrato il modello e la lingua su cui è allenato.
  Infine, possiamo considerare anche altri LLM oltre a quelli proposti, anche non open-source. 
+ _L'LLM deve essere multilingua?_\
  \Non è necessario che l'LLM scelta sia multilingua, ma deve supportare almeno la lingua italiana.
+ _Quale #gloss[middleware] conviene scegliere per la comunicazione tra database e LLM?_\
  \Dipende, infatti prima bisogna scegliere l'LLM da usare e poi capire quali #gloss[API] offre e adeguarci di conseguenza sulla scelta del middleware.
+ _Come vengono gestiti i dati del'LLM?_\
  \Tutti i dati vengono inseriti in un database SQL, ma i dati su cui l'LLM viene addestrato vengono anche inseriti in un databse vettoriale. 
= Materiale
Infine, l'azienda ci potrà fornire del materiale didattico di approfondimento, in particolare per gli LLM in generale e per dei modelli più specifici una volta che avremo scelto i vari strumenti da usare per il progetto.
