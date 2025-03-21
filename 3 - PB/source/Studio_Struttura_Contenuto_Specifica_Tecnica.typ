#import "../../template/documenti.typ": *


#show: doc => documento(
  titolo: "Studio Struttura Contenuto Specifica Tecnica",
  data: [21/03/2025],
  ruoli: (
    "Matteo Bazzan", "Redattore, Verificatore",
    "Luca Ribon", "Redattore, Verificatore",
    "Francesco Fragonas", "Redattore",
    "Gabriele Magnelli", "Redattore",
    "Filippo Sabbadin", "Verificatore",
    "Luca Rossi", "Redattore, Verificatore",
    "Yi Hao Zhuo", "Verificatore",
  ),
  sommario: [Specifica tecnica del chatbot personalizzabile con LLM],
  versioni: (
    "1.0.0", "21/03/2025", "Luca Ribon", "Bozza iniziale struttura", "Matteo Bazzan",
  ),
  doc,
)

= Registro delle modifiche



= Indice
#outline()

= 1. Introduzione

== 1.1 Scopo del documento
// Fornire una panoramica del contenuto del documento e degli obiettivi. 
// Indicare come si colloca nel contesto del progetto.

== 1.2 Glossario
// Fare riferimento al Glossario.pdf, indicando eventuali termini tecnici utilizzati.

== 1.3 Riferimenti
// Includere riferimenti normativi e informativi utili (es. Capitolato C7, Norme di Progetto, slide).

= 2. Tecnologie

== 2.1 Tecnologie per la codifica
// Elencare linguaggi, framework e librerie utilizzati, con motivazione della scelta.

== 2.2 Tecnologie per il testing
// Indicare strumenti e librerie impiegati per le attività di testing e analisi del codice.

= 3. API

== 3.1 Endpoint di autenticazione
// Descrivere endpoint come login/logout, specificando metodi, parametri e formati.

== 3.2 Endpoint di chat
// Presentare endpoint relativi all’interazione con il chatbot (creazione, invio messaggi, FAQ).

== 3.3 Endpoint di gestione documenti
// Esporre endpoint per upload, visualizzazione ed eliminazione documenti.

== 3.4 Altri endpoint
// Inserire eventuali endpoint aggiuntivi.

== 3.5 Errori e codici di ritorno
// Tabella riassuntiva dei codici di stato HTTP e dei relativi significati.

= 4. Architettura

== 4.1 Architettura logica
// Descrivere la suddivisione in moduli e livelli logici del sistema.

== 4.2 Architettura di deployment
// Indicare come il sistema viene distribuito (es. Docker, monolite, microservizi).

== 4.3 Design pattern utilizzati
// Specificare i pattern impiegati e le motivazioni dietro le scelte.

== 4.4 Diagramma delle classi
// Inserire diagramma UML con le principali classi e relazioni.

= 5. Database
// Illustrare le scelte relative al database (es. MongoDB, Chroma), schema dei dati, e gestione allegati/FAQ.

= 6. Stato dei requisiti funzionali


// Eventuale grafico percentuale di requisiti soddisfatti

= 7. Conclusioni
// Riassumere le scelte progettuali principali e indicare possibili evoluzioni future del sistema.
