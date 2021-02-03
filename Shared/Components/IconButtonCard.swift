

import SwiftUI

struct IconButtonCard: View {
	var icon = "plus"
	var text = "Button"
	var iconColor = Color.appRed
	var body: some View {
		Button(action:{}, label:{
		Rectangle()
			.frame(width:100, height:100)
			.foregroundColor(.white)
			.cornerRadius(10)
			.shadow(radius: 5 )
			.overlay(
				VStack{
					Image(systemName:icon)
						.font(.system(size:36))
						.foregroundColor(iconColor)
					Text(text)
						.padding(.top,5)
				}
			)
		}).foregroundColor(.black)
	}
}

struct IconButtonCard_Previews: PreviewProvider {
	static var previews: some View {
		IconButtonCard()
	}
}
