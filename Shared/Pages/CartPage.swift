
import SwiftUI

struct CartPage: View {
	var body: some View {
		TabView {
			NavigationView{
				CompleteOrderPage()
				
			}
			.tabItem {
				Image(systemName:"cart.fill")
				Text("Cart")
				
			}
			NavigationView{
				AwaitingOrders()
			}
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
