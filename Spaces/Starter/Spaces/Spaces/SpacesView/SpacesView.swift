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
    // TODO: #1 Add Environment openImmersiveSpace
    // TODO: #2 Add Environment dismissImmersiveSpace
    
    private let columns = [
        GridItem(.fixed(300)),
        GridItem(.fixed(300))
    ]
    
    var body: some View {
        ZStack {
            LazyVGrid(columns: columns, spacing: 100) {
                ForEach(store.spaces, id: \.self) { space in
                    // TODO: #8 Handle Selected Immersive Space Here
                    SpacesTile(spacesModel: space) { windowId in
                        // TODO: #10 Handle Selected Immersive Space Here
                    } // TODO: #9 Add .disabled Modifier
                }
            } .padding(.horizontal, 30)
        }
    }
}
