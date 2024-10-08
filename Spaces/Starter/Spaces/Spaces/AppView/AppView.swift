//
//  AppView.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI
import ComposableArchitecture

struct AppView: View {
    
    private enum ViewConstants {
        static let spaces = TabModel(title: "Spaces", image: "rotate.3d.fill")
        static let credits = TabModel(title: "Credits", image: "list.clipboard")
        static let viewSize: CGSize = .init(width: 700, height: 450)
    }
    
    @State var store: StoreOf<AppStore>
    
    var body: some View {
        TabView {
            Tab(ViewConstants.spaces.title,
                systemImage: ViewConstants.spaces.image) {
                SpacesView(store: .init(initialState: SpacesStore.State(), reducer: {
                    SpacesStore()
                }))
            }
            
            Tab(ViewConstants.credits.title,
                systemImage: ViewConstants.credits.image) {
                CreditsView(store: .init(initialState: CreditsStore.State(), reducer: {
                    CreditsStore()
                }))
            }
        }.frame(width: ViewConstants.viewSize.width,
                height: ViewConstants.viewSize.height)
    }
}
