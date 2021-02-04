
import SwiftUI

struct GuruLandingPage: View {
    var body: some View {
			ScrollView {
				ForEach(1...5, id: \.self){
					item in
					
					RoutineCard()
				}
			}
    }
}

struct GuruLandingPage_Previews: PreviewProvider {
    static var previews: some View {
        GuruLandingPage()
    }
}
