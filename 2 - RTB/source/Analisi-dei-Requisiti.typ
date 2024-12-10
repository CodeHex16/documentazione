#import "../../template/documenti.typ" : *


#show : doc => documento(
    titolo: "Analisi dei Requisiti",
    data: [12/11/2024],
    ruoli : (
        "Matteo Bazzan","",
        "Luca Ribon","",
        "Francesco Fragonas","Redattore",
        "Gabriele Magnelli","",
        "Filippo Sabbadin","Verificatore",
        "Luca Rossi", "",
        "Yi Hao Zhuo", ""
    ),
    sommario: [Analisi dei requisiti del capitolato C7],
    
    versioni : (
      "0.2.0","27/11/2024","Gabriele Magnelli","Aggiunti use case amministratore","Filippo Sabbadin",
      "0.1.0","12/11/2024","Francesco Fragonas","Prima stesura", "Matteo Bazzan"
    ),
    doc,
)

= Introduzione
== Scopo del documento
Il presente documento descrive in dettaglio i *casi d'uso* e i *requisiti* relativi al progetto "LLM, Assistente Virtuale". Tali specifiche sono state elaborate a partire dall'analisi del capitolato C7, proposto da Ergon, e dagli incontri svolti online e in presenza con l'azienda.

== Scopo del prodotto
Il software da realizzare consiste in un chatbot avanzato, basato su modelli linguistici (LLM), che un fornitore, ad esempio di bevande o alimenti, può offrire ai propri, i quali possono ottenere in modo semplice e immediato informazioni dettagliate sui prodotti o servizi disponibili, senza la necessità di contattare direttamente l'azienda.

Il sistema prevede anche un'interfaccia dedicata all'azienda fornitrice, che consente la gestione dei clienti e dei documenti contenenti le informazioni di riferimento. Questi documenti saranno utilizzati dal modello linguistico per generare risposte accurate e personalizzate, garantendo un'esperienza utente ottimale.

== Glossario
Per facilitare la comprensione di questo documento, viene fornito un glossario che chiarisce il significato dei termini specifici utilizzati nel contesto del progetto. Ogni termine di glossario è contrassegnato con un asterisco "\*" in apice e collegato direttamente alla pagina web del glossario, permettendo così di accedere immediatamente alla definizione completa del termine. 

Le definizioni sono disponibili nel documento
#link(
"https://github.com/CodeHex16/documentazione/tree/main/glossario/glossario.pdf"
)[Glossario.pdf]
e nella seguente pagina web:

#link(
"https://codehex16.github.io/glossario"
)

== Riferimenti
= Use Case
== UC 1-Registrazione
*Attori principali*: \
   -Admin non registrato; \
*Descrizione*:\
   -Un admin non registrato vuole registrarsi per interagire   
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'admin deve avere una connessione stabile;
*Postcondizioni*:\
   -Il sistema conferma all'utente/admin che l'iscrizione è avvenuta      
    con successo, altrimenti viene restituito un errore   
    indicando che la registrazione è fallita;\
*Scenario Principale:*\
   -L’admin inserisce l’e-mail e l’username scelto;\
   -Il sistema verifica la correttezza dell’indirizzo e-mail e dell’username. Se sono entrambe corrette registra il nuovo utente/admin ed invia una mail al nuovo utente/admin con la password temporanea che va cambiata al primo login;\
*Estensioni:*\
   -Registrazione fallita;\
   
=== UC 1.1-Inserimento e-mail
*Attori principali:*\
   -Admin non registrato;\
*Descrizione:*\
   -Un admin non registrato vuole registrarsi per interagire  
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'admin deve avere una connessione stabile e scegliere un username valido;\
*Postcondizioni:*\
   -L’admin ha inserito la prima delle due credenziali necessarie alla registrazione: l’indirizzo e-mail;\
*Scenario Principale:*\
   -L’admin inserisce, nella richiesta di registrazione, l’indirizzo e-mail;\
   	
=== UC 1.2-Inserimento Username
*Attori principali:*\
   -Admin non registrato;\
*Descrizione:*\
   -Un admin non registrato vuole registrarsi per interagire  
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'admin deve avere una connessione stabile e scegliere un username valido;\
*Postcondizioni:*\
   -L’admin ha inserito la seconda delle due credenziali necessarie alla registrazione: l’username;\
*Scenario Principale:*\
   -L’admin inserisce, nella richiesta di registrazione, l’username;\

== UC 2-Registrazione Fallita
*Attori principali:*\
   -Admin non registrato;\
*Descrizione:*\
   -Un admin non registrato cercando di registrarsi per interagire e usufruire dei servizi offerti dalla web app non ci è riuscito perché ha fallito cercando di registrarsi con un indirizzo e-mail non valido o un username già in uso o non conforme alle indicazioni;\
*Precondizioni:*\
   -L'admin ha cercato di registrarsi ma ha fallito;\
*Postcondizioni:*\
   -Il sistema restituisce un errore indicando che la registrazione è fallita, con alcune informazioni sul perché del fallimento;\
*Scenario Principale:*\
   -L’admin ha inserito l’e-mail e l’username scelto;\
   -Il sistema ha ricevuto le credenziali per la registrazione ma queste non sono valide e pertanto viene inviato all’admin un messaggio d'errore in cui viene specificato che non può essere registrato;\

=== UC 2.1.1-Inserimento e-mail già in uso
*Attori principali:*\
   -Admin non registrato;
*Descrizione:*
   -Un admin non registrato vuole registrarsi per interagire  
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'utente/admin ha inserito le credenziali e inviato al sistema la richiesta di registrazione;\
*Postcondizioni:*\
   -Il sistema ha ricevuto le credenziali inviate dall’utente/admin, ma l’e-mail è già registrata nel sistema, quindi invia un messaggio d’errore all’utente;\
*Scenario Principale:*\
   -L’utente/admin ha inserito l’indirizzo e-mail e l’username al fine di registrarsi;\
   -Il sistema invia un messaggio d’errore indicando all’utente che l’e-mail inserita è già in uso nel sistema e il tentativo di registrazione fallisce;\

=== UC 2.1.2-Inserimento e-mail non valida
*Attori principali:*\
   -Utente/Admin non registrato;\
*Descrizione:*\
   -Un utente/admin non registrato vuole registrarsi per interagire  
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'utente/admin ha inserito le credenziali e inviato al sistema la richiesta di registrazione;\
*Postcondizioni:*\
   -Il sistema ha ricevuto le credenziali inviate dall’utente/admin, ma l’e-mail non è valida, quindi invia un messaggio d’errore all’utente;\  
*Scenario Principale:*\
   -L’utente/admin ha inserito l’indirizzo e-mail e l’username al fine di registrarsi;\
   -Il sistema invia un messaggio d’errore indicando all’utente che l’e-mail inserita non è valida e il tentativo di registrazione fallisce;\

=== UC 2.2.1-Inserimento username già in uso
*Attori principali:*\
   -Utente/Admin non registrato;\
*Descrizione:*\
   -Un utente/admin non registrato vuole registrarsi per interagire  
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'utente/admin ha inserito le credenziali e inviato al sistema la richiesta di registrazione;\
   *Postcondizioni:*\
   -Il sistema ha ricevuto le credenziali inviate dall’utente/admin, ma l’username è già registrato nel sistema, quindi invia un messaggio d’errore all’utente;\
*Scenario Principale:*\
   -L’utente/admin ha inserito l’indirizzo e-mail e l’username al fine di registrarsi;
   -Il sistema invia un messaggio d’errore indicando all’utente che l’username inserito è già in uso nel sistema e il tentativo di registrazione fallisce;\

=== UC 2.2.2-Inserimento username non valido
*Attore principale:*\
   -Utente/Admin non registrato;\
*Descrizione:*\
   -Un utente/admin non registrato vuole registrarsi per interagire  
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'utente/admin ha inserito le credenziali e inviato al sistema la richiesta di registrazione;\
   *Postcondizioni:*\
   -Il sistema ha ricevuto le credenziali inviate dall’utente/admin, ma l’e-mail non è valida, quindi invia un messaggio d’errore all’utente;\
*Scenario Principale:*\
   -L’utente/admin ha inserito l’indirizzo e-mail e l’username al fine di registrarsi;
   -Il sistema invia un messaggio d’errore indicando all’utente che l’e-mail inserita non è valida e il tentativo di registrazione fallisce;\

== Login 
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole accedere per interagire  
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'utente/admin è in possesso e a conoscenza delle proprie credenziali;\
   *Postcondizioni:*\
   -Il sistema ha ricevuto le credenziali inviate dall’utente/admin, e se sono valide permette l'accesso dell'utente/admin alla webapp e ai suoi servizi;\
*Scenario Principale:*\
   -L’utente/admin ha inserito l’indirizzo e-mail e la password al fine di accedere alla webapp;
   -Il sistema riceve la richiesta di accesso e verifica le credenziali ;\
*Estensioni:*\
   -Primo login (cambio password temporanea);\
   -Login fallito;\

  === Inserimento username/e-mail
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole accedere per interagire  
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'utente/admin deve essere in possesso dell' e-mail/username per poter effettuare l'accesso;\
*Postcondizioni:*\
   -L'utente/admin inserisce la prima delle due credenziali: l'e-mail/username ;\
*Scenario Principale:*\
   -L’utente/admin ha inserito l’indirizzo e-mail necessaria per effettuare l'accesso;\

  === Inserimento password
*Attori principali:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole accedere per interagire  
    e usufruire dei servizi offerti dalla web app;\
*Precondizioni:*\
   -L'utente/admin deve essere in possesso della password per poter effettuare l'accesso;\
*Postcondizioni:*\
   -L’utente/admin ha inserito la seconda delle due credenziali necessarie alla registrazione: la password;\
*Scenario Principale:*\
   -L’utente/admin inserisce, nella richiesta di accessi, la password;\

  === Possibilità "Resta connesso"
*Attori principali:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole mantenere l'accesso attivo al fine di non dover effettuare il login, inserendo le credenziali, ogni volta che ha intenzione di accedere alla web app;\
*Precondizioni:*\
   -L'utente deve essere possedere le credenziali necessarie per l'accesso;\
*Postcondizioni:*\
   -L’utente/admin ha inserito le credenziali (che devono essere valide), premuto il pulsante "Resta connesso" ed effettuato il login;\
*Scenario Principale:*\
   -L’utente/admin inserisce le credenziali, preme il pulsante "Resta connesso" ed effetua il login;\
   -Il sistema riceve la richiesta dell'utente/admin di accedere e se le credenziali sono corrette il login ha successo e il sistema mantiene in memoria le credenziali per un futuro login senza dover richiederle all'utente/admin;\

  == Primo Login (cambio password temporanea)
*Attori principali:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole accedere per la prima volta alla web app per interagire  
    e usufruire dei suoi servizi;\
*Precondizioni:*\
   -L'utente/admin deve essere in possesso dell'e-mail/username e della password temporanea inviatagli, tramite e-mail, alla registrazione;\
*Postcondizioni:*\
   -L’utente/admin ha inserito le credenziali necessarie per l'accesso;\
   -L'utente/admin ha efettuato il suo primo accesso alla web app e deve cambiare la password temporanea in una password nuova che però deve essere valida e cioè rispettare delle indicazioni;\
*Scenario Principale:*\
   -L’utente/admin effettua l'accesso per la prima volta alla web app;\
   -L'utente/admin sceglie una nuova password che rispetti le indicazioni fornitegli;\
*Estensioni:*\
   -Password scelta non valida;\

  === Password scelta non valida
*Attori principali:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato ha effettuato il suo primo accesso e ora deve scegliere una nuova password che sostituisca quella temporanea usata per effettuare il primo login;\
*Precondizioni:*\
   -L'utente/admin deve aver effettuato il suo primo accesso;\
*Postcondizioni:*\
   -L’utente/admin ha scelto e inserito la sua nuova password che, però, non rispetta le indicazioni fornitegli, quindi dovrà cambiarla;\
*Scenario Principale:*\
   -L’utente/admin inserisce la password nuova;\
   -Il sistema verifica la password inserita e la trova non conforme, quindi invia un messaggio d'errore all'utente/admin con la richiesta di scegliere un'altra password valida;\

== Login fallito (e-mail/username e/o password errati)
*Attori principali:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato cerca di effettuare il login per interagire e usufruire dei servizi offerti dalla web app non riuscendoci perché ha fallito cercando di accedere con un indirizzo e-mail e/o una password non validi;\
*Precondizioni:*\
   -L'utente/admin ha cercato di effettuare il login ma ha fallito;\
*Postcondizioni:*\
   -Il sistema restituisce un errore indicando che il login è fallito;\
*Scenario Principale:*\
   -L’utente/admin ha inserito l’e-mail e la password per effettuare il login;\
   -Il sistema ha ricevuto le credenziali per l'accesso, ma queste non sono valide e pertanto il sistema invia un messaggio d'errore all’utente/admin informandolo che non può accedere alla web app;\


== Logout
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole effettuare il logout disconnettendosi dal sistema;\
*Precondizioni:*\
   -L'utente/admin vuole disconnettersi dal sistema e per farlo deve premere il pulsante di logout;\
*Postcondizioni:*\
   -Il sistema ha ricevuto la richiesta di logout e la effettua;\
*Scenario Principale:*\
   -L’utente/admin preme il pulsante di logout;\
   -Il sistema riceve la richiesta di logout e disconnette l'utente/admin dal sistema;\

== Accesso alle impostazioni (lo considero un use case ??)

== Cambio e-mail/username
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole cambiare l'e-mail/username a cui è associato il suo account;\
*Precondizioni:*\
   -L'utente/admin deve aver effettuato il login;\
   -L'utente/admin deve accedere alle impostazioni e alla sezione "Cambio e-mail/username";\
*Postcondizioni:*\
   -Il sistema effettua un controllo sulla validità dell'e-mail/username e se valida conferma il cambiamento dell'e-mail/username;\
*Scenario Principale:*\
   -L’utente/admin invia la richiesta di cambio e-mail/username inserendo la nuova e-mail/username scelta;\
   -Il sistema riceve la richiesta, controlla che l'e-mail/username sia valida e, se lo è, conferma il cambiamento dell'e-mail/username;\
*Estensioni:*\
   -Cambio e-mail/username fallito (e-mail/username già in uso);\
   -Cambio e-mail/username fallito (e-mail/username non valida);\

== Cambio password
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole cambiare la password del proprio account;\
*Precondizioni:*\
   -L'utente/admin deve aver effettuato il login;\
   -L'utente/admin deve accedere alle impostazioni e alla sezione "Cambio password";\
*Postcondizioni:*\
   -Il sistema effettua un controllo sulla validità della password e se valida conferma il cambiamento della password;\
*Scenario Principale:*\
   -L’utente/admin invia la richiesta di cambio password inserendo la nuova password scelta;\
   -Il sistema riceve la richiesta, controlla che la password sia valida e se lo è conferma il cambiamento della password;\
*Estensioni:*\
   -Cambio password fallito (password non valida);\

== Recupero password
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole recuperare la password del proprio account;\
*Precondizioni:*\
   -L'utente/admin prima di effettuare il login ha premuto il pulsante "Passowrd dimenticata", oppurre
   -L'utente/admin deve accedere alle impostazioni e alla sezione "Recupero password";\
   -L'utente7admin deve possedere l'e-mail/username a cui è associato il suo account e inserirla nella sezione apposita così da poter ricevere tramite e-mail la password associata al suo account;\
*Postcondizioni:*\
    -Il sistema effettua un controllo sulla validità dell'e-mail ricevuta e se valida invia a tale e-mail la password recuperata;\
*Scenario Principale:*\
   -L’utente/admin invia la richiesta di recupero password inserendo l'e-mail/username associata al proprio account;\
   -Il sistema riceve la richiesta, controlla che l'e-mail/username sia valida e, se lo è, invia alla e-mail la password recuperata;\

== Scrittura e Invio messaggio
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole porre una domanda o in generale comunicare con il chatbot;\
*Precondizioni:*\
   -L'utente/admin deve avere una connessione stabile;\
   -L'utente/admin deve aver effettuato il login;\
   -L'utente/admin deve accedere alla sezione relativa alla comunicazione con il chatbot;\
   -L'utente/admin deve accedere all'area di testo su cui scrivere il messaggio ;\
*Postcondizioni:*\
    -L'utente/admin ha scritto e inviato il messaggio al chatbot;\
*Scenario Principale:*\
   -L’utente/admin scrive e invia il messaggio al chatbot;\
   -Il chatbot riceve il messaggio, lo analizza e procede a rispondere;\
*Possibili Estensioni/Errori ???*

== Ricezione risposta
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Il chatbot ha ricevuto un messaggio, lo ha analizzato e procede fornendo una risposta;\
*Precondizioni:*\
   -L'utente/admin deve avere una connessione stabile;\
   -L'utente/admin deve aver inviato un messaggio al chatbot;\
*Postcondizioni:*\
    -L'utente/admin ha ricevuto la risposta dal chatbot chatbot;\
*Scenario Principale:*\
   -Il chatbot ha elaborato e inviato una risposta all'utente/admin;\

== Valutazione Risposta (messaggio ricevuto) (feedback)->Pollice su/giù
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -L'utente/admin ha ricevuto la risposta dal chatbot e vuole dare un feedback su tale risposta tramite l'opzione "Pollice su/giù";\
*Precondizioni:*\
   -L'utente/admin deve aver effettuato il login;\
   -L'utente/admin deve aver inviato un messaggio al chatbot;\
   -L'utente/admin deve aver ricevuto una risposta dal chatbot;\
   -L'utente/admin deve premere il "Pollice in su" se pensa che la risposta sia stata coerente con la domanda, altrimenti preme "Pollice in giù";\
*Postcondizioni:*\
    -L'utente/admin ha valutato la risposta data dal chatbot e quindi inviato un feedback;\
*Scenario Principale:*\
   -L'utente/admin ha ricevuto una risposta dal chatbot e valutato tale risposta con l'opzione "Pollice su/giù";\

== Visualizzazione Storico Chat
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole visualizzare lo storico delle chat avute con il chatbot;\
*Precondizioni:*\
   -L'utente/admin deve aver effettuato il login;\
   -L'utente/admin deve accedere alle impostazioni e alla premere sul pulsante "Visualizza storico chat";\
*Postcondizioni:*\
   -L'utente/admin accede alla sezione "Visualizza storico chat";\
*Scenario Principale:*\
   -L’utente/admin ha effettuato il login, ha acceduto alle impostazioni e premuto sul pulsante "Visuallizza storico chat", quindi accede alla sezione corrispondente;\

== Modifica visualizzazione tempo storico chat (da 30 a 60 giorni e simili)
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole cambiare il periodo di tempo di visualizzazione dello storico delle chat avute con il chatbot;\
*Precondizioni:*\
   -L'utente/admin deve aver effettuato il login;\
   -L'utente/admin deve accedere alla sezione "Visualizza storico chat" nelle impostazioni;\
   -L'utente/admin deve premere il pulsante per modificare il periodo di tempo di visualizzazione dello storico delle chat avute con il chatbot;\
   -L'utente/admin sceglie il nuovo periodo di tempo su cui visualizzare lo storico delle chat avvenute con il chatbot;\
*Postcondizioni:*\
   -L'utente ha modificato il periodo di tempo su cui visualizzare lo storico delle chat avvenute con il chatbot;\
*Scenario Principale:*\
   -L’utente/admin ha effettuato il login, ha acceduto alle impostazioni, alla sezione "Visuallizza storico chat" e modificato il periodo di tempo su cui visualizare lo storico delle chat avvenute con il chatbot;\

== Selezione Dark/Light Mode
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole modificare i colori dell'interfaccia della web-app tramite l'opzioine "Dark/Light mode";\
*Precondizioni:*\
   -L'utente/admin deve aver effettuato il login;\
   -L'utente/admin deve accedere alle impostazioni e alla premere sul pulsante "Dark/Light mode";\
   -L'utente/admin deve scegliere una delle due opzioni "Dark mode" o "Light mode";\
*Postcondizioni:*\
   -L'utente/admin ha scelto una delle opzioni tra "Dark mode" o "Light mode"";\
   -Il sistema ha modificato l'interfaccia con l'opzione scelta dall'utente/admin;\
*Scenario Principale:*\
   -L’utente/admin ha effettuato il login, ha acceduto alle impostazioni modificato il colore dell'interfaccia tramite l'opzione "Dark/Light mode";\

== Caricare il proprio logo
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato vuole caricare il proprio logo tramite l'opzione "Carica logo" per personalizzare l'interfaccia della web-app;\
*Precondizioni:*\
   -L'utente/admin deve aver effettuato il login;\
   -L'utente/admin deve accedere alle impostazioni e alla sezione "Carica logo";\
   -L'utente/admin deve caricare il proprio logo nella sezione apposita;\
*Postcondizioni:*\
   -L'utente/admin inserito il proprio logo;\
   -Il sistema ha effettuato un controllo di validità del formato del logo, e se il logo è risultato valido lo ha inserito nell'interfaccia;\
*Scenario Principale:*\
   -L’utente/admin ha effettuato il login, ha acceduto alle impostazioni, alla sezione "Carica logo" e inserito il proprio logo;\
   -Il sistema ha controllato il formato del logo caricato e se conforme lo ha inserito nell'interaccia;\
*Estensioni*:\
   -Formato logo non valido;\

== Formato logo non valido
*Attore principale:*\
   -Utente/Admin registrato;\
*Descrizione:*\
   -Un utente/admin registrato ha cercato di caricare il proprio logo tramite l'opzione "Carica logo", ma il logo è in un formato non valido/supportato;\
*Precondizioni:*\
   -L'utente/admin ha cercato di caricare il prorio logo, ma ha fallito;\
*Postcondizioni:*\
   -Il sistema ha effettuato un controllo di validità del formato del logo ed è risultato non valido, quindi viene inviato un messaggio d'errore all'utente/admin\
*Scenario Principale:*\
   -L’utente/admin ha caricato il proprio logo;\
   -Il sistema ha controllato il formato del logo caricato ed è risultato non valido quindi ha inviato un messaggio d'errore all'utente/admin;\

== Scegliere palette colori
== Visualizzare statistiche domanda-risposta
== Aggiungere utente 
== Eliminazione utente
