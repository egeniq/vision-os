//
//  PlanetsView.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent
import ComposableArchitecture

struct PlanetsView: View {
    
    @State var store: StoreOf<PlanetsFeature>
    
    var body: some View {
        HStack {
            // TODO: #15 Setup view based if the planet info is loaded
        }
        .frame(width: 1000, height: 500)
        .task {
            // TODO: #16 getPlanetInfo
        }
    }
}
