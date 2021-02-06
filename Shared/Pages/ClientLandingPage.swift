

import SwiftUI

struct ClientLandingPage: View {
	@State var title = "..."
	var body: some View {
		TabView{
			DisplayAllCompaigns()
				//				 To remove navigation view spaces
				.navigationBarTitle("")
				.navigationBarBackButtonHidden(true)
				.navigationBarHidden(true)
				.tabItem {
					Image(systemName:"megaphone.fill")
					Text("Live Trips")
				}
			
			ShopComingSoon()
				
				.navigationBarTitle("")
				.navigationBarBackButtonHidden(true)
				.navigationBarHidden(true)
				.tabItem {
					Image(systemName:"bag.fill")
					Text("Shops")
				}
			
			SettingsPage()
				.navigationBarTitle("")
				.navigationBarBackButtonHidden(true)
				.navigationBarHidden(true)
				.tabItem {
					Image(systemName:"gearshape.fill")
					Text("Settings")
				}
		}.navigationBarTitle("")
		.navigationBarBackButtonHidden(true)
		.navigationBarHidden(true)
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
			HStack{
				Text("Live Trips")
					.font(.title)
					.fontWeight(.bold)
				Spacer()
				Image(systemName:"cart")
					.font(.title2)
			}.padding([.leading,.trailing,.top])
			.padding(.bottom,0)
			ScrollView(showsIndicators:false){
				ForEach(1...6, id: \.self){ campaign in
					CampaignCard()
				}
				
			}
		}
		
	}
}
struct ClientLandingPage_Previews: PreviewProvider {
	static var previews: some View {
		ClientLandingPage()
	}
}
