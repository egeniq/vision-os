//
//  CollectionFeature.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct CollectionFeature {
    
    @ObservableState
    struct State: Equatable {
        // TODO: #8 Add Properties
    }
    
    enum Action: Equatable {
        // TODO: #9 Action cases
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                // TODO: #10 Exhaust switch cases
            }
        }
    }
}
