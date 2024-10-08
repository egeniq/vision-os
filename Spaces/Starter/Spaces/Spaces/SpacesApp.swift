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
         // TODO: Add Window Resizability Rules
        
        // TODO: Add ImmersiveSpace ID: TrainStation
        
        // TODO: Add ImmersiveSpace ID: ParkingLot
    }
}
