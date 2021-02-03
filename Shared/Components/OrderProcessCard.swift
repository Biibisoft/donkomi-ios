
import SwiftUI

struct OrderProcessCard: View {
	var body: some View {
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
					Text("Completed")
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
		.padding(10)
	}
}

struct OrderProcessCard_Previews: PreviewProvider {
	static var previews: some View {
		OrderProcessCard()
	}
}
