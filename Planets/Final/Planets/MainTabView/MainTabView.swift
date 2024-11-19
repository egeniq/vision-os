//
//  MainTabView.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//

import SwiftUI
import ComposableArchitecture

struct MainTabView: View {
    var body: some View {
        TabView {
            Tab(TabModel.tabs[0].title, systemImage: TabModel.tabs[0].image) {
                HomeView(store: .init(initialState: HomeFeature.State(), reducer: {
                    HomeFeature()
                }))
            }
            
            Tab(TabModel.tabs[1].title, systemImage: TabModel.tabs[1].image) {
                CollectionView(store: .init(initialState: CollectionFeature.State(), reducer: {
                    CollectionFeature()
                }))
            }
            
            Tab(TabModel.tabs[2].title, systemImage: TabModel.tabs[2].image) {
                AboutView()
            }
        }.frame(width: 1000, height: 500)
    }
}
