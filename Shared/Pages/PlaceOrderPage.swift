

import SwiftUI

struct PlaceOrderPage: View {
	@State var text = ""
	var body: some View {
		VStack{
			ScrollView{
				Text("Shops you can order from")
					.font(.body)
					.fontWeight(.semibold)
					.frame(maxWidth:.infinity, alignment: .leading)
					.padding(.leading)
				
				ScrollView{
					HStack{
						Image("burger")
							.resizable()
							.frame(width:80, height:80)
							.cornerRadius(7)
						Image("burger")
							.resizable()
							.frame(width:80, height:80)
							.cornerRadius(7)
						Image("burger")
							.resizable()
							.frame(width:80, height:80)
							.cornerRadius(7)
					}
				}
				//------------------ SEARCH BOX --------------------
				
				TextBox(text: $text,placeholder:"Search", hasIcon: true, iconColor: Color.appBlue, strokeColor:Color.grey_shade_1)
				Button(action:{}, label:{
					VStack{
						Text("ADD CUSTOM ORDER")
							.font(.title3)
							.fontWeight(.semibold)
							.foregroundColor(Color.appBlue)
							.padding(10)
							.frame(maxWidth:.infinity)
							.overlay(
								HStack{
									Image(systemName:"plus")
										.font(.title)
										.foregroundColor(.appBlue)
										.padding(.leading,60)
									Spacer()
								}
							)
						Divider()
					}
				})
				//-------------- PRODUCTS DISPLAY AREA ----------------------------------
				VStack{
					ForEach(1...6, id: \.self){ product in
						AddProductListItem()
					}
				}
			}
		}
	}
}

struct PlaceOrderPage_Previews: PreviewProvider {
	static var previews: some View {
		PlaceOrderPage()
	}
}
