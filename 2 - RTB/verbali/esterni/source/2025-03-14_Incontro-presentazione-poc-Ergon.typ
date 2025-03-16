#import "../../../../template/verbale.typ": *


#show: doc => verbale(
  titolo: "Incontro di presentazione del PoC con l'azienda Ergon",
  ordine-del-giorno: ("Presentazione del PoC", "Domande su alcuni aspetti dell'applicazione",),
  data: [14/03/2025],
  ora: [10:00-10:30],
  tipo: "esterno",
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
L'incontro, svolto subito dopo la revisione RTB con il prof. Cardin, aveva lo scopo di presentare il PoC realizzato dal gruppo all'azienda Ergon e di chiarire alcuni aspetti sull'applicazione.

= Domande poste
Dopo la presentazione del PoC, sono state poste alcune domande per avere dei chiarimenti:
#set enum(numbering: "Q1.", spacing: 1.5em)

+ _Va bene avere una pagina singola di login sia per utente che fornitore, con l'applicazione che controlla subito dopo il login se l'utente appena autenticato è un fornitore?_\
  Sì, la soluzione è corretta e ragionevole.

+ _Nel caso in cui le FAQ, ovvero le coppie domanda-risposta preimpostate dal fornitore, siano troppo lunghe e occupino troppo spazio nell'interfaccia, può essere mostrata una versione abbreviata generata dal modello LLM o inserita direttamente dal fornitore?_\
  Sì, è possibile. Entrambe le opzioni vanno bene, è a vostra discrezione quale usare.

= Altri problemi
Durante l'incontro è stato evidenziato dal gruppo che il chatbot, quando dovrebbe rispondere usando diversi documenti come contesto, fatica a dare una risposta completa. Una causa di questo problema è la struttura del dataset di test. L'azienda si impegnerà a fornire un dataset con un indice per aiutare a risolvere il problema.

= Conclusioni
L'incontro si è concluso molto positivamente, con l'azienda che ha apprezzato il lavoro svolto dal gruppo fino a questo momento.