
import SwiftUI

struct OrderHistory: View {
	var body: some View {
		ScrollView{
			VStack{
				ForEach(1...5, id:\.self){
					order in
					OrderProcessCard()
				}
			}
		}
	}
}

struct OrderHistory_Previews: PreviewProvider {
	static var previews: some View {
		OrderHistory()
	}
}
