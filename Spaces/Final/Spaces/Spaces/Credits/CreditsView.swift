//
//  CreditsView.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI
import ComposableArchitecture

struct CreditsView: View {
    
    @State var store: StoreOf<CreditsStore>
    
    private let columns = [
        GridItem(.fixed(300)),
        GridItem(.fixed(300))
    ]
    
    var body: some View {
        ZStack {
            LazyVGrid(columns: columns, spacing: 100) {
                ForEach(store.credits, id: \.self) { credit in
                    CreditTile(creditsModel: credit) { url in
                        store.send(.openURL(url))
                    }
                }
            } .padding(.horizontal, 30)
            VStack {
                Spacer()
                Text("© 2024 - 2025 Egeniq BV Part Of MyBit Group. All rights reserved.")
                    .padding()
            }
        }
    }
}
