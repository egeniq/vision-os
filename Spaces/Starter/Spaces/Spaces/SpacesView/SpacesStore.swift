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
    
    // TODO: #3 Define Immersive Space State
    
    @ObservableState
    struct State: Equatable {
        let spaces: [SpacesModel] = [.init(title: "Abandoned Underground Train Station",
                                           spaceWindowID: "TrainStation",
                                           image: .station),
                                     .init(title: "Underground Parking Lot",
                                           spaceWindowID: "ParkingLot",
                                           image: .parking)]
        
        // TODO: #4 Add Properties Needed To Track Immersive Space State
        
        // TODO: #5 Add Properties Needed To Track Current Active Immersive Space
    }
    
    enum Action: Equatable {
        static func == (lhs: SpacesStore.Action, rhs: SpacesStore.Action) -> Bool { true }
        // TODO: #6 Add Actions Needed To Track Immersive Space State
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                // TODO: #7 Handle Action Cases
            }
        }
    }
}
