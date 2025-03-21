#import "../../template/documenti.typ": *


#show: doc => documento(
  titolo: "Specifica Tecnica",
  data: [21/03/2025],
  ruoli: (
    "Matteo Bazzan", "",
    "Luca Ribon", "Verificatore",
    "Francesco Fragonas", "",
    "Gabriele Magnelli", "",
    "Filippo Sabbadin", "",
    "Luca Rossi", "Redattore",
    "Yi Hao Zhuo", "",
  ),
  sommario: [Specifica tecnica],
  versioni: (
    "0.1.0", "21/03/2025", "Luca Rossi", "Bozza iniziale struttura", "Luca Ribon",
  ),
  doc,
)

= Introduzione

== Scopo del documento
// Fornire una panoramica del contenuto del documento e degli obiettivi. 
// Indicare come si colloca nel contesto del progetto.

== Glossario
// Fare riferimento al Glossario.pdf, indicando eventuali termini tecnici utilizzati.

== Riferimenti
// Includere riferimenti normativi e informativi utili (es. Capitolato C7, #gloss[Norme di Progetto], slide).

= Tecnologie

== Tecnologie per la codifica
// Elencare linguaggi, framework e librerie utilizzati, con motivazione della scelta.

== Tecnologie per il testing
// Indicare strumenti e librerie impiegati per le attività di testing e analisi del codice.

= API

== Endpoint di autenticazione
// Descrivere endpoint come login/logout, specificando metodi, parametri e formati.

== Endpoint di chat
// Presentare endpoint relativi all’interazione con il #gloss[chatbot] (creazione, invio messaggi, #gloss[FAQ]).

== Endpoint di gestione documenti
// Esporre endpoint per upload, visualizzazione ed eliminazione documenti.

== Altri endpoint
// Inserire eventuali endpoint aggiuntivi.

== Errori e codici di ritorno
// Tabella riassuntiva dei codici di stato HTTP e dei relativi significati.

= Architettura

== Architettura logica
// Descrivere la suddivisione in moduli e livelli logici del sistema.

== Architettura di deployment
// Indicare come il sistema viene distribuito (es. Docker, monolite, microservizi).

== Design pattern utilizzati
// Specificare i pattern impiegati e le motivazioni dietro le scelte.

== Diagramma delle classi
// Inserire diagramma #gloss[UML] con le principali classi e relazioni.

= Database
// Illustrare le scelte relative al database (es. MongoDB, Chroma), schema dei dati, e gestione allegati/FAQ.

= Stato dei requisiti funzionali


// Eventuale grafico percentuale di requisiti soddisfatti

= Conclusioni
// Riassumere le scelte progettuali principali e indicare possibili evoluzioni future del sistema.
