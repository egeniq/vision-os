//
//  PlanetsApp.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//

import SwiftUI

@main
struct PlanetsApp: App {
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
        .windowStyle(.plain)
        .windowResizability(.contentSize)
        
        // TODO: #17 Add WindowGroups For Each Planet ID
     }
}
