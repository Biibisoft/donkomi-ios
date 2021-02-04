
import SwiftUI

struct CreateRoutine: View {
	@State var text  = ""
	@State var selected = "Vendor"
	var body: some View {
		VStack{
			VStack{
				Text("Create Routine")
					.font(.subheadline)
					.fontWeight(.semibold)
				Form{
					Section(header:Text("Routine Details").fontWeight(.semibold).foregroundColor(.black)){
						TextField("Eg. Trip to the mall", text: $text)
						Text("What should we tell people when we notify them of your trip?")
							.foregroundColor(Color.grey_shade_3)
							.font(.caption)
						TextEditor(text: $text)
							.frame(height:150)
						ScrollView{
							HStack{
								Capsule()
									.foregroundColor(.appGreen)
									.frame(width:100, height:25)
									.overlay(
										Text("McDonalds")
											.font(.caption)
											.foregroundColor(.white)
											.fontWeight(.semibold)
									)
							}
						}
						Picker(selection:$selected, label: Text("Picker"), content: {
							Text("McDonalds").tag("MacDonalds")
							Text("Ricardos").tag("Ricardos")
							Text("KFC").tag("KFC")
						})
						
						Button(action:{}, label:{
							Text("Save Routine")
								.foregroundColor(.appBlue)
								.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
						})
						
					}
				}
			}
		}
	}
}

struct CreateRoutine_Previews: PreviewProvider {
	static var previews: some View {
		CreateRoutine()
	}
}
