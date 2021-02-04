
import SwiftUI

struct NewVendorForm: View {
	@State var text = ""
	var body: some View {
		VStack{
			VStack{
				Text("Vendor's Cover Photo")
					.fontWeight(.semibold)
					.foregroundColor(.white)
					.frame(maxWidth:.infinity, alignment: .leading)
					.padding(.leading)
					.zIndex(1.0)
				Image("burger")
					.resizable()
					.scaledToFill()
					.frame(height:200)
					.overlay(
						Rectangle()
							.frame(height:350)
							.opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
					)
			}.padding(.top,28)
			Form{
				Section(header:Text("Vendor's Details").fontWeight(.semibold).foregroundColor(.black)){
					TextField("Vendor name", text: $text)
					Text("Brief description")
						.foregroundColor(Color.grey_shade_3)
						.font(.subheadline)
					TextEditor(text: $text)
						.frame(height:150)
					Button(action:{},label:{
						
						Text("Done")
							.fontWeight(.semibold)
							.foregroundColor(.appBlue)
					})
				}
			}
		}
	}
}

struct NewVendorForm_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			NewVendorForm()
		}
	}
}
