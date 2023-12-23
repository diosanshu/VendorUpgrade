//
//  OnboardCategory.swift
//  Vendor
//
//  Created by Haadhya on 24/11/23.
//

import SwiftUI
struct OnboardCategory: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var type: CategoryType

}
