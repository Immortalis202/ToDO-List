

import SwiftUI

struct Riga: Identifiable,Equatable {
    let id: String
    var testo: String
    var fatto: Bool
}

struct PromemoriaView: View {
    
    @State private var mostraDaFare: Bool = false
    @State private var testo: String = ""
    
    @State private var elenco: [Riga] = [
        Riga(id: "1", testo: "Da fare 1", fatto: false),
        Riga(id: "2", testo: "Da fare 2", fatto: true),
        Riga(id: "3", testo: "Da fare 3", fatto: false),
    ]
    
    private var filtrati: [Riga] {
        elenco.filter { !$0.fatto || !mostraDaFare }
    }
    
    var body: some View {
        List {
            Toggle(isOn: $mostraDaFare) {
                TextField("Inserire testo", text: $testo, onCommit: {
                    print(testo)
                    elenco.append(Riga(id: UUID().uuidString, testo: testo, fatto: false))
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                        testo = ""
                    }
                })
            }
            ForEach(filtrati) { elemento in
                Toggle(isOn: Binding(
                    get: {
                        elemento.fatto
                    },
                    set: { newValue in
                        if let index = elenco.firstIndex(where: { $0.id == elemento.id }) {
                            elenco[index].fatto = newValue
                        }
                    }))
                {
                    Text(elemento.testo)
                }
            }
        }.animation(.default, value: filtrati)
    }
}

#Preview {
    PromemoriaView()
}

