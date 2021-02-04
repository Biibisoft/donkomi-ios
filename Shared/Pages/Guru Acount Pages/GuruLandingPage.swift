
import SwiftUI

struct GuruLandingPage: View {
	var body: some View {
		
		TabView {
			NavigationView{
				DisplayRoutines()
			}
			.tabItem {
				Image(systemName: "arrow.uturn.backward.circle")
				Text("Routines")
			}
			
			NavigationView{
				OrderList()
			}
			.tabItem {
				Image(systemName: "bag")
				Text("Orders")
			}
			
			NavigationView{
				AddToVenture()
			}
			.tabItem {
				Image(systemName: "plus")
				Text("Management")
			}
			
			
		}
	}
}


struct DisplayRoutines : View {
	var body : some View {
		ScrollView {
			ForEach(1...5, id: \.self){
				item in
				RoutineCard()
			}
		}.navigationTitle("Routines")
		
	}
}
struct GuruLandingPage_Previews: PreviewProvider {
	static var previews: some View {
		GuruLandingPage()
	}
}
