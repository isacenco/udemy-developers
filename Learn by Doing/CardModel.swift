//
//  CardModel.swift
//  Learn by Doing
//
//  Created by Ghenadie Isacenco on 28/10/2025.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
