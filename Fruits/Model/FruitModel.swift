//
//  FruitModel.swift
//  Fruits
//
//  Created by Burak Özdemir on 25.06.2025.
//

import SwiftUI

struct FruitModel: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
