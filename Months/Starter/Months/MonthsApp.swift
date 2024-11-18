//
//  MonthsApp.swift
//  Months
//
//  Created by Yasser Farahi on 14/11/2024.
//

import SwiftUI
import ComposableArchitecture

@main
struct MonthsApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(store: .init(initialState: MainFeature.State(), reducer: {
                MainFeature()
            }))
        }.windowResizability(.contentSize)
        
        // TODO: #9 Add a separate WindowGroup for each month
        
    }
}

// MARK: Helper method
public func getID<T: RawRepresentable>(for window: T) -> T.RawValue {
    return window.rawValue
}
