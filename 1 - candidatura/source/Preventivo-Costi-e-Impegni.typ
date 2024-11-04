#import "../../template/documenti.typ" : *

#show : doc => documento(
    titolo: "Preventivo costi e dichiarazione impegni",
    data: [28/10/2024],
    sommario: "Dichiarazione dei costi e ore di lavoro",
    ruoli: (
        "Filippo Sabbadin","Redattore",
        "Matteo Bazzan","Verificatore",
        "Luca Ribon","Responsabile",
        "Francesco Fragonas","Verificatore",
        "Gabriele Magnelli","Verificatore",
        "Luca Rossi", "Verificatore",
        "Yi Hao Zhuo", "Verificatore"
    ),
    versioni : (
        "0.2.0","04/11/2024","Gabriele Magnelli","Aggiornamenti successivi alle correzioni della prima candidatura","",
        "0.1.0","28/10/2024","Filippo Sabbadin","Prima stesura","Francesco Fragonas",
    ),
    doc,
)

= Calcolo ore

== Data stimata di consegna
La data di consegna stimata per il prodotto finito è il giorno *28/04/2025*.

== Ore generali
Ogni membro del gruppo CodeHex16 si impegna a lavorare per un totale di 92 ore distribuite in  25 settimane.
La suddivisione delle ore per ogni ruolo è stata fatta basandosi sulle seguenti considerazioni:
- Nonostante l'importanza del *responsabile* i compiti da esso svolti richiedono un tempo mediamente minore; inoltre questo ruolo avrà dei brevi periodi di lavoro a maggiore intensità (candidatura, verifiche intermedie, ...) alternati a periodi più lunghi dove il team sarà maggiormente concentrato su task più pratiche e in maggiore autonomia.
- L'*amministratore*, una volta definita e configurata l'infrastruttura, ha un calo di intensità del lavoro e potrebbero esserci dei brevi picchi di intensità in caso di problemi con gli strumenti utilizzati; potrebbero essere necessari più amministratori contemporaneamente per questo si è deciso di essere più generosi con il monte ore.
- L'*analista* è un ruolo che impiega le proprie ore, principalmente quando inizia il progetto, e successivamente, se dovessero cambiare alcuni requisiti. Quindi, inizialmente, diversi membri del gruppo lavoreranno sull'analisi dei requisiti svolgendo il ruolo di analista. Una volta definiti i requisiti il ruolo dell'analista è sostituito da ruoli più pratici quali progettista, progarammatore e verificatore.
- Il *progettista* è un ruolo che svolgerà le proprie ore quando inizierà lo sviluppo del progetto fino alla sua conclusione determinando le scelte realizzative e andrà di pari passo con ruoli quali programmatore e verificatore. Generalmente, questo ruolo, viene assunto da pochi membri del gruppo.
- Si prevede che il *programmatore* sarà il ruolo che richiederà più ore complessive in quanto ricoperto da molteplici membri alla volta che hanno il ruolo di costruire il prodotto finale partendo dal design definito; inoltre il gruppo sa, per conoscenze empiriche, che potrebbe essere necessario rivedere diverse parti del codice in itinere con la possibilità di impegnare, ulteriormente, anche i *progettisti*.
- Il *verificatore* è un ruolo che viene svolto in durane l'intero progetto e soprattutto in concomitanza con quello del programmatore e infatti, hanno un totale di ore molto simile poichè, idealmente, ogni elemento sviluppato dal/dai programmatore/i dovrebbe essere testato e verificato.
  Il verificatore non è relegato solo a questo, ma anche a verificare che tutti gli elementi prodotti durante il progetto siano corretti e rispettino delle norme.
#table(
  columns: (1.5fr, 1fr, 1fr, 1fr),
  inset: 8pt,
  align: (x,y) => if(x==0 and y>0 and y< 7) {left} else {center+horizon},
  fill: (x,y) => if (y== 0 or y == 7) { luma(230) },
  table.header(
    [*Ruolo*], [*Costo/Ora*], [*Ora/Ruolo*], [*Totale Ruolo*], 
  ),
  "Responsabile","30","63","1890",
  "Amministratore","20","70","1400",
  "Analista","25","75","1875",
  "Progettista","25","119","2975",
  "Programmatore","15","177","2655",
  "Verificatore","15","140","2100",
  "Totale","",[*644 h*],[*€ 12.895*]
)

== Ore per membro

#table(
  columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 8pt,
  align: (x,y) => if(x==0 and y>0) {left} else {center+horizon},
  fill: (x,y) => if y== 0 or x==7 { luma(230) },
  table.header(
    [*Membro*], [*Resp.*], [*Amm.*], [*Anal.*], [*Proget.*], [*Prog.*], [*Verif.*], [*Totale*]
  ),
  "Ribon","9","10","11","17","25","20","92",
  "Bazzan","9","10","11","17","25","20","92",
  "Fragonas","9","10","11","17","25","20","92",
  "Magnelli","9","10","11","17","25","20","92",
  "Sabbadin","9","10","11","17","25","20","92",
  "Rossi","9","10","10","17","26","20","92",
  "Zhuo","9","10","10","17","26","20","92",
)

== Rotazione ruoli
La rotazione dei ruoli è strutturata nel seguente modo:
- è stato fissato un elenco in ordine alfabetico su cui verrà definita un'assegnazione dei ruoli iniziale e che verrà variata in modo circolare di settimana in settimana, anche se ci riserviamo la possibilità di variare frequenza di rotazione; inoltre si prevede la possibilità che alcuni membri ricoprano per più tempo un ruolo rispetto ad un altro in base alle necessità (ad esempio per questioni di continuità nello svolgimento di un compito). L'elenco fissato è il seguente: 
  - Bazzan Matteo
  - Fragonas Francesco
  - Magnelli Gabriele
  - Ribon Luca
  - Rossi Luca
  - Sabbadin Filippo
  - Zhuo Yi Hao

Si prevede una suddivisione delle ore dedicate ad ogni ruolo che varierà in base alla fase di progetto:
- nella *fase iniziale* la maggior parte delle ore sarà dedicata a Responsabile, Analista e Verificatore; in uno stadio più avanzato di questa fase verranno integrati anche l'Amministratore e soprattutto i Progettisti.
- nella *fase di sviluppo* più concreto del prodotto si prevede una maggior presenza di Programmatori a discapito di una minor presenza di Responsabile, Analisti e Amministratori.  
- nelle fasi di *verifiche intermedie* ritornerà ad essere più presente il Responsabile in modo da gestire il lavoro perché sia pronto e adatto alla verifica.
Il verificatore sarà costantemente presente in tutta la durata di queste fasi.