//
//  HomeFeature.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent
import ComposableArchitecture

@Reducer
struct HomeFeature {
    @ObservableState
    struct State: Equatable {
        // TODO: #1 Add Properties
    }
    
    enum Action: Equatable {
        // TODO: #2 Action cases
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                // TODO: #3 Exhaust switch cases
            }
        }
    }
}
