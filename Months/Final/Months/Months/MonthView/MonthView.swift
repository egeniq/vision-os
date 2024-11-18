//
//  MonthView.swift
//  Months
//
//  Created by Yasser Farahi on 14/11/2024.
//

import SwiftUI
import ComposableArchitecture

struct MonthView: View {
    @State var store: StoreOf<MonthFeature>

    var body: some View {
        let monthImage = Image(store.name, bundle: .main)

        ZStack {
            monthImage
                .resizable()
                .blur(radius: 45)

            VStack {
                HStack(spacing: 25) {
                    monthImage
                        .resizable()
                        .frame(width: 320, height: 320)
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .glassBackgroundEffect()

                    HStack(alignment: .center) {
                        Text(store.id)
                            .titleStyle(fontSize: 60, weight: .black)
                        Text(store.name)
                            .titleStyle(fontSize: 60, weight: .medium)
                        Spacer()
                    }
                    .shadow(radius: 15)
                    Spacer()
                }.blendMode(.overlay)

                Spacer()

                VStack(alignment: .leading, spacing: 50) {
                    LabelValueRow(label: "Name Origin:", value: store.nameOrigin)
                    LabelValueRow(label: "Fun Fact:", value: store.funFact)
                }.blendMode(.overlay)
                Spacer()
            }
            .padding(30)
        }
        .frame(width: 800, height: 800)
        .onAppear {
            store.send(.getMonthInfo)
        }
    }
}

extension Text {
    func labelStyle() -> some View {
        self.font(.system(size: 25, weight: .black))
            .foregroundStyle(.white)
    }

    func valueStyle() -> some View {
        self.font(.system(size: 35, weight: .medium))
            .foregroundStyle(.white)
    }

    func titleStyle(fontSize: CGFloat, weight: Font.Weight) -> some View {
        self.font(.system(size: fontSize, weight: weight))
            .foregroundStyle(.white)
    }
}

struct LabelValueRow: View {
    var label: String
    var value: String

    var body: some View {
        HStack(alignment: .top) {
            Text(label)
                .labelStyle()
            Text(value)
                .valueStyle()
        }
    }
}
