

import SwiftUI

struct NewStock: View {
	@State var text = ""
	@State var selected = "Selected"
	var body: some View {
		VStack{
			VStack{
				Text("Product Cover Photo")
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
				Section(header:Text("Product Details").fontWeight(.semibold).foregroundColor(.black)){
					TextField("Product name", text: $text)
					TextField("Price", text: $text)
					
					Picker(selection:$selected, label:Text("Select Vendor")){
						ForEach(["McDonals", "Ricardso","Jumbo"], id: \.self){
							item in
							
							Text(item).tag(item)
						}
					}
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

struct NewStock_Previews: PreviewProvider {
	static var previews: some View {
		NewStock()
	}
}
