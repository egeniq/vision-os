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
        
        WindowGroup(id: getID(for: MonthType.january)) {
            MonthView(store: .init(initialState: MonthFeature.State(monthType: .january), reducer: {
                MonthFeature()
            }))
        }.windowResizability(.contentSize)
        
        WindowGroup(id: getID(for: MonthType.february)) {
            MonthView(store: .init(initialState: MonthFeature.State(monthType: .february), reducer: {
                MonthFeature()
            }))
        }.windowResizability(.contentSize)
        
        WindowGroup(id: getID(for: MonthType.march)) {
            MonthView(store: .init(initialState: MonthFeature.State(monthType: .march), reducer: {
                MonthFeature()
            }))
        }.windowResizability(.contentSize)
        
        WindowGroup(id: getID(for: MonthType.april)) {
            MonthView(store: .init(initialState: MonthFeature.State(monthType: .april), reducer: {
                MonthFeature()
            }))
        }.windowResizability(.contentSize)
        
        WindowGroup(id: getID(for: MonthType.may)) {
            MonthView(store: .init(initialState: MonthFeature.State(monthType: .may), reducer: {
                MonthFeature()
            }))
        }.windowResizability(.contentSize)
        
        WindowGroup(id: getID(for: MonthType.june)) {
            MonthView(store: .init(initialState: MonthFeature.State(monthType: .june), reducer: {
                MonthFeature()
            }))
        }.windowResizability(.contentSize)
        
        WindowGroup(id: getID(for: MonthType.july)) {
            MonthView(store: .init(initialState: MonthFeature.State(monthType: .july), reducer: {
                MonthFeature()
            }))
        }.windowResizability(.contentSize)
        
        WindowGroup(id: getID(for: MonthType.august)) {
            MonthView(store: .init(initialState: MonthFeature.State(monthType: .august), reducer: {
                MonthFeature()
            }))
        }.windowResizability(.contentSize)
        
        WindowGroup(id: getID(for: MonthType.september)) {
            MonthView(store: .init(initialState: MonthFeature.State(monthType: .september), reducer: {
                MonthFeature()
            }))
        }.windowStyle(.plain)
            .windowResizability(.contentSize)
        
        WindowGroup(id: getID(for: MonthType.october)) {
            MonthView(store: .init(initialState: MonthFeature.State(monthType: .october), reducer: {
                MonthFeature()
            }))
        }.windowResizability(.contentSize)
        
        WindowGroup(id: getID(for: MonthType.november)) {
            MonthView(store: .init(initialState: MonthFeature.State(monthType: .november), reducer: {
                MonthFeature()
            }))
        }.windowResizability(.contentSize)
        
        WindowGroup(id: getID(for: MonthType.december)) {
            MonthView(store: .init(initialState: MonthFeature.State(monthType: .december), reducer: {
                MonthFeature()
            }))
        }.windowResizability(.contentSize)
        
    }
}

public func getID<T: RawRepresentable>(for window: T) -> T.RawValue {
    return window.rawValue
}
