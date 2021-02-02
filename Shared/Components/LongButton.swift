

import SwiftUI

struct LongButton : View {
	var text  = "Button Text"
	var backgroundColor = Color.appBlue
	var textColor = Color.white
	var body : some View {
		Button(action:{}, label:{
			Text(text)
				.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
				.font(.system(size:18))
				.padding()
				.frame(maxWidth:.infinity)
				.background(backgroundColor)
				.foregroundColor(textColor)
		})
		
	}
}



struct LongButton_Previews: PreviewProvider {
    static var previews: some View {
        LongButton()
    }
}
