//
//  MainView.swift
//  Months
//
//  Created by Yasser Farahi on 14/11/2024.
//

import SwiftUI
import ComposableArchitecture

struct MainView: View {
    
    private enum Constant {
        static let cellWidth: CGFloat = 350
        static let padding: CGFloat = 20
        static let frameSize: CGSize = .init(width: (cellWidth * 2) + (cellWidth + padding),
                                             height: cellWidth + (cellWidth + padding))
    }
    
    @State var store: StoreOf<MainFeature>
    
    // TODO: #1 Add openWindow
    // TODO: #2 Add dismissWindow

    private let columns = [
        GridItem(.fixed(350)),
        GridItem(.fixed(350)),
        GridItem(.fixed(350))
    ]
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 50) {
                    ForEach(MonthModel.mockData, id: \.id) { month in
                        MonthTile(month: month).padding()
                            .onTapGesture {
                                // TODO: #8 Handle Windows
                                
                        }
                    }
                }
            }
        }.frame(width: Constant.frameSize.width,
                height: Constant.frameSize.height)
    }
}
