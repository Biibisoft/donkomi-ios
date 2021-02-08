

import Foundation
import SwiftUI

class ApplicationState : ObservableObject {
	var PREVIOUS_PAGE = ""
	@Published var CURRENT_PAGE : String? = Konstants.SPLASH_SCREEN{
		willSet{
			PREVIOUS_PAGE = CURRENT_PAGE!
		}
	}
	
	
	
	func goToPage(pageKey: String){
		self.CURRENT_PAGE = pageKey
	}
}

