//
//  donkomiApp.swift
//  Shared
//
//  Created by frimpongOpokuAgyemang on 02/02/2021.
//

import SwiftUI

@main
struct donkomiApp: App {
	
	var appState = ApplicationState()
    var body: some Scene {
        WindowGroup {
            AppIndex()
							.environmentObject(appState)
        }
    }
}
