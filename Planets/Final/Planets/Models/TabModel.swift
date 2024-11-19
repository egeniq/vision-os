//
//  TabModel.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//

import Foundation

struct TabModel {
    let title: String
    let image: String
}

extension TabModel: Identifiable, Hashable {
    public var id: String { title }
}

extension TabModel {
    static let tabs: [TabModel] = [
        .init(title: "Home", image: "house"),
        .init(title: "Planets", image: "globe.americas"),
        .init(title: "About", image: "info.circle")
    ]
}
