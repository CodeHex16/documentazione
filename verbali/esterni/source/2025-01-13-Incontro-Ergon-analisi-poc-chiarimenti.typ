#import "../../../template/verbale.typ": *

#show : doc => verbale(
  titolo: "Incontro di chiarimento e analisi con l'azienda Ergon",
  ordine-del-giorno: (
    "Presentazione prima versione del POC",
    "Chiarimenti struttura generale del progetto",
    "Analisi gestione clienti e fornitori",
  ),
  data: [13/01/2025],
  ora: [14:00-14:30],
  tipo: "esterno",
  versioni: ("0.1.0", "13/01/2025", "Gabriele Magnelli", "Prima stesura", ""),
  presenze: (
    "Matteo Bazzan",
    "Verificatore",
    "30m",
    "Luca Ribon",
    "Verificatore",
    "30m",
    "Francesco Fragonas",
    "Verificatore",
    "30m",
    "Gabriele Magnelli",
    "Redattore",
    "30m",
    "Filippo Sabbadin",
    "Verificatore",
    "30m",
    "Yi Hao Zhuo",
    "Verificatore",
    "30m",
    "Gianluca Carlesso",
    "Referente azienda Ergon",
    "30m",
  ),
  doc,
)
= Scopo dell'incontro
L'incontro con il referente dell'azienda *Ergon* si è svolto per discutere di una prima versione del POC realizzata dal gruppo, per mostrare gli use case fino ad ora trovati e per chiarare diversi dubbi di gestione e implementazione.
= Domande poste
#set enum(numbering: "Q1.", spacing: 1.5em)

+ _Dobbiamo inviare delle mail, ad esempio, per il cambio password e possiamo usare quella del gruppo?_\
 \Sì, bisogna inviare una mail per il cambio password e per svolgere i test possiamo usare la mail del gruppo.

+ _Nella parte backend dovremo gestire database api, LLM api, il parsing di documenti e l’invio di mail, dato che per usare le api dell’LLM dovremo usare python, e tutti gli altri componenti sono tranquillamente gestibili tramite python, c’è qualche motivo o requisito, ad esempio di performance, per cui non dovremmo usare python per la parte backend?_\
 \La scelta del linguaggio di programmazione per la parte backend può ricadere tranquillamente su Python poichè è un linguaggio completo. In ogni caso il gruppo può scegliere di usare un altro linguaggio o addirittura scegliere linguaggi diversi da usare. La scelta è comunque lasciata al gruppo.

+ _Le FAQ vengono inserite dal fornitore tramite piattaforma esplicitando domanda e risposta oppure vengono fornite caricando un documento generico che contiene le risposte a determinate domande considerabili FAQ?_\
 \Si possono rendere disponibili entrambe le opzioni, oppure sceglierne una in quanto sono entrambe scelte valide.

+ _Abbiamo pensato che potremmo passare le FAQ come contesto, in modo che queste vengano riconosciute anche se il prompt dell’utente non è identico; il nostro dubbio è che si vogliano usare delle FAQ per evitare completamente di interpellare l’LLM, cosa che invece viene fatta con il metodo che abbiamo pensato?_\
 \L’idea dietro alle FAQ, in questo caso, è quella di dare una risposta più precisa tramite l’LLM, ad esempio per questioni di tassazione o legali l’LLM potrebbe non essere preciso; quindi è giusto integrare le FAQ nell’LLM.    

+ _Come possiamo gestire i tipi di documenti che vengono inviati in chat, possiamo trasformali tutti in formato .txt oppure dobbiamo gestire un numero limitato di formati?_\
 \Sì, possiamo gestire i documenti inviati trasformandoli tutti in documenti formato .txt.

+ _Per quanto riguarda le immagini, l'utente potrà caricarle per farle esaminare dall'LLM?_\
 \Non è previsto che l'utente possa caricare immagini.

= Conclusioni
L'incontro ha chiarito i principali aspetti legati agli use case e ad alcuni dubbi implementativi. Le risposte fornite offrono un quadro chiaro per proseguire con la strutturazione del progetto.