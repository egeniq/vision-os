//
//  HomeView.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent
import ComposableArchitecture

struct HomeView: View {
    
    private enum ViewConstants {
        static let ourHome: String = "Our Home"
        static let theEarth: String = "The Earth"
        static let storyLine: String = """
                            In a sunlit meadow, a small plant emerged, spreading green leaves toward the sky.
                            Each day, it soaked up sunshine and rain, turning them into life.
                            A humble plant that we call home.
                            """
    }
    
    @State var store: StoreOf<HomeFeature>
    
    var body: some View {
        ZStack {
            HStack(spacing: 25) {
                // TODO: #4 Add RealityView + HomeViewTextStack If Scene is loaded
            }
        }.frame(depth: -50)
        .task {
            // TODO: #5 Start Scene
        }
    }
    
    private var HomeViewTextStack: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text(ViewConstants.ourHome)
                    .font(.system(size: 35, weight: .medium, design: .default))
                    .opacity(0.5)
                Text(ViewConstants.theEarth)
                    .font(.system(size: 45, weight: .black, design: .default))
                    .opacity(0.75)
                    .frame(depth: 20)
            }
            
            Text(verbatim: ViewConstants.storyLine)
                .font(.system(size: 25))
                .lineSpacing(10)
        }.padding(35)
    }
}
