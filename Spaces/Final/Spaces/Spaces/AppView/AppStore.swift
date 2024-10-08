//
//  AppStore.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct AppStore {
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
