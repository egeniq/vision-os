//
//  Helpers.swift
//  Planets
//
//  Created by Yasser Farahi on 19/11/2024.
//

import Foundation

public func getID<T: RawRepresentable>(for window: T) -> T.RawValue {
    return window.rawValue
}
