//
//  PlanetsFeature.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct PlanetsFeature {
    
    @ObservableState
    struct State: Equatable {
        // TODO: #12 Add Properties
    }
    
    enum Action: Equatable {
        // TODO: #13 Action cases
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                // TODO: #14 Exhaust switch cases
            }
        }
    }
}
