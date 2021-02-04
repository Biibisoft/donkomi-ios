
import SwiftUI

struct RoutineCard: View {
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
						Text("Estimated Time")
							.font(.caption2)
							.fontWeight(.semibold)
							.foregroundColor(.appGreen)
						Text("30mins")
							.font(.system(size:30))
							.fontWeight(.bold)
							.foregroundColor(.appGreen)
					}
				}.padding(.trailing)
				HStack{
					Text("Base Cost:   Rs 500")
						.font(.subheadline)
						.fontWeight(.semibold)
						.foregroundColor(.appRed)
					Spacer()
				}
			}.padding(.leading)
			Divider()
			
		}
	}
}
	
	struct RoutineCard_Previews: PreviewProvider {
		static var previews: some View {
			RoutineCard()
		}
	}
