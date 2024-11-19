//
//  RoundedRectangleButtonStyle.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//


import SwiftUI
struct RoundedRectangleButtonStyle: PrimitiveButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.trigger()
        } label: {
            configuration.label
                .hoverEffect()
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }.glassBackgroundEffect()
        .buttonStyle(.plain)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension PrimitiveButtonStyle where Self == RoundedRectangleButtonStyle {
    static var roundedRectangleButtonStyle: Self {
        .init()
    }
}
