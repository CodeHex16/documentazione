#import "../../../../template/verbale-esterno-noFirma.typ": *

#show: doc => verbale(
  titolo: "Incontro con il Professor Cardin",
  ordine-del-giorno: (
    "Discussione sulla corretteza degli Use Case scelti",
    "Chiarimenti dubbi sull'Analisi dei requisiti",
  ),
  data: [14/02/2025],
  ora: [8:40-9:00],
  tipo: "esterno",
  versioni: ("0.1.0", "14/02/2025", "Filippo Sabbadin", "Prima stesura", "Ribon Luca"),
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
    "Gabriele Magnelli",
    "Verificatore",
    "20m",
    "Filippo Sabbadin",
    "Redattore",
    "20m",
    "Riccardo Cardin",
    "Professore",
    "20m",
  ),
  doc,
)

= Scopo dell'incontro
Durante l'incontro con il Professor Cardin si è discusso della correttezza degli #gloss[Use Case] scelti e sono stati chiariti i
dubbi sull'#gloss[Analisi dei requisiti]. Durante l'incontro sono state poste le seguenti domande.

= Domande poste
#set enum(numbering: "Q1.", spacing: 1.5em)

+ _Fornitore può essere generalizzazione di Cliente?_

  Si, questo significa che qualsiasi azione eseguita dal cliente, può essere eseguita anche dal #gloss[fornitore].

+ _Pre e post condizioni sono necessarie? in molti casi sono ridondanti._

  Si, sono necessarie. Una descrive qualcosa che avviene prima, l'altra qualcosa dopo, non si sovrappongono.

+ _Il sistema va considerato come attore?_

  No, il sistema non è un attore.

+ _Nel recupero password è giusto dire che modifica password è estensione anche se in recupero password è presente un
passagio intermedio non gestito dalla nostra piattaforma (il fatto che l’utente legga la mail e apra il link di
recupero)?_

  Con questa domanda, si è raggiunta la conclusione di dover comprendere meglio cosa modellare.

+ _Va bene fare degli use case generici che vengono usati sia per fornitore che per cliente? Nel diagramma come vanno
messi
gli attori in questo caso?_
  Necessario un attore per i casi dove non è stato fatto ancora l'accesso.

= Conclusioni
Durante l'incontro, il professore ha dato uno sguardo al documento dell'analisi dei requisiti e ha consigliato al gruppo
di ultimare i disegni con i grafici #gloss[UML], chiarire che l'attore fornitore è generalizzazione di cliente e di rendere i
requisiti più atomici e specifici.
