
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
			}.navigationTitle("All Orders")
    }
}

struct AwaitingOrders_Previews: PreviewProvider {
    static var previews: some View {
        AwaitingOrders()
    }
}
