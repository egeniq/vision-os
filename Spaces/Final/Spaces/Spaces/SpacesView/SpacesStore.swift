//
//  SpacesStore.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct SpacesStore {
    
    enum ImmersiveSpaceState: Equatable {
        case closed
        case inTransition
        case open
    }
    
    @ObservableState
    struct State: Equatable {
        let spaces: [SpacesModel] = [.init(title: "Abandoned Underground Train Station",
                                           spaceWindowID: "TrainStation",
                                           image: .station),
                                     .init(title: "Underground Parking Lot",
                                           spaceWindowID: "ParkingLot",
                                           image: .parking)]
        var immersiveSpaceState = ImmersiveSpaceState.closed
        var activeWindowId: String = ""
    }
    
    enum Action: Equatable {
        static func == (lhs: SpacesStore.Action, rhs: SpacesStore.Action) -> Bool { true }
        case openImmersiveSpace(String, OpenImmersiveSpaceAction)
        case dismissImmersiveSpaceAction(DismissImmersiveSpaceAction)
        case changeImmersiveSpaceState(ImmersiveSpaceState)
        case setWindowID(String)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case let .setWindowID(windowId):
                state.activeWindowId = windowId
                return .none
            case let .openImmersiveSpace(windowId, open):
                return .run { [immersiveSpaceState = state.immersiveSpaceState] send in
                    switch immersiveSpaceState {
                    case .closed:
                        await send(.changeImmersiveSpaceState(.inTransition))
                        switch await open(id: windowId) {
                        case .opened:
                            await send(.changeImmersiveSpaceState(.open))
                            await send(.setWindowID(windowId))
                        case .userCancelled, .error:
                            fallthrough
                        @unknown default:
                            await send(.changeImmersiveSpaceState(.closed))
                        }
                    default: break
                    }
                }
            case let .dismissImmersiveSpaceAction(dismiss):
                return .run { [immersiveSpaceState = state.immersiveSpaceState] send in
                    switch immersiveSpaceState {
                    case .open:
                        await dismiss()
                        await send(.changeImmersiveSpaceState(.closed))
                        await send(.setWindowID(""))
                    case .closed, .inTransition:
                        break
                    }
                }
            case let .changeImmersiveSpaceState(newState):
                state.immersiveSpaceState = newState
                return .none
            }
        }
    }
}
