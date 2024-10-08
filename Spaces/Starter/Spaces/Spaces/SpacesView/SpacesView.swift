//
//  SpacesView.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI
import ComposableArchitecture

struct SpacesView: View {
    
    @State var store: StoreOf<SpacesStore>
    // TODO: Add Environment openImmersiveSpace
    // TODO: Add Environment dismissImmersiveSpace
    
    private let columns = [
        GridItem(.fixed(300)),
        GridItem(.fixed(300))
    ]
    
    var body: some View {
        ZStack {
            LazyVGrid(columns: columns, spacing: 100) {
                ForEach(store.spaces, id: \.self) { space in
                    SpacesTile(spacesModel: space) { windowId in
                        // TODO: Handle Selected Immersive Space Here
                    }
                }
            } .padding(.horizontal, 30)
        }
    }
}
