
import SwiftUI

struct CompleteOrderPage: View {
	@EnvironmentObject var state : ApplicationState
	var body: some View {
		
		VStack{
			SimpleTopNavBar(title: "Complete Order", hasBackButton: true) {
				guard state.PREVIOUS_PAGE == "" else {
					state.CURRENT_PAGE = state.PREVIOUS_PAGE
					return
				}
			}
			ScrollView(showsIndicators:false){
				OrderGroup()
				OrderGroup()
			}.frame(maxHeight:.infinity)
		}.navigationBarHidden(true)
		.navigationBarTitle("")
		.navigationBarBackButtonHidden(true)
		
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
				.fontWeight(.bold)
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
