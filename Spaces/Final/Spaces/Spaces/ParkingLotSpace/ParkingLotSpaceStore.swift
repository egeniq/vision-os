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
        var content: Entity = .init()
    }
    
    enum Action: Equatable {
        case loadScene
        case updateSceneContent(Entity)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .loadScene:
                return .run { send in
                    if let parkingLot = try? await Entity(named: "ParkingLot", in: realityKitContentBundle) {
                        await send(.updateSceneContent(parkingLot))
                    }
                }
                case let .updateSceneContent(content):
                state.content.addChild(content)
                return .none
            }
        }
    }
}
