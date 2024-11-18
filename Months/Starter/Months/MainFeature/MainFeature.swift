//
//  MainFeature.swift
//  Months
//
//  Created by Yasser Farahi on 14/11/2024.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct MainFeature {
    
    @ObservableState
    struct State: Equatable {
        // TODO: #3 Add a property which tracks the current active windows
    }
    
    enum Action: Equatable {
        static func == (lhs: MainFeature.Action, rhs: MainFeature.Action) -> Bool { return true }
        
        // TODO: #4 openWindow case
        // TODO: #5 dismissWindow case
        // TODO: #6 changeWindowState case
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                // TODO: #7 Exhaust the switch statement by adding the cases
            default:
                return .none
            }
        }
    }
}
