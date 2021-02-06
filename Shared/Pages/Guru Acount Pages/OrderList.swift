
import SwiftUI

struct OrderList: View {
	var body: some View {
		ScrollView{
			VStack{
				ForEach(1...5, id:\.self){
					order in
					Button(action:{}, label:{
						ShopCard(icon:"chevron.right")
					})
				}
			}
		}.navigationTitle("Order List")
		
	}
}

struct OrderList_Previews: PreviewProvider {
	static var previews: some View {
		OrderList()
	}
}
