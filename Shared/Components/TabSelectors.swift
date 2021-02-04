
import SwiftUI

struct TabSelectors: View {
	@State var selected = "Vendors"
	var selectionColor = Color.appRed
	var textColor = Color.black;
	var items = ["Vendors", "Stock", "Routine"]
	var spacing: CGFloat = 20
	var body: some View {
		ScrollView {
			HStack(spacing:spacing){
				ForEach(items, id: \.self){ item in
					Button(action:{ selected = item}, label:{
						UnderlinedText(text: item, active: item == selected)
					})
				}
			}
		}
	}
}


struct UnderlinedText : View {
	var selectionColor = Color.appRed
	var textColor = Color.black;
	var text = "Random"
	var active = false
	var body : some View {
		VStack{
			Text(text)
				.font(.body)
				.foregroundColor(textColor)
				.fontWeight(.semibold)
				.overlay(
					VStack{
						if active {
							Rectangle()
								.frame(height:5)
								.foregroundColor(selectionColor)
								.padding(.top,25)
						}
					}
				)
		}
		
	}
}
struct TabSelectors_Previews: PreviewProvider {
	static var previews: some View {
		TabSelectors()
	}
}
