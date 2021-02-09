

import SwiftUI
struct TextBox : View {
	@Binding var text: String
	var  placeholder : String  = "Text"
	var  secure : Bool = false
	var  hasIcon = false
	var icon = "magnifyingglass"
	var iconColor = Color.gray
	var strokeColor = Color.appBlue
	var body : some View {
		if secure {
			SecureField(placeholder, text: $text)
				.padding(10)
				.overlay(
					Rectangle()
						.stroke(lineWidth:1)
						.foregroundColor(strokeColor)
				)
				.foregroundColor(Color.appBlue)
		}else{
			TextField(placeholder, text: $text)
				.padding(10)
				.padding(.leading, hasIcon ? 35 : 0)
				.overlay(
					Rectangle()
						.stroke(lineWidth:1)
						.foregroundColor(strokeColor)
				)
				.font(.subheadline)
				.foregroundColor(Color.appBlue)
				.overlay(
					
					HStack{
						if hasIcon {
							Image(systemName:icon)
								.foregroundColor(iconColor)
								.padding(.leading)
							Spacer()
						}
					}
				)
			
		}
	}
}


struct TextBox_Previews: PreviewProvider {
	static var previews: some View {
		TextBox(text: .constant("Something"))
	}
}
