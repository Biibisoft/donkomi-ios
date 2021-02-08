

import SwiftUI

struct AppIndex: View {
	@EnvironmentObject var state : ApplicationState
	var body: some View {
		NavigationView{
			
			ZStack{
				
				NavigationLink( "", destination: SplashScreen(), tag: Konstants.SPLASH_SCREEN, selection: $state.CURRENT_PAGE)
				
				NavigationLink( "", destination: LoginPage(), tag: Konstants.LOGIN_PAGE, selection: $state.CURRENT_PAGE)
				
				NavigationLink( "", destination: RegistrationPage(), tag: Konstants.REGISTRATION_PAGE, selection: $state.CURRENT_PAGE)
				
				NavigationLink( "", destination: ClientLandingPage(), tag: Konstants.CLIENT_LANDING_PAGE, selection: $state.CURRENT_PAGE)
				
				NavigationLink( "", destination: GuruLandingPage(), tag: Konstants.GURU_LANDING_PAGE, selection: $state.CURRENT_PAGE)
				
				NavigationLink( "", destination: CartPage().navigationBarHidden(true)
													.navigationBarTitle("")
							 .navigationBarBackButtonHidden(true), tag: Konstants.COMPLETE_ORDER_PAGE, selection: $state.CURRENT_PAGE)
				
				NavigationLink( "", destination: AddToVenture(), tag: Konstants.GURU_ADD_TO_VENTURE_PAGE, selection: $state.CURRENT_PAGE)
				
				NavigationLink( "", destination: OrderHistory(), tag: Konstants.ORDER_HISTORY_PAGE, selection: $state.CURRENT_PAGE)
				
				NavigationLink( "", destination: OrderList(), tag: Konstants.ORDER_MANAGEMENT, selection: $state.CURRENT_PAGE)
				
				NavigationLink( "", destination: ChooseUniversity(), tag: Konstants.CHOOSE_UNI, selection: $state.CURRENT_PAGE)
				
				
			}
			
			
			
			
			
			
			
			
			//--------------------- NAVIGATION END -------------------
		}
		
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		AppIndex()
	}
}
