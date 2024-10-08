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
        }.windowResizability(.contentSize)
            .windowStyle(.plain)
        
        ImmersiveSpace(id: "TrainStation") {
            StationSpaceView(store: .init(initialState: StationSpaceStore.State(), reducer: {
                StationSpaceStore()
            }))
        }.immersionStyle(selection: .constant(.progressive), in: .progressive)
            .upperLimbVisibility(.visible)
        
        ImmersiveSpace(id: "ParkingLot") {
            ParkingLotSpaceView(store: .init(initialState: ParkingLotSpaceStore.State(), reducer: {
                ParkingLotSpaceStore()
            }))
        }.immersionStyle(selection: .constant(.progressive), in: .progressive)
            .upperLimbVisibility(.visible)
    }
}
