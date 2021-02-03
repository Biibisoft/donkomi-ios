

import SwiftUI

struct CampaignCard: View {
	var body: some View {
		VStack(alignment:.leading){
			HStack{
				Text("TRIP TO GRAND BAIE")
					.foregroundColor(.appBlue)
					.fontWeight(.semibold)
				Spacer()
				VStack{
					Text("+ Rs 50")
						.font(.title)
						.fontWeight(.semibold)
						.foregroundColor(.appRed)
					Text("/order")
						.font(.caption2)
						.fontWeight(.semibold)
						.foregroundColor(.appRed)
				}
			}.padding([.leading,.top,.trailing])
			
			VStack(alignment:.leading){
				Text("Vendors to order from")
					.foregroundColor(.grey_shade_3)
				HStack{
					Text("LA CROISETTE")
						.font(.caption)
						.fontWeight(.semibold)
						.padding(.leading,5)
					Text("SUPER U")
						.font(.caption)
						.fontWeight(.semibold)
						.padding(.leading,5)
					Text("JUMBO")
						.font(.caption)
						.fontWeight(.semibold)
						.padding(.leading,5)
				}.padding([.top,.bottom],1)
			}.frame(maxWidth:.infinity, alignment: .leading)
			.padding(.leading)
			
			VStack(alignment:.leading){
				Text("Only allowed to order")
					.foregroundColor(.grey_shade_3)
				HStack{
					Text("FOOD")
						.font(.caption)
						.fontWeight(.semibold)
						.padding(.leading,5)
					Text("GROCERIES")
						.font(.caption)
						.fontWeight(.semibold)
						.padding(.leading,5)
					Text("CHIPS")
						.font(.caption)
						.fontWeight(.semibold)
						.padding(.leading,5)
				}.padding([.top,.bottom],1)
			}.frame(maxWidth:.infinity, alignment: .leading)
			.padding(.leading)
			
			ZStack{
				HStack{
					Spacer()
					VStack{
						Text("LEAVING IN")
							.font(.caption2)
							.fontWeight(.semibold)
							.foregroundColor(.appGreen)
						Text("2hrs: 30mins")
							.font(.system(size:36))
							.fontWeight(.bold)
							.foregroundColor(.appGreen)
					}
				}.padding(.trailing)
				HStack{
					Image(systemName: "bus")
						.font(.system(size:40))
						.foregroundColor(.appBlue)
					Spacer()
				}
			}.padding(.leading)
			ZStack{
				Text("PLACE ORDER")
					.fontWeight(.semibold)
					.foregroundColor(.white)
					.padding()
					.frame(maxWidth:.infinity, alignment: .leading)
					.background(Color.appBlue)
				
				HStack{
					Spacer()
					Image(systemName:"arrowshape.turn.up.right.circle.fill")
						.font(.title)
						.foregroundColor(.white)
				}.padding(.trailing)
				
			}
		}
	}
	
}

struct CampaignCard_Previews: PreviewProvider {
	static var previews: some View {
		CampaignCard()
	}
}
