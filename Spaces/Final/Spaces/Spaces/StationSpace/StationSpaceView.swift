//
//  StationSpaceView.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI
import ComposableArchitecture
import RealityKit
import RealityKitContent

struct StationSpaceView: View {
    
    @State var store: StoreOf<StationSpaceStore>
    
    var body: some View {
        RealityView { content in
            content.add(store.content)
        }.task {
            store.send(.loadScene)
        }
    }
}
