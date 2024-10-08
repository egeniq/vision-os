//
//  SpacesTile.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import SwiftUI

struct SpacesTile: View {
    var spacesModel: SpacesModel
    var tapAction: (String) -> Void
    
    var body: some View {
        
        Button(action: {
            tapAction(spacesModel.spaceWindowID)
        }, label: {
            ZStack {
                Image(spacesModel.image)
                Text(spacesModel.title)
                    .font(.system(size: 25, weight: .black))
                    .multilineTextAlignment(.center)
                    .frame(width: 280)
            }
        })
        .frame(width: 280, height: 280)
        .buttonStyle(.roundedRectangleButtonStyle)
    }
}
