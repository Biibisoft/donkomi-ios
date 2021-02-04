
import SwiftUI

struct AwaitingOrders: View {
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

struct AwaitingOrders_Previews: PreviewProvider {
    static var previews: some View {
        AwaitingOrders()
    }
}
