

import SwiftUI

struct LongButton : View {
	var text  = "Button Text"
	var backgroundColor = Color.appBlue
	var textColor = Color.white
	var body : some View {
		
		Text(text)
			.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
			.font(.system(size:15))
			.padding()
			.frame(maxWidth:.infinity)
			.background(backgroundColor)
			.foregroundColor(textColor)
		
		
	}
	
	
	func defaultFunc(){
		
	}
}



struct LongButton_Previews: PreviewProvider {
	static var previews: some View {
		LongButton()
	}
}
