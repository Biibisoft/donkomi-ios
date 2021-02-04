
import SwiftUI

struct ShopCard: View {
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
						Text("Fries")
							.font(.title2)
							.fontWeight(.semibold)
							.foregroundColor(.gray)
						Spacer()
						Image(systemName:"pencil.circle.fill")
							.font(.system(size:35))
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
