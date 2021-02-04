
import SwiftUI

struct ShopCard: View {
	var icon = "pencil.circle.fill"
	var text = "McDonalds"
	var image = "burger"
	var body: some View {
		VStack{
			HStack{
				Image(image)
					.resizable()
					.frame(width:50, height:50)
					.cornerRadius(10)
					.padding(.trailing,10)
				VStack(alignment:.leading){
					HStack{
						Text(text)
							.font(.title2)
							.fontWeight(.semibold)
							.foregroundColor(.gray)
						Spacer()
						Image(systemName:icon)
							.font(.system(size:30))
							.foregroundColor(.appGreen)
							.padding(.trailing)
					}
					
				}
				
			}.frame(maxWidth:.infinity,alignment: .leading)
			.padding([.leading,.trailing])
			Divider()
		}
	}
	
}

struct ShopCard_Previews: PreviewProvider {
	static var previews: some View {
		ShopCard()
	}
}
