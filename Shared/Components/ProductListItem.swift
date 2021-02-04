

import SwiftUI

struct ProductListItem: View {
	var type = "dfdf"
	var body: some View {
		if type == Konstants.PRODUCT_ITEM{
			AddProductListItem()
		}else{
			InCartListItem()
		}
	}
}

struct AddProductListItem : View {
	var body : some View {
		VStack(alignment:.leading){
			VStack{
				HStack{
					Image("burger")
						.resizable()
						.frame(width:60, height:60)
						.cornerRadius(10)
						.padding(.trailing,10)
					Text("Double Cheese Burger")
						.fontWeight(.semibold)
						.foregroundColor(Color.grey_shade_3)
					Spacer()
					Image(systemName:"cart.fill.badge.plus")
						.font(.title)
						.foregroundColor(.appGreen)
						.padding(.trailing)
					
				}.padding([.leading,.trailing])
			}.frame(maxWidth:.infinity, alignment: .leading)
			Divider()
		}
	}
}

struct InCartListItem : View {
	var body : some View {
		VStack(alignment:.leading){
			VStack{
				HStack{
					Image("burger")
						.resizable()
						.frame(width:60, height:60)
						.cornerRadius(10)
						.padding(.trailing,10)
					VStack(alignment:.leading){
						Text("Double Cheese Burger")
							.fontWeight(.semibold)
							.foregroundColor(Color.grey_shade_3)
						HStack{
							Text("x3")
								.font(.body)
								.fontWeight(.bold)
								.foregroundColor(.appGreen)
								.padding(.trailing)
							Text("Rs 500")
								.font(.body)
								.fontWeight(.bold)
								.foregroundColor(.appRed)
								.padding(.trailing)
							Spacer()
							Button(action:{}, label:{
								Image(systemName:"minus")
									.foregroundColor(.appRed)
									.font(.title)
									.padding(.trailing)
							})
							Button(action:{}, label:{
								Image(systemName:"plus")
									.foregroundColor(.appGreen)
									.font(.title)
							})
						}
					}
				}.padding([.leading,.trailing])
			}.frame(maxWidth:.infinity, alignment: .leading)
			Divider()
		}
	}
}

struct ProductListItem_Previews: PreviewProvider {
	static var previews: some View {
		ProductListItem()
	}
}
