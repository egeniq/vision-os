//
//  SpacesStore.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct SpacesStore {
    
    // TODO: Define Immersive Space State

    @ObservableState
    struct State: Equatable {
        let spaces: [SpacesModel] = [.init(title: "Abandoned Underground Train Station",
                                           spaceWindowID: "TrainStation",
                                           image: .station),
                                     .init(title: "Underground Parking Lot",
                                           spaceWindowID: "ParkingLot",
                                           image: .parking)]
        
        // TODO: Add Properties Needed To Track Immersive Space State
    }
    
    enum Action: Equatable {
        static func == (lhs: SpacesStore.Action, rhs: SpacesStore.Action) -> Bool { true }
        // TODO: Add Actions Needed To Track Immersive Space State
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                // TODO: Handle Action Cases
            }
        }
    }
}
