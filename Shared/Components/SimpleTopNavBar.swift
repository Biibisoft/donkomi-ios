

import SwiftUI

struct SimpleTopNavBar: View {
	@EnvironmentObject var state : ApplicationState
	var title = "Nav Title"
	var hasBackButton  = false
	var backFxn :  (()-> Void)? = nil
	var body: some View {
		HStack{
			if hasBackButton {
				Button(action:{self.backFxn!()}, label:{
					Image(systemName: "chevron.backward")
						.font(.title2)
						.foregroundColor(.appBlue)
				})
				Text(title)
					.font(.title2)
					.fontWeight(.bold)
				
			}else{
				Text(title)
					.font(.title)
					.fontWeight(.bold)
			}
			Spacer()
			Button(action:{
				state.CURRENT_PAGE = Konstants.COMPLETE_ORDER_PAGE
			}, label:{
				Image(systemName:"cart")
					.font(.title2)
					.foregroundColor(.appBlue)
			})
			
		}
		
		.padding([.leading,.trailing,.top])
		.padding(.bottom,0)
		.background(Color.white)
	}
}

struct SimpleTopNavBar_Previews: PreviewProvider {
	static var previews: some View {
		SimpleTopNavBar()
	}
}
