//
//  HomeStore.swift
//  Ticker
//
//  Created by Yasser Farahi on 01/10/2024.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct HomeStore {
    
    @ObservableState
    struct State: Equatable {
        var count: Int = .zero
        var decrementDisabled: Bool = true
    }
    
    enum Action: Equatable {
        case increment
        case decrement
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .increment:
                state.count += 1
                if state.decrementDisabled {
                    state.decrementDisabled = false
                }
                return .none
                
            case .decrement:
                state.count -= 1
                if state.count == .zero {
                    state.decrementDisabled = true
                    return .none
                }
                return .none
            }
        }
    }
}
