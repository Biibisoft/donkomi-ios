
import SwiftUI

struct OrderList: View {
	var body: some View {
		VStack{
			SimpleTopNavBar(title:"Manage Orders")
			ScrollView{
				VStack{
					ForEach(1...5, id:\.self){
						order in
						Button(action:{}, label:{
							ShopCard(icon:"chevron.right")
						})
					}
				}
			}
		}
	}
}

struct OrderList_Previews: PreviewProvider {
	static var previews: some View {
		OrderList()
	}
}
