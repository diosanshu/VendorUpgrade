//
//  OnboardingView.swift
//  Vendor
//
//  Created by Haadhya on 24/11/23.
//

import SwiftUI
struct OnboardingView: View {
    // MARK: - Properties
    
    var category: [OnboardCategory] = categoryData
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(category[0...4]) { item in
                CategoryCardView(category: item)
                    .onAppear(){
                        print(item.title)
                    }
                
            } // For loop
        } // Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(category: categoryData)
    }
}
