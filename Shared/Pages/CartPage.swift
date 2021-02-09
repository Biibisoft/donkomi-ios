
import SwiftUI

struct CartPage: View {
	var body: some View {
		TabView {
			
			CompleteOrderPage()
				.navigationBarTitle("")
				.navigationBarBackButtonHidden(true)
				.navigationBarHidden(true)
				
				
				.tabItem {
					Image(systemName:"cart.fill")
					Text("Cart")
					
				}
			AwaitingOrders()
				.navigationBarTitle("")
				.navigationBarBackButtonHidden(true)
				.navigationBarHidden(true)
				
				.tabItem {
					Image(systemName:"clock")
					Text("History")
				}
			
		}
	}
}

struct CartPage_Previews: PreviewProvider {
	static var previews: some View {
		CartPage()
	}
}
