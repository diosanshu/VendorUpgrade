//
//  ContentView.swift
//  Vendor
//
//  Created by Haadhya on 14/11/23.
//

// Agli IC

import SwiftUI

struct CategoryCardView: View {
    var category: OnboardCategory
    @State private var isAnimating: Bool = false

    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(category.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .onboardingShadow, radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                Text(category.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .onboardingShadow, radius: 2, x: 2, y: 2)
                Text(category.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                StartButton(category: category)
            } // VStack
        } // ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: category.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

#Preview {
    CategoryCardView(category: categoryData[0])
}
