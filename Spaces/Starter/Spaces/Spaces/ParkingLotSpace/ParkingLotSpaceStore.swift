//
//  ParkingLotSpaceStore.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import Foundation
import SwiftUI
import ComposableArchitecture
import RealityKit
import RealityKitContent

@Reducer
struct ParkingLotSpaceStore {
    @ObservableState
    struct State: Equatable {
        // TODO: #12 Add Entity
    }
    
    enum Action: Equatable {
        // TODO: #13 Add Load Scene Action
        // TODO: #14 Add Update Scene Content Action
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            }
        }
    }
}
