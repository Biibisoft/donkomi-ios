

import SwiftUI

struct ProductCard: View {
    var body: some View {
			HStack{
				Image("burger")
					.resizable()
					.frame(width:80, height:80)
					.cornerRadius(10)
					.padding(.trailing,10)
				VStack(alignment:.leading){
					HStack{
						Text("Fries")
							.font(.title2)
							.fontWeight(.semibold)
							.foregroundColor(.gray)
						Spacer()
						Image(systemName:"pencil.circle.fill")
							.font(.title)
							.foregroundColor(.appGreen)
							.padding(.trailing)
					}
					Text("Rs 600")
						.fontWeight(.semibold)
						.font(.title3)
						.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
						.foregroundColor(.appRed)
//					HStack{
//						Text("Athena's Thrift Shop")
//							.fontWeight(.semibold)
//							.font(.caption)
//						Spacer()
//						Text("Rs 3,221")
//							.font(.title3)
//							.fontWeight(.bold)
//							.foregroundColor(.appRed)
//							.padding(.trailing)
//					}
				}
				
			}.frame(maxWidth:.infinity,alignment: .leading)
			.padding(10)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard()
    }
}
