
import SwiftUI

struct GuruLandingPage: View {
	var body: some View {
		
		TabView {
			
			DisplayRoutines()
				.navigationBarTitle("")
				.navigationBarBackButtonHidden(true)
				.navigationBarHidden(true)
				.tabItem {
					Image(systemName: "arrow.uturn.backward.circle")
					Text("Routines")
				}
			
			
			OrderList()
				
				.navigationBarTitle("")
				.navigationBarBackButtonHidden(true)
				.navigationBarHidden(true)
				.tabItem {
					Image(systemName: "bag")
					Text("Orders")
				}
			
			
			AddToVenture()
				.navigationBarTitle("")
				.navigationBarBackButtonHidden(true)
				.navigationBarHidden(true)
				.tabItem {
					Image(systemName: "plus")
					Text("Management")
				}
		}
	}
}


struct DisplayRoutines : View {
	var body : some View {
		VStack{
			SimpleTopNavBar(title:"Routines")
			ScrollView {
				ForEach(1...5, id: \.self){
					item in
					RoutineCard()
				}
			}
		}
		
	}
}
struct GuruLandingPage_Previews: PreviewProvider {
	static var previews: some View {
		GuruLandingPage()
	}
}
