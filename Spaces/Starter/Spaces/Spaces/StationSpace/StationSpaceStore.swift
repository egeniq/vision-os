//
//  StationSpaceStore.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI
import ComposableArchitecture
import RealityKit
import RealityKitContent
@Reducer
struct StationSpaceStore {
    @ObservableState
    struct State: Equatable {
        // TODO: Add Entity
    }
    
    enum Action: Equatable {
        // TODO: Add Load Scene Action
        // TODO: Add Update Scene Content Action
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                // TODO: Implement Actions
            }
        }
    }
}
