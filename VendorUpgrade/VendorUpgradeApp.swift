//
//  VendorUpgradeApp.swift
//  VendorUpgrade
//
//  Created by Haadhya on 23/12/23.
//

import SwiftUI

@main
struct VendorUpgradeApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
