//
//  Conta.swift
//  ToDO-List
//
//  Created by s15 on 15/10/24.
//

import SwiftUI

struct Conta: View {
	
	@State var conta:Int = 0
	
	func incrementa() {
		conta += 1
	}
	
    var body: some View {
		Text("conta: \(conta)")
		Bottone(testo: "Incrementa") {
			incrementa()
		}
    }
}

#Preview {
    Conta()
}
