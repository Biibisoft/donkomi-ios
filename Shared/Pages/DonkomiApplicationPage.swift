
import SwiftUI

struct DonkomiApplicationPage: View {
	@State var text = ""
	var body: some View {
		VStack{
		ScrollView{
			TextBox(text: $text, placeholder:"First Name")
			TextBox(text: $text, placeholder:"Last Name")
			TextBox(text: $text, placeholder:"Room Number")
			Text("I would like to be a")
				.frame(maxWidth:.infinity,alignment: .leading)
				.foregroundColor(.appBlue)
			DropdownMenu()
			Text("Learn about earning on Donkomi")
				.frame(maxWidth:.infinity,alignment: .leading)
				.foregroundColor(.appRed)
				.font(.subheadline)
		}.padding()
			LongButton(text: "Submit Application", backgroundColor: .appGreen, textColor: .white)
		}
	}
}

struct DonkomiApplicationPage_Previews: PreviewProvider {
	static var previews: some View {
		DonkomiApplicationPage()
	}
}
