
import SwiftUI

struct OrderProcessCard: View {
	var awaiting = false
	var body: some View {
		VStack{
		HStack{
			Image("burger")
				.resizable()
				.frame(width:80, height:80)
				.cornerRadius(10)
				.padding(.trailing,10)
			VStack(alignment:.leading){
				HStack{
					Text("Order #3233")
						.font(.title2)
						.fontWeight(.semibold)
						.foregroundColor(.gray)
					Spacer()
					Text(awaiting ? "Awaiting" : "Completed")
						.font(.caption)
						.fontWeight(.semibold)
						.foregroundColor(.appGreen)
						.padding(.trailing)
				}
				Text("For trip #112")
					.fontWeight(.semibold)
					.font(.caption)
				HStack{
					Text("Athena's Thrift Shop")
						.fontWeight(.semibold)
						.font(.caption)
					Spacer()
					Text("Rs 3,221")
						.font(.title3)
						.fontWeight(.bold)
						.foregroundColor(.appRed)
						.padding(.trailing)
				}
			}
			
		}.frame(maxWidth:.infinity,alignment: .leading)
		.padding([.leading,.trailing],10)
			Divider()
		}
	}
}

struct OrderProcessCard_Previews: PreviewProvider {
	static var previews: some View {
		OrderProcessCard()
	}
}
