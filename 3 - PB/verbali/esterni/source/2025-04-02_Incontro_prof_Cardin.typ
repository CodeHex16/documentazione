#import "../../../../template/verbale.typ": *

#show: doc => verbale(
  titolo: "Incontro con il Professor Cardin",
  ordine-del-giorno: ("Chiarimento dubbi sulla correzione del documento Analisi dei Requisiti", "Chiarimento dubbi sull'architettura frontend",),
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
documento Analisi dei requisiti, in quanto il gruppo non aveva ben chiari alcuni punti.

= Domande e dubbi posti
#set enum(numbering: "Q1.", spacing: 1.5em)

+ _Non è chiara la correzione sull'inclusione tra gli use case 8 e 34._\
  L'errore riguarda la direzione della freccia, ad esempio nello use case 6, l'inserimento della password include
  anche la modifica di essa, quando nella realtà l'inclusione è inversa.

+ _Sono sorti dei dubbi sulla correzione dello use case 40._\
  Lo use case 40 nell'Analisi dei requisiti dovrebbe rappresentare un errore che si presenta all'invio di una richiesta errata o incompleta, tuttavia è poco chiaro si trattasse di un errore. Si è deciso quindi modificarlo e rendere più esplicito il suo scopo.

+ _Sono sorti dei dubbi su quali pattern era possibile usare con il frontend, più precisamente con Svelte in questo caso._\
  Svelte porta all'utilizzo del design pattern "Model View Controller", per questo il professore ha 
  consigliato di continuare a usare i pattern standard di Svelte.

+ _Sono sorti dei dubbi su come rappresentare il grafico UML delle classi per il frontend._\
  In questo caso il professore ha spiegato che è normale che il diagramma delle classi non si presti bene alla rappresentazione di alcuni componenti del frontend, anche se volendo ci sono alcuni accorgimenti che permettono di rappresentarli.
  Tuttavia, lo scopo dei diagrammi per questo progetto è quello di rappresentare le relazioni tra le componenti software del progetto e di conseguenza l'architettura, quindi non è necessario rappresentare ogni singolo componente/pagina del frontend.

= Conclusioni
I dubbi riguardanti il documento Analisi dei requisiti sono stati chiariti e le modifiche verranno effettuate il prima possibile. 

Per quanto riguarda il frontend, il gruppo ha ritenuto ragionevoli i consigli del professore e quindi li applicherà. Le rappresentazioni UML delle classi frontend saranno integrate solo se strettamente necessarie.