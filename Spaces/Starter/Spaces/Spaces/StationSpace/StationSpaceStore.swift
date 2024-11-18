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
        // TODO: #18 Add Entity
    }
    
    enum Action: Equatable {
        // TODO: #19 Add Load Scene Action
        // TODO: #20 Add Update Scene Content Action
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                // TODO: #21 Implement Actions
            }
        }
    }
}
