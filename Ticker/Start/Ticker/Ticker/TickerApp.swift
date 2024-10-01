//
//  TickerApp.swift
//  Ticker
//
//  Created by Yasser Farahi on 01/10/2024.
//

import SwiftUI
import ComposableArchitecture

@main
struct TickerApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(store: .init(initialState: HomeStore.State(), reducer: {
                HomeStore()
            }))
        }
    }
}
