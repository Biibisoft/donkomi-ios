
import SwiftUI

struct RegistrationPage: View {
	@State var text : String = ""
	var body: some View {
		VStack{
			Spacer()
				.frame(height:100)
			VStack(alignment:.leading){
				Text("Create Your Account With email and password")
					.padding(.bottom)
				TextBox(text: $text, placeholder: "Email")
				TextBox(text: $text, placeholder: "Preferred Name")
				TextBox(text: $text, placeholder: "Phone Number")
				TextBox(text: $text, placeholder: "Password")
				TextBox(text: $text, placeholder: "Confirm Password")
				DropdownMenu()
				
			}.padding()
			Spacer()
			VStack{
				LongButton(text:"REGISTER")
				LongButton(text:"USE GOOGLE", backgroundColor: Color.appRed)
			}.padding()
		}.navigationTitle("Sign In Instead")
	}
}

struct RegistrationPage_Previews: PreviewProvider {
	static var previews: some View {
		RegistrationPage()
	}
}
