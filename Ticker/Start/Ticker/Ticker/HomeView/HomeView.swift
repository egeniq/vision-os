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
        ZStack {
            Text(verbatim: "Welcome to my app")
        }
    }
}
