#import "../../../../template/verbale.typ": *

#show : doc => verbale(
  titolo: "Revisione pre-RTB con il prof. Tullio",
  ordine-del-giorno: ("Revisione della presentazione", "Azioni future",),
  data: [21/03/2025],
  ora: [9:00-12:00],
  tipo: "interno",
  versioni: ("0.1.0", "21/03/2025", "Filippo Sabbadin", "Prima stesura", "",),
  presenze: (
    "Matteo Bazzan",
    "Verificatore",
    "3h",
    "Luca Ribon",
    "Verificatore",
    "3h",
    "Filippo Sabbadin",
    "Relatore",
    "3h",
    "Francesco Fragonas",
    "Verificatore",
    "3h",
    "Gabriele Magnelli",
    "Verificatore",
    "3h",
    "Yi Hao Zhuo",
    "Verificatore",
    "3h",
    "Luca Rossi",
    "Verificatore",
    "3h",
  ),
  doc,
)

= Revisione della presentazione
Durante l'incontro sono state controllate le slides della presentazione da fare con il prof. Tullio. Il gruppo ha fatto
inoltre una prova di presentazione per verificare che tutto fosse corretto, ponendo attenzione ai contenuti e al tempo
impiegato.

= Azioni future
Il gruppo ha discusso riguardo lo stato di avanzamento del progetto e delle attività da svolgere per il prossimo sprint.
Sono stati assegnati i seguenti compiti:
- #issue("301")[*Diagrammi delle classi iniziale per discutere dell'architettura*].
- #issue("302")[*Correggere Adr a seguito di TB*].
- #issue("303")[*Diario di bordo 12*].
- #issue("298")[*Studio struttura e contenuto Manuale utente*].
- #issue("2")[*Studio configurazione CI/CD per la parte di testing di python*].
- #issue("3")[*Studio ottimizzazione contesto/RAG dell'LLM*].