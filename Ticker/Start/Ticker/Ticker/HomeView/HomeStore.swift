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
        
    }
    
    enum Action: Equatable {
        
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            default: break
            }
        }
    }
}
