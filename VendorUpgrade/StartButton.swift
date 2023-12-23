//
//  StartButtonView.swift
//  Vendor
//
//  Created by Haadhya on 24/11/23.
//

import SwiftUI

struct StartButton: View {
    // MARK: - Properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    @AppStorage("selectedType") var selectedType: String?

    var category: OnboardCategory

    // MARK: - Body
    
    var body: some View {
        Button(action: {
            selectedType = category.type.rawValue
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } // Button
        .accentColor(.white)
    }
}

// MARK: - Preview

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(category: categoryData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
