//
//  SpacesApp.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI
import ComposableArchitecture

@main
struct SpacesApp: App {
    var body: some Scene {
        WindowGroup {
            AppView(store: .init(initialState: AppStore.State(), reducer: {
                AppStore()
            }))
        }.windowStyle(.plain)
         // TODO: #23 Add Window Resizability Rules
        
        // TODO: #24 Add ImmersiveSpace ID: TrainStation
        
        // TODO: #25 Add ImmersiveSpace ID: ParkingLot
    }
}
