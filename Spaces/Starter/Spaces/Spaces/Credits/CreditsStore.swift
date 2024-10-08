//
//  CreditsStore.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct CreditsStore {
    @ObservableState
    struct State: Equatable {
        let credits: [CreditsModel] = [.init(title: "Abandoned Underground Train Station",
                                             image: .station,
                                             author: "Bl4ckGh0st",
                                             authorURL: "https://sketchfab.com/Bl4ckGh0st",
                                             license: "Creative Commons Attribution",
                                             licenseURL: "https://creativecommons.org/licenses/by/4.0/"),
                                       .init(title: "Underground Parking Lot",
                                             image: .parking,
                                             author: "Janis Zeps",
                                             authorURL: "https://skfb.ly/p7vuR",
                                             license: "Creative Commons Attribution",
                                             licenseURL: "https://creativecommons.org/licenses/by/4.0/")]
    }
    
    enum Action: Equatable {
        case openURL(String)
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                case let .openURL(url):
                UIApplication.shared.open(URL(string: url)!)
                return .none
            }
        }
    }
}
