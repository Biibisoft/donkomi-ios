
import SwiftUI

struct AddToVenture: View {
	var body: some View {
		ScrollView {
			Text("Create routines, vendors, and add items that your vendors sell")
				.font(.body)
				.fontWeight(.semibold)
				.foregroundColor(.black)
			HStack(spacing:15){
				IconButtonCard(text:"Vendor")
				IconButtonCard(text:"Stock")
				IconButtonCard(text:"Routine")
			}
		}
	}
}

struct AddToVenture_Previews: PreviewProvider {
	static var previews: some View {
		AddToVenture()
	}
}
