//
//  HomeView.swift
//  Ticker
//
//  Created by Yasser Farahi on 01/10/2024.
//

import SwiftUI
import ComposableArchitecture

struct HomeView: View {
    
    @State var store: StoreOf<HomeStore>
    
    var body: some View {
        HStack(spacing: 50) {
            Button {
                store.send(.decrement)
            } label: {
                Image(systemName: "minus")
                    .font(.system(size: 50, weight: .black))
            }.disabled(store.decrementDisabled)
                .glassBackgroundEffect()
            
            Text("\(store.count)")
                .font(.system(size: 250, weight: .black))
                .multilineTextAlignment(.center)
            
            Button {
                store.send(.increment)
            } label: {
                Image(systemName: "plus")
                    .font(.system(size: 50, weight: .black))
            }.glassBackgroundEffect()
        }
    }
}
