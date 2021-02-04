
import SwiftUI

struct CompleteOrderPage: View {
	var body: some View {
		
		ScrollView{
			OrderGroup()
			OrderGroup()
		}.navigationTitle("Complete Order")
		
	}
}


struct OrderGroup : View {
	var body : some View {
		OrderHeader()
		ForEach(1...4, id: \.self){
			item in
			InCartListItem()
		}
		Button(action:{}, label:{
			Text("FINISH ORDER")
				.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
				.foregroundColor(.white)
				.padding()
				.frame(maxWidth:.infinity)
				.background(Color.appBlue)
				.padding(.top,-8)
			
		})
	}
}

struct OrderHeader : View {
	var body : some View {
		Divider()
		HStack{
			Text("ORDERS FOR TRIP #738")
				.font(.caption)
				.fontWeight(.semibold)
		}.frame(maxWidth:.infinity, alignment: .leading)
		.padding(.leading)
		.foregroundColor(.appBlue)
		.padding(10)
		Divider()
		
	}
}
struct CompleteOrderPage_Previews: PreviewProvider {
	static var previews: some View {
		CompleteOrderPage()
	}
}
