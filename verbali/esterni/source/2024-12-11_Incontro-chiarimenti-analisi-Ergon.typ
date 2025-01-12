#import "../../../template/verbale.typ": *

#show : doc => verbale(
  titolo: "Incontro di chiarimento e analisi con l'azienda Ergon",
  ordine-del-giorno: (
    "Discussione utilizzo LLM",
    "Chiarimenti struttura generale del progetto",
    "Analisi gestione clienti e fornitori",
  ),
  data: [11/12/2024],
  ora: [15:00-15:30],
  tipo: "esterno",
  versioni: ("0.1.0", "11/12/2024", "Francesco Fragonas", "Prima stesura", "Luca Ribon"),
  presenze: (
    "Matteo Bazzan",
    "Verificatore",
    "30m",
    "Luca Ribon",
    "Verificatore",
    "30m",
    "Francesco Fragonas",
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
L'incontro con il referente dell'azienda *Ergon* si è svolto per discutere l'implementazione degli #gloss[LLM] e per chiarire
come strutturare il progetto in modo da definire al meglio gli #gloss[use case] da inserire all'interno dell'Analisi dei
Requisiti.
= Domande poste
#set enum(numbering: "Q1.", spacing: 1.5em)

+ _Per dare il contesto con i documenti possiamo limitarci a fare il parsing dei documenti e darli come pre-prompt all’LLM
  o si pensava a una soluzione più sofisticata?_
  \ Sì, passare i documenti come pre-prompt all’LLM può essere una valida soluzione. Non è necessario cercare soluzioni
  più sofisticate, poiché queste potrebbero essere più onerose in termini di risorse.

+ _Un’ipotesi sui numeri relativi alle interazioni con gli LLM? In questo modo, se il numero è importante, il costo può
  essere rilevante per la decisione._\
  \Il numero di utenti che utilizzeranno il software potrebbe andare dai 1.000 fino ai 3.000-4.000. Tuttavia, molti di
  questi utilizzerebbero il #gloss[chatbot] solo occasionalmente.

+ _Ha senso suddividere le conversazioni in chat separate una per ogni “topic”, in modo da isolare i contesti per LLM (come
  fanno Claude o ChatGPT)?_\
  \Sì, potrebbe risultare utile suddividere le conversazioni per topic. Una buona soluzione potrebbe essere assegnare un
  nome automatico alle chat (es: “Chat 1”, “Chat 2”), con possibilità di modifica da parte dell’utente.

+ _Forse sarebbe più economico utilizzare un LLM con #gloss[API] pubbliche (es. Claude o ChatGPT)?_\
  \Sì, utilizzare un LLM con API pubbliche è la soluzione migliore. Questa scelta ridurrebbe i costi dell'infrastruttura
  per l'hosting e permetterebbe una gestione dei costi basata sull'utilizzo. Inoltre, la configurazione iniziale del
  software sarebbe più semplice.

+ _Si suppone l’esistenza di un amministratore (che controlla sia fornitori che clienti). Cosa e come deve gestire? Oppure
  bastano solo #gloss[account] #gloss[fornitore] e cliente?_\
  \Non è necessario prevedere un amministratore centrale. Ogni fornitore avrà un’istanza del software separata, installata
  e configurata su un server dedicato. Questo elimina la necessità di un amministratore che controlli tutti gli account.

+ _Gli utenti vengono creati fin da subito dal fornitore? Si suppone quindi che ci debba essere un cambio password al primo
  accesso del cliente._\
  \Sì, gli utenti vengono creati tramite l'interfaccia amministrativa accessibile al fornitore. Al momento della
  creazione, viene impostata una password provvisoria che il cliente cambierà al primo accesso.

+ _Le credenziali del fornitore possono essere create in autonomia oppure vengono fornite da un gestore del prodotto?_\
  \Le credenziali del fornitore vengono fornite dal gestore del prodotto dopo la configurazione iniziale. Sarà comunque
  possibile modificarle successivamente.

+ _L’utente può registrarsi oppure le credenziali possono essere create solo dal fornitore?_\
  \L’utente può accedere solo dopo la creazione dell’account da parte del fornitore, utilizzando una password temporanea
  che dovrà cambiare al primo accesso.

+ _Il fornitore deve poter accedere al chatbot? Se sì, con il suo account da fornitore oppure ne crea uno da utente?_\
  \Per accedere al chatbot, il fornitore deve creare un account utente specifico.

+ _È necessario prevedere un login anche tramite username?_\
  \No, per il login sono sufficienti email e password. Uno username sarebbe superfluo e aggiungerebbe un campo ulteriore
  da ricordare per l’utente.

+ _Si preferisce un #gloss[PoC] che integra #gloss[webapp] per la chat e LLM che risponde oppure due componenti separati (uno per l’LLM e
  uno per il frontend)?_\
  \Non ci sono preferenze specifiche. La scelta su come realizzare il PoC può essere fatta in base alle esigenze e
  preferenze del team.

= Materiale
L’azienda ci fornirà dei dataset di esempio con cui potremo iniziare a sperimentare il passaggio dei documenti all’LLM.
Questo ci aiuterà a ottimizzare l’utilizzo delle risorse e dei #gloss[token], garantendo risposte coerenti con il contesto.

= Conclusioni
L'incontro ha chiarito i principali aspetti legati all'uso degli LLM e alla gestione degli utenti e dei fornitori. Le
risposte fornite offrono un quadro chiaro per proseguire con la definizione degli use case e la strutturazione del
progetto.
