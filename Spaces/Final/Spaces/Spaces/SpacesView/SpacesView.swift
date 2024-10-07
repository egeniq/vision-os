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
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    
    private let columns = [
        GridItem(.fixed(300)),
        GridItem(.fixed(300))
    ]
    
    var body: some View {
        ZStack {
            LazyVGrid(columns: columns, spacing: 100) {
                ForEach(store.spaces, id: \.self) { space in
                    let immersiveIsOpen = store.immersiveSpaceState == .open
                    SpacesTile(spacesModel: space) { windowId in
                        if immersiveIsOpen {
                            store.send(.dismissImmersiveSpaceAction(dismissImmersiveSpace))
                        } else {
                            store.send(.openImmersiveSpace(windowId, openImmersiveSpace))
                        }
                    }.disabled(immersiveIsOpen && space.spaceWindowID != store.activeWindowId)
                }
            } .padding(.horizontal, 30)
        }
    }
}
