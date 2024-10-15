import SwiftUI

struct Bottone: View {
	
	var testo:String = "Bottone"
	var radius:Double = 10
	var colore:Color = .red
	var callback:() -> Void = {
		print("bottone premuto")
	}
	
	var body: some View {
		Button {
			callback()
		} label: {
			Text(testo)
				.padding(.all, 20.0)
				.background(colore)
				.cornerRadius(radius)
				.overlay(
					RoundedRectangle(cornerRadius: radius)
						.stroke(.green, lineWidth: 4)
				)
		}
	}
}

#Preview {
	Bottone()
}

