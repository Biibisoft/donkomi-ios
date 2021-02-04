

import SwiftUI

struct ClientLandingPage: View {
	var body: some View {
		TabView{
			DisplayAllCompaigns()
				.tabItem {
					Image(systemName:"megaphone.fill")
					Text("Live Trips")
				}
			
			ShopComingSoon()
				.tabItem {
					Image(systemName:"bag.fill")
					Text("Orders")
				}
			
			SettingsPage()
				.tabItem {
					Image(systemName:"gearshape.fill")
					Text("Settings")
				}
		}
	}
}


struct ShopComingSoon : View {
	var body : some View {
		NavigationView{
			VStack{
				Image(systemName:"bag")
					.font(.system(size:50))
				Text("Coming Soon...")
			}.navigationTitle("Shops")
			
		}
	}
}
struct DisplayAllCompaigns: View {
	var body : some View {
		
		NavigationView{
			VStack{
				ScrollView(showsIndicators:false){
					ForEach(1...6, id: \.self){ campaign in
						CampaignCard()
					}
				}
			}.navigationTitle("Live Trips")
			.navigationBarItems(
				trailing:Image(systemName:"cart.fill")
					.font(.system(size:25))
					.foregroundColor(.black))
		}
	}
}
struct ClientLandingPage_Previews: PreviewProvider {
	static var previews: some View {
		ClientLandingPage()
	}
}
