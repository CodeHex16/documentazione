#import "../../../../template/verbale.typ": *


#show: doc => verbale(titolo: "Coordinamento Sprint 13", ordine-del-giorno: (
  "Revisione Sprint 12",
  "Visione frontend sviluppato nello sprint 12",
  "Definita struttura del database",
  "Risoluzione problemi riguardo l'esecuzione del prodotto su una macchina diversa",
  "Coordinamento per lo Sprint 13",
), data: [17/04/2025], ora: [15:00-17:30], tipo: "interno", presenze: (
  "Luca Ribon",
  "Verificatore",
  "2h30min",
  "Filippo Sabbadin",
  "Relatore",
  "2h30min",
  "Francesco Fragonas",
  "Verificatore",
  "2h",
  "Gabriele Magnelli",
  "Verificatore",
  "2h30min",
), doc)

= Revisione Sprint 12
Durante la riunione del 17 Aprile 2025 sono stati discussi i risultati dello Sprint 12, iniziati con un controllo
sull'architettura e stato del frontend.

== Discussione architettura frontend
Durante la riunione è stato presentato il design sviluppato della homepage dell'amministratore. Questa schermata
presenta un bottone per modificare o aggiungere documenti, un bottone per modificare o aggiungere utenti e un bottone
per modificare o aggiungere le FAQ che vengono visualizzate durante una chat tra utente e chatbot. Inoltre la homepage
dell'amministratore mostra anche le funzionalità di un cliente, ad esempio lista delle chat e un bottone per
visualizzare la pagina del profilo. Infine è stata aggiunta la possibilità di cambiare modalità in chiara o scura e
aggiunta la possibilità all'amministratore di cambiare il colore principale per l'applicazione.

== Definita struttura del database
Durante la riunione è stato mostrato lo stato del backend, ed è risultato necessario stendere una struttura comune del
database per avere una maggiore coordinazione tra i membri che stanno sviluppando il backend. Oltre a ciò che esisteva
già, per avere un database più ordinato e accessibile, si è deciso di creare una tabella per ogni chat utente, con tuple
che memorizzano l'id della chat e il titolo del messaggio, il suo contenuto, il mittente, la data di invio del messaggio
e la valutazione della risposta (opzionale).

== Risoluzione problemi riguardo l'esecuzione del prodotto su una macchina diversa 
Verso la fine della riunione, un membro del gruppo ha avuto difficoltà nell'eseguire l'applicazione nella sua macchina,
visto che usava un sistema operativo diverso. Questo problema era già stato discusso nella riunione precedente e durante
lo sprint 12 alcuni membri del gruppo hanno risolto il problema, con conseguente miglioramento delle prestazioni per
tutti i membri.

= Assegnazione ruoli
- I *nuovi ruoli* per lo Sprint 11 sono:
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 8pt,
  fill: (x, y) => if (y == 0) { luma(230) },
  table.header([*Membro*], [*Ruolo Sprint 10*], [*Ruolo Sprint 11*]),
  "Matteo Bazzan",
  "Analista",
  "",
  "Francesco Fragonas",
  "Programmatore",
  "Verificatore",
  "Gabriele Magnelli",
  "Programmatore",
  "Progettista",
  "Luca Ribon",
  "Programmatore",
  "Programmatore",
  "Luca Rossi",
  "Progettista",
  "Amministratore",
  "Filippo Sabbadin",
  "Progettista",
  "Programmatore",
  "Yi Hao Zhuo",
  "Programmatore",
  "Programmatore",
)

= Azioni future
Per le azioni future, il gruppo ha deciso di continuare sempre con lo sviluppo dell'applicazione, continuando con il
frontend:
- #issue("2", repo: "Suppl-AI")[*Login frontend*];
- #issue("24", repo: "Suppl-AI")[*Sviluppare la pagina del profilo*];
- #issue("25", repo: "Suppl-AI")[*Integrare un bottone interno alla chat che apre un popup con la lista delle FAQ*];
E proseguire in parallelo con il backend:
- #issue("13", repo: "Database-API")[*Gestione recupero password*];
- #issue("14", repo: "Database-API")[*Gestione registrazione*];

Inoltre bisogna controllare gli strumenti di CI/CD decisi nello sprint precedente:
- #issue("18", repo: "MVP")[*Verifica CI/CD*]

Infine, si è deciso di continuare la stesura dei documenti:
- #issue("350")[*Aggiornare PdP con sprint 11*]
- #issue("364")[*Aggiornare PdP con sprint 12*]
- #issue("370")[*Definire ultime sezioni NdP*]
- #issue("333")[*Aggiornare NdP con sezione sviluppo*]
- #issue("355")[*Aggiungere metriche di qualità in NdP*]
- #issue("373")[*Stesura verbale interno 2025-04-17*]
- #issue("351")[*Stesura verbale interno 2025-04-09*]