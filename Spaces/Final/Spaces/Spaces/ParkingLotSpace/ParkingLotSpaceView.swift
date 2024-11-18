//
//  ParkingLotSpaceView.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI
import ComposableArchitecture
import RealityKit

struct ParkingLotSpaceView: View {
    
    @State var store: StoreOf<ParkingLotSpaceStore>
    
    var body: some View {
        RealityView { content in
            content.add(store.content)
        }.task {
            store.send(.loadScene)
        }
    }
}
