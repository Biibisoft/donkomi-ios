
import SwiftUI

struct AddToVenture: View {
	var body: some View {
		VStack{
			SimpleTopNavBar(title:"Manage Your Space")
			ScrollView {
				Text("Create routines, vendors, and add items that your vendors sell")
					.font(.caption)
					.fontWeight(.semibold)
					.foregroundColor(.black)
					.padding([.leading,.trailing])
				
				HStack(spacing:15){
					IconButtonCard(text:"Vendor")
					IconButtonCard(text:"Stock")
					IconButtonCard(text:"Routine")
				}
				TabSelectors(spacing:40)
					.padding(.top,10)
				VStack{
					DisplayAllVendors()
				}
			}.navigationTitle("Manage")
		}
	}
}


struct DisplayAllVendors : View {
	var body : some View {
		VStack{
			ForEach(1...6, id: \.self){
				item in
				ShopCard()
			}
			
		}
	}
}

struct AddToVenture_Previews: PreviewProvider {
	static var previews: some View {
		AddToVenture()
	}
}
