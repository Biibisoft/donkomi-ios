
import SwiftUI

struct LoginPage: View {
	@State var text = ""
	var body: some View {
		VStack{
			Spacer()
				.frame(height:130)
			VStack{
				Image.appLogo
					.resizable()
					.frame(width:100, height:70)
				Text("Sign Into Your Account")
					.fontWeight(.semibold)
					.foregroundColor(Color.appBlue)
					.padding()
				
				TextBox(text: $text, placeholder: "Email")
				TextBox(text: $text, placeholder: "Password")
			}
			Spacer()
			VStack{
				LongButton(text:"LOGIN")
				LongButton(text:"WITH GOOGLE", backgroundColor: Color.appRed)
			}
		}.padding([.leading,.trailing])
		
	}
}




struct LoginPage_Previews: PreviewProvider {
	static var previews: some View {
		LoginPage()
	}
}
