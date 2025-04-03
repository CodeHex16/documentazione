#import "../../../../template/verbale.typ": *

#show: doc => verbale(
  titolo: "Incontro con il Professor Cardin",
  ordine-del-giorno: ("Chiarimento dubbi sulla correzione del documento AdR", "Chiarimento dubbi sull'architettura frontend",),
  data: [02/04/2025],
  ora: [8:40-9:00],
  tipo: "esterno",
  versioni: ("0.1.0", "02/04/2025", "Filippo Sabbadin", "Prima stesura", ""),
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
La riunione con il prof. Cardin è stata organizzata per chiarire alcuni dubbi sorti in seguito alla sua correzione del
documento Analisi dei requisiti, in quanto il gruppo non aveva ben chiaro alcuni punti. Inoltre sono state poste delle
domande riguardanti l'architettura per il frontend.

= Domande poste

- _Non era chiara la correzione sull'inclusione degli use case 8 e 34._\

L'errore riguardava la direzione della freccia, ad esempio nello use case 6, l'inserimento della password prevedeva
anche il cambio di essa, quando invece era previsto il caso contrario.

- _Erano sorti dei problemi sullo use case 40, in quanto veniva chiesto cosa rappresentava._\

Lo use case 40 nell'Analisi dei requisiti dovrebbe rappresentare un errore che si potrebbe presentare nell'invio di una
richiesta qualsiasi, tuttavia era poco chiaro. Si è deciso quindi modificarlo e rendere più esplicito il suo scopo.

- _Erano sorti dei dubbi su quali pattern era possibile usare con il frontend, più precisamente con Svelte in questo caso._

Per usare Svelte è stato necessario usare il design pattern "Model View Controller", con questo il professore ha
consigliato di continuare a usare i patterns con cui Svelte lavora.

- _Infine erano sorti dei dubbi su come rappresentare il grafico UML delle classi per il frontend._

In questo caso il professore ha informato il gruppo che se delle classi non sono rappresentabili con un grafico UML
delle classi, allora si può tranquillamente descrivere a parole. In ogni caso ha consigliato di non dare troppo peso al
frontend e concentrarsi di più sul backend.

= Conclusioni
I dubbi riguardanti il documento Analisi dei requisiti sono stati chiariti e le modifiche verranno effettuate il prima
possibile. Inoltre, per quanto riguarda il frontend, il gruppo ha deciso di seguire i consigli del professore,
concentrandosi maggiormente sul backend. Le rappresentazioni UML delle classi frontend saranno integrate solo se
strettamente necessarie, altrimenti verranno descritte a parole.