//
//  CreditTile.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI

struct CreditTile: View {
    var creditsModel: CreditsModel
    var urlTapAction: (String) -> Void
    
    var body: some View {
        ZStack {
            Image(creditsModel.image)
                .opacity(0.55)
                .scaledToFit()
            VStack(spacing: 25) {
                Text(creditsModel.title)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 22, weight: .black))
                VStack {
                    Text("By " + creditsModel.author)
                        .onTapGesture {
                            urlTapAction(creditsModel.authorURL)
                        }
                    Text("is licensed under\n" + creditsModel.license)
                        .onTapGesture {
                            urlTapAction(creditsModel.licenseURL)
                        }
                }
                .multilineTextAlignment(.center)
                .font(.system(size: 15))
            }.padding()
                .frame(width: 280, height: 280)
        }
        .frame(width: 280, height: 280)
        .cornerRadius(10)
        .glassBackgroundEffect()
    }
}
