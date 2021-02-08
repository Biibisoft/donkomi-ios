
import SwiftUI

struct SettingsPage: View {
	var body: some View {
		VStack{
			SimpleTopNavBar(title: "Settings")
			
			
			ScrollView {
				VStack{
					Image("dummy_profile")
						.resizable()
						.scaledToFill()
						.font(.title)
						.frame(width:100, height:100)
						.cornerRadius(10000)
						.overlay(
							Circle()
								.stroke(lineWidth: 2)
								.foregroundColor(.appBlue)
						)
					Text("Mrfimpong@gmail.com")
						.font(.body)
						.fontWeight(.semibold)
						.foregroundColor(.black)
					Text("@DeliveryGuru")
						.font(.body)
						.fontWeight(.semibold)
						.foregroundColor(.appBlue)
						.padding(.top,2)
					Divider()
					Button(action:{}, label:{
						SettingsItem(title:"Profile")
					})
					Button(action:{}, label:{
						SettingsItem(title:"Apply to Earn On Donkomi", icon:"dollarsign.circle.fill")
					})
					Button(action:{}, label:{
						SettingsItem(title:"Sign Out" ,icon:"arrow.down.left.circle.fill")
					})
					
				}
			}.frame(maxWidth:.infinity)
		}
	}
}


struct SettingsItem : View {
	var title = "Some Option"
	var icon = "person.fill"
	var iconColor = Color.appRed
	var titlteColor = Color.black
	var body : some View {
		VStack{
			HStack{
				Image(systemName:icon)
					.font(.title2)
					.foregroundColor(iconColor)
				Text(title)
					.font(.body)
					.fontWeight(.semibold)
					.foregroundColor(titlteColor)
				Spacer()
				Image(systemName:"chevron.forward")
					.foregroundColor(.gray)
				
				
			}.frame(maxWidth:.infinity, alignment: .leading)
			.padding([.leading,.trailing])
			Divider()
		}.padding(.top,5)
	}
}
struct SettingsPage_Previews: PreviewProvider {
	static var previews: some View {
		SettingsPage()
	}
}
