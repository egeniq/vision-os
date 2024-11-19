//
//  CollectionView.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//

import SwiftUI
import ComposableArchitecture

struct CollectionView: View {
    
    @State var store: StoreOf<CollectionFeature>
    
    private let columns = [
        GridItem(.fixed(280)),
        GridItem(.fixed(280)),
        GridItem(.fixed(280))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 50) {
                ForEach(PlanetModel.plants, id: \.id) { planet in
                    // TODO: #11 Add Collection Tile
                }
            } .padding(.horizontal, 30)
        }
    }
}
