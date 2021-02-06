
import SwiftUI

struct LoginPage: View {
	@EnvironmentObject var state : ApplicationState
	@State var text = ""
	var body: some View {
		VStack{
			Spacer()
				.frame(height:80)
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
				Button(action:{ state.CURRENT_PAGE = Konstants.REGISTRATION_PAGE}, label:{
					
					Text("Create An Account ")
						.font(.caption)
						.fontWeight(.semibold)
						.frame(maxWidth:.infinity, alignment: .leading)
				})
			}
			Spacer()
			VStack{
				LongButton(text:"LOGIN")
				LongButton(text:"WITH GOOGLE", backgroundColor: Color.appRed)
			}.padding(.bottom,20)
		}.padding([.leading,.trailing])
		.navigationBarBackButtonHidden(true)
		
	}
}




struct LoginPage_Previews: PreviewProvider {
	static var previews: some View {
		LoginPage()
	}
}
