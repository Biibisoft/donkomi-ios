

import SwiftUI

struct ChooseUniversity: View {
	var body: some View {
		VStack{
			HStack{
				Image(systemName: "chevron.backward")
					.padding(.trailing)
					.foregroundColor(.appBlue)
					.padding(.leading)
				Text("Back")
					.fontWeight(.semibold)
					.font(.system(size:22))
					.foregroundColor(.appBlue)
				Spacer()
			}
			ScrollView(showsIndicators:false){
				
				VStack(alignment:.leading){
					HStack{
						Text("Choose Organisation")
							.font(.title3)
							.fontWeight(.semibold)
							.foregroundColor(.appBlue)
							.padding(.leading)
						Spacer()
					}
					HStack{
						Text("What organisation do you belong to?")
							.font(.subheadline)
							.fontWeight(.semibold)
							.foregroundColor(.grey_shade_3)
							.padding([.leading])
							.padding(.top,5)
						Spacer()
					}
					SimpleListItem()
					SimpleListItem()
					SimpleListItem()
					SimpleListItem()
					
				}.padding([.leading,.trailing])
			}.frame(maxWidth:.infinity)
		}
	}
}

struct SimpleListItem : View {
	var body : some View {
		Button(action:{},label:{
			VStack(alignment:.leading){
				HStack{
					Image("donkomi_logo")
						.resizable()
						.frame(width:60, height:40)
						.padding(.trailing,10)
					Text("African Leadership University")
						.fontWeight(.semibold)
						.foregroundColor(Color.appBlue)
				}.padding()
				Divider()
			}
		})
	}
}

struct ChooseUniversity_Previews: PreviewProvider {
	static var previews: some View {
		ChooseUniversity()
	}
}
