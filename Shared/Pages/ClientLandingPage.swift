

import SwiftUI

struct ClientLandingPage: View {
	@State var title = "..."
	var body: some View {
		TabView{
			DisplayAllCompaigns()
				.onAppear(){
					title = "Live Trips"
				}
				.tabItem {
					Image(systemName:"megaphone.fill")
					Text("Live Trips")
				}
			
			ShopComingSoon()
				.onAppear(){
					title = "Shops"
				}
			
				.tabItem {
					Image(systemName:"bag.fill")
					Text("Shops")
				}
				
			SettingsPage()
				.onAppear(){
					title = "Settings"
				}
				.tabItem {
					Image(systemName:"gearshape.fill")
					Text("Settings")
				}
			
		}.navigationBarBackButtonHidden(true)
		.navigationTitle(title)
		.navigationBarItems(
			trailing:Image(systemName:"cart.fill")
				.font(.system(size:25))
				.foregroundColor(.black))
	}
}


struct ShopComingSoon : View {
	var body : some View {
		VStack{
			Image(systemName:"bag")
				.font(.system(size:50))
			Text("Coming Soon...")
		}.navigationTitle("Shops")
		
	}
}
struct DisplayAllCompaigns: View {
	var body : some View {
		VStack{
			ScrollView(showsIndicators:false){
				ForEach(1...6, id: \.self){ campaign in
					CampaignCard()
				}
				
			}
			
//			.navigationTitle("Live Trips")
//			.navigationBarItems(
//				trailing:Image(systemName:"cart.fill")
//					.font(.system(size:25))
//					.foregroundColor(.black))
		}
	}
}
struct ClientLandingPage_Previews: PreviewProvider {
	static var previews: some View {
		ClientLandingPage()
	}
}
