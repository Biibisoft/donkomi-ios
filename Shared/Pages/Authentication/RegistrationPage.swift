
import SwiftUI

struct RegistrationPage: View {
	@EnvironmentObject var state : ApplicationState
	@State var text : String = ""
	var body: some View {
		ScrollView{
			VStack{
				VStack(alignment:.leading){
					Text("Create Your Account With email and password")
						.font(.caption)
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
					Button(action:{state.CURRENT_PAGE = Konstants.CLIENT_LANDING_PAGE	}, label:{
						LongButton(text:"REGISTER")
						
					})
					
					Button(action:{state.CURRENT_PAGE = Konstants.GURU_LANDING_PAGE}, label:{
						LongButton(text:"USE GOOGLE", backgroundColor: Color.appRed)
					})
					
				}.padding()
			}
		}.navigationTitle("Registration")
		.navigationBarItems(leading:
													Button(action:{state.CURRENT_PAGE = Konstants.LOGIN_PAGE}, label:{ HStack{
														Image(systemName:"chevron.backward")
														Text("Back")
															.font(.body)
													}.foregroundColor(.appBlue)
													})
		)
		.navigationBarBackButtonHidden(true)
	}
}

struct RegistrationPage_Previews: PreviewProvider {
	static var previews: some View {
		RegistrationPage()
	}
}
