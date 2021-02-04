

import SwiftUI

struct ClientLandingPage: View {
    var body: some View {
			VStack{
				ScrollView{
					ForEach(1...6, id: \.self){ campaign in
						CampaignCard()
					}
				}
			}
    }
}

struct ClientLandingPage_Previews: PreviewProvider {
    static var previews: some View {
        ClientLandingPage()
    }
}
