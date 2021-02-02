

import SwiftUI
struct TextBox : View {
	@Binding var text: String
	var  placeholder : String  = "Text"
	var  secure : Bool = false
	var body : some View {
		if secure {
			SecureField(placeholder, text: $text)
				.padding()
				.overlay(
					Rectangle()
						.stroke(lineWidth:1)
						.foregroundColor(Color.appBlue)
				)
				.foregroundColor(Color.appBlue)
		}else{
			TextField(placeholder, text: $text)
				.padding()
				.overlay(
					Rectangle()
						.stroke(lineWidth:1)
						.foregroundColor(Color.appBlue)
				)
				.foregroundColor(Color.appBlue)
		}
	}
}
	

struct TextBox_Previews: PreviewProvider {
    static var previews: some View {
			TextBox(text: .constant("Something"))
    }
}
