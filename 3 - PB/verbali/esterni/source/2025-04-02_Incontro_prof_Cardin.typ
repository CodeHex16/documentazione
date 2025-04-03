#import "../../../../template/verbale.typ": *

#show: doc => verbale(
  titolo: "Incontro con il Professor Cardin",
  ordine-del-giorno: ("", "",),
  data: [02/04/2025],
  ora: [8:40-9:00],
  tipo: "esterno",
  versioni: ("0.1.0", "02/04/2025", "Filippo Sabbadin", "Prima stesura", "Ribon Luca"),
  presenze: (
    "Matteo Bazzan",
    "Verificatore",
    "20m",
    "Luca Ribon",
    "Verificatore",
    "20m",
    "Francesco Fragonas",
    "Verificatore",
    "20m",
    "Filippo Sabbadin",
    "Relatore",
    "20m",
    "Prof. Riccardo Cardin",
    "Professore",
    "20m",
  ),
  doc,
)

= Scopo dell'incontro


= Domande poste
#set enum(numbering: "Q1.", spacing: 1.5em)

//dubbi implementazione
// - Freccia dalla direzione sbagliata, l'inserimento passowrd prevedeva il cambio password
//dubbi su use case troppo generico "richiesta api con dati mancanti"
// - 
//pattern da usare con frontend
// - Usare quelli che ci faceva usare svelte
//rappresentazione frontend
// - Non darci troppo peso

+ _domanda?_\
  risposta.

= Conclusioni
Durante l'incontro, il professore ha dato uno sguardo al documento dell'analisi dei requisiti e ha consigliato al gruppo
di ultimare i disegni con i grafici #gloss[UML], chiarire che l'attore fornitore è generalizzazione di cliente e di
rendere i requisiti più atomici e specifici.