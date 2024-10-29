# @Environment e @Observable
```Swift
@Observable
class ModelloDati {
    var elenco: [Riga] = [
        Riga(id: "1", testo: "Da fare 1", fatto: false),
        Riga(id: "2", testo: "Da fare 2", fatto: true),
        Riga(id: "3", testo: "Da fare 3", fatto: false),
    ]
}
@Environment(ModelloDati.self) var modelloDati
```


### Cosa succede quando modifichi la proprietà x di pointClass2?
✅Modifica anche x di pointClass1
### Quando assegni pointClass1 a pointClass2 e modifichi pointClass2, quale comportamento osservi?
✅Cambia sia pointClass1 che pointClass2
### Cosa fa l'inizializzatore in PointStruct?
❌Crea una copia dell'oggetto
### Cosa verrà stampato se modifichi pointStruct2.x a 10?
✅0 e 0

### Quale di queste è una closure che non vuole parametri e non ritorna nulla?
✅var callback:() -> Void
### Quale di queste identifica una closure con una azione di default?
```Swift 
var callback:() -> Void = {
     print("bottone premuto")
}
```
### Se l'ultimo parametro di una funzione è una callback e si chiama "callback", come passo ad essa una closure?

```Swift
Bottone(testo: "Paperino", radius: 20) {
    incrementa()
}
```
### Cos'è una "closure"?
✅È una funzione passabile come parametro


### Cosa permette di fare una classe marcata come @Observable?
✅Notificare la vista di cambiamenti
### Cosa fa il componente List in SwiftUI?
✅Mostra una serie di dati in forma di lista


### A cosa serve l'annotazione @Environment in SwiftUI?
✅Per iniettare dipendenze esterne nella view
### Perché la struct Riga implementa il protocollo Identifiable?
✅Per identificare univocamente ogni istanza in una lista
### Cosa fa la funzione aggiornaRiga in PromemoriaView?
✅Aggiorna lo stato di 'fatto' di una riga esistente


### Cosa permette di fare l'annotazione @Binding in SwiftUI?
✅Passare dati tra views
### Cosa fa il controllo Toggle in SwiftUI?
✅Permette all'utente di scegliere tra due opzioni
### A cosa serve .costant?
✅Per creare un binding con il solo getter senza dover passare uno stato



### A cosa serve la variabile @State in SwiftUI?
✅Per gestire lo stato locale della vista
### Cosa fa la funzione postData() nel codice?
✅Richiede dati da un'API
### Perché le strutture Post e Reactions conformano al protocollo Codable?
✅Per facilitare la codifica e decodifica dei dati JSON
### Cosa succede se c'è un errore durante il fetch dei dati?
✅L'errore viene stampato in console
### Cosa si passa ad una URLRequest?
✅Una URL
### Per conformarsi a decode, a cosa deve conformarsi Wellcome?
let wellcome = try JSONDecoder().decode(Welcome.self, from: data) <br>
✅Codable
### A cosa deve conformare CodingKeys?
✅CodingKey
### Cosa accade se non si chiama task.resume() su un'attività di rete creata con URLSession?
✅L'attività non verrà avviata e la richiesta non sarà mai inviata.
### Qual è lo scopo del blocco { data, response, error in } in..
✅Gestire la risposta del server, controllare eventuali errori e accedere ai dati ricevuti.
### Qual è lo scopo di swift let welcome = try JSONDecoder().decode(Welcome.self, from: data) in Swift?
✅Convertire i dati JSON ricevuti in un'istanza del tipo Welcome, che rappresenta un modello Swift.
