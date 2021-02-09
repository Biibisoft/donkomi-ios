
import SwiftUI

struct DropdownMenu: View {
	
	var body: some View {
		ZStack{
			Rectangle()
				.stroke(lineWidth:1)
				.frame(height:45)
				.foregroundColor(Color.appBlue)
				.overlay(
					Button(action:{}, label:{
						HStack{
							Text("African Leadership University")
								.font(.subheadline)
							Spacer()
							Image(systemName:"arrowtriangle.down.fill")
						}.padding()
					}).foregroundColor(Color.appBlue)
				)
			
		
		}
	}
}

struct DropdownMenu_Previews: PreviewProvider {
	static var previews: some View {
		DropdownMenu()
	}
}
