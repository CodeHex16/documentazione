#import "../../../../template/verbale.typ": *

#show: doc => verbale(
  titolo: "Incontro con azienda Ergon",
  ordine-del-giorno: ("Discussione su dubbi riscontrati", "Presentazione del prodotto allo stato attuale",),
  data: [05/05/2025],
  ora: [15:00-15:20],
  tipo: "esterno",
  presenze: (
    "Matteo Bazzan",
    "Verificatore",
    "20m",
    "Francesco Fragonas",
    "Verificatore",
    "20m",
    "Luca Ribon",
    "Verificatore",
    "20m",
    "Gabriele Magnelli",
    "Verificatore",
    "20m",
    "Filippo Sabbadin",
    "Relatore",
    "20m",
    "Gianluca Carlesso",
    "Referente azienda Ergon",
    "20m",
  ),
  doc,
)

= Scopo dell'incontro
L'incontro è stato organizzato per discutere alcuni dubbi riscontrati durante lo sviluppo del prodotto e per
presentare il prodotto allo stato attuale, controllando se fosse tutto conforme alle aspettative del referente
aziendale.

= Domande e dubbi posti
#set enum(numbering: "Q1.", spacing: 1.5em)

+ _Abbiamo un dubbio su come salvare le impostazioni della piattaforma definite dal fornitore: ci sono due opzioni file e
  database, con il file è molto più veloce il caricamento ma nel caso dovessimo propagare le impostazioni su più server
  diventerebbe difficile, cosa consigliate?_\
  Il referente aziendale ha consigliato di usare il database, in quanto è più semplice da gestire e permette di
  sincronizzare le impostazioni su più server. 
 
+ _Lo scopo della limitazione dello storico delle chat è quello di non consumare troppe risorse oppure solo della
  visualizzazione dei messaggi? In più una limitazione temporale ci sembra un indicatore non ottimale, non sarebbe meglio
  usare il numero di messaggi passati?_\
  Il chatbot utilizza solo uno stretto numero di messaggi recenti per evitare problemi, mantenere uno storico di più
  messaggi è comunque utile per l'utente per avere un contesto della conversazione. Inoltre, il referente aziendale ha
  suggerito di eliminare le chat anche dal database per liberare spazio, tuttavia non è strettamente necessario e ha dato
  libertà al gruppo di decidere.

+ _Per questioni di sicurezza abbiamo previsto il reinserimento della password dell’amministratore (anche se questo è già
  autenticato) per tutte le azioni distruttive (cancellazione), dovremmo farlo anche per gli update che però sono
  reversibili a differenza delle cancellazioni?_\
  Il referente aziendale ha confermato che è corretto richiedere la password anche per gli update, in quanto anche un
  aggiornamento può rivelarsi distruttivo.

= Conclusioni e nuovi issue
Successivamente alle domande, è stato presentato il prodotto allo stato attuale, mostrando le funzionalità del
fornitore, tra cui: gestione clienti, gestione documenti, impostazioni e gestione FAQ. Finito l'incontro, il gruppo ha
assegnato degli issue su github in base al feedback e riscontri ricevuti durante l'incontro:
- #issue("25", repo: "Suppl-AI")[*Aggiungere bottone delle FAQ nella chat*];
- #issue("21", repo: "Database-API")[*Salvataggio delle preferenze nel database*]
- #issue("42", repo: "Suppl-AI")[*Impostare il limite storico chat in base alle impostazioni*]
- #issue("43", repo: "Suppl-AI")[*Chiedere password anche agli update*]