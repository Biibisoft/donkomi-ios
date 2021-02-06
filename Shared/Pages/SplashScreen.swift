
import SwiftUI

struct SplashScreen: View {
	@EnvironmentObject var state : ApplicationState
	var body: some View {
		VStack{
			Spacer()
			Image.appLogo
				.resizable()
				.frame(width:190, height:130)
			Text("DONKOMI")
				.fontWeight(.semibold)
				.font(.system(size:23))
				.foregroundColor(Color.appBlue)
				.padding(.top,20)
			Spacer()
			Text("Place your orders like the African boss that you are")
				.font(.system(size:13))
				.foregroundColor(Color.appBlue)
				.fontWeight(.semibold)
		}.navigationBarBackButtonHidden(true)
		.onAppear(){
			DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
				DispatchQueue.main.async {
					self.state.CURRENT_PAGE = Konstants.LOGIN_PAGE
				}
			}
			
		}
	}
}

struct SplashScreen_Previews: PreviewProvider {
	static var previews: some View {
		SplashScreen()
	}
}
