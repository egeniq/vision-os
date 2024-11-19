//
//  AboutView.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//

import SwiftUI

struct AboutView: View {
    
    private enum ViewConstants {
        static let aboutText: String = "This visionOS application is developed by Egeniq, which is part of the MyBit Group. The app is an element of a blog series we wrote on visionOS app development. All content, features, and intellectual property within this application are owned by Egeniq and are protected under applicable copyright laws. Unauthorized reproduction, distribution, or use of any part of this application is strictly prohibited without prior written consent from Egeniq."
        static let copyRightText: String = "© 2024 - 2025 Egeniq BV Part Of MyBit Group. All rights reserved"
    }
    var body: some View {
        VStack {
            Spacer()
            Text(ViewConstants.aboutText)
                .font(.system(size: 23))
            
            Spacer()
            Text(ViewConstants.copyRightText)
                .font(.system(size: 15, weight: .black))
        }.opacity(0.85)
        .padding(80)
        .glassBackgroundEffect()
        
    }
}
