//
//  CreditsModel.swift
//  Spaces
//
//  Created by Yasser Farahi on 07/10/2024.
//

import Foundation
import SwiftUI

struct CreditsModel: Equatable, Hashable {
    let title: String
    let image: ImageResource
    let author: String
    let authorURL: String
    let license: String
    let licenseURL: String
}
