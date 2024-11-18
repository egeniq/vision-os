//
//  MonthTile.swift
//  Months
//
//  Created by Yasser Farahi on 14/11/2024.
//

import SwiftUI

struct MonthTile: View {
    
    var month: MonthModel
    
    var body: some View {
        ZStack {
            Image(month.name, bundle: .main)
                .resizable()
                .blur(radius: 35)
            VStack {
                Text(month.id.stringValue)
                    .font(.system(size: 120, weight: .bold))
                    .foregroundColor(.white)
                
                Text(month.name)
                    .font(.system(size: 60, weight: .light))
                    .foregroundColor(.white)
            }.blendMode(.overlay)
            
        }.glassBackgroundEffect()
        .frame(width: 300, height: 300, alignment: .center)
    }
}
