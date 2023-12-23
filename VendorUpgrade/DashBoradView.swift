//
//  DashBoradView.swift
//  VendorUpgrade
//
//  Created by Haadhya on 23/12/23.
//

import SwiftUI
struct DashBoard: View {
    @State var isShowingSettings: Bool = false
    var body: some View {
        ZStack {
            Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            } // Button
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        }
    }
}
