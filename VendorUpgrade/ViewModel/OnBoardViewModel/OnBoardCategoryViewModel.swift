//
//  CategoryData.swift
//  Vendor
//
//  Created by Haadhya on 24/11/23.
//

import Foundation
enum CategoryType: String {
    case Photography
    case VideoGraphy
    case Makeup
    case Entrainment
}

let categoryData: [OnboardCategory] = [
    OnboardCategory(
        title: "Photography",
        headline: "Everything has a place, and everything in its place.",
        image: "photography",
        gradientColors: [.lemonLight, .lemonDark], 
        type: .Photography
      ),
    OnboardCategory(
        title: "VideoGraphy",
        headline: "Everything has a place, and everything in its place.",
        image: "vidoegraphy",
        gradientColors: [.blueberryLight, .blueberryDark],
        type: .VideoGraphy


      ),
    OnboardCategory(
        title: "Makeup",
        headline: "Everything has a place, and everything in its place.",
        image: "makeup",
        gradientColors: [.pomegranateLight, .pomegranateDark],
        type: .Makeup


      ),
    OnboardCategory(
        title: "Entrainment",
        headline: "Everything has a place, and everything in its place.",
        image: "entrainment",
        gradientColors: [.wineDark, .wineDark],
        type: .Entrainment
      ),  
    OnboardCategory(
        title: "Decoration",
        headline: "Everything has a place, and everything in its place.",
        image: "decoration",
        gradientColors: [.colorWinelight, .colorWinelight],
        type: .Entrainment
      )
]
