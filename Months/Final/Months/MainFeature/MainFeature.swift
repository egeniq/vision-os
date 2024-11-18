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
        var openWindows: Set<MonthType> = .init()
    }
    
    enum Action: Equatable {
        static func == (lhs: MainFeature.Action, rhs: MainFeature.Action) -> Bool {
            return true
        }
        
        case openWindow(OpenWindowAction, MonthType)
        case dismissWindow(DismissWindowAction, MonthType)
        case changeWindowState(for: MonthType)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case let .openWindow(action, month):
                return .run { send in
                    await send(.changeWindowState(for: month))
                    await action(id: month.rawValue)
                }
                
                case let .dismissWindow(action, month):
                return .run { send in
                    await send(.changeWindowState(for: month))
                    await action(id: month.rawValue)
                }
                
            case let .changeWindowState(month):
                if state.openWindows.contains(month) {
                    state.openWindows.remove(month)
                } else {
                    state.openWindows.insert(month)
                }
                return .none
            }
        }
    }
}
