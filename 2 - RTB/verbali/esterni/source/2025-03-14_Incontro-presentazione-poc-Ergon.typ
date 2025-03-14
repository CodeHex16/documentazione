#import "../../../../template/verbale.typ": *


#show: doc => verbale(
  titolo: "Incontro di presentazione del PoC con l'azienda Ergon",
  ordine-del-giorno: ("Presentazione del POC", "Domande su alcuni aspetti dell'applicazione",),
  data: [14/03/2025],
  ora: [10:00-10:30],
  tipo: "esterno",
  versioni: ("0.1.0", "13/01/2025", "Gabriele Magnelli", "Prima stesura", "Luca Rossi"),
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
    "Verificatore",
    "30m",
    "Filippo Sabbadin",
    "Redattore",
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
L'incontro, svolto subito dopo la revisione RTB con il prof. Cardin, aveva lo scopo di presentare il PoC realizzato dal
gruppo all'azienda Ergon e di chiarire alcuni aspetti sull'applicazione.

= Domande poste
Dopo la presentazione del PoC, sono state poste alcune domande per avere dei chiarimenti:
#set enum(numbering: "Q1.", spacing: 1.5em)

+ _Va bene avere una pagina singola di login sia per utente che fornitore, con l'applicazione che controlla subito dopo il
  login se l'utente appena autenticato è un fornitore?_\
  \Sì! Molto più semplice fare così!

+ _Per le domande generate dall'LLM, cioè le FAQ, nel caso siano troppo lunghe, possono essere abbreviate usando il modello
  LLM?_\
  \Sì, è possibile abbreviare le risposte generate dall'LLM. Questo permetterebbe di avere risposte più concise.

= Altri problemi
Durante l'incontro è stato notato che il chatbot quando fa delle liste, prende solo tre elementi. Causa di questo
problema è molto probabile che sia la struttura del dataset. L'azienda si impegnerà a fornire un dataset con un indice
per aiutare a risolvere il problema.

= Conclusioni
L'incontro si è concluso molto positivamente con l'azienda Ergon che ha apprezzato il lavoro svolto dal gruppo.