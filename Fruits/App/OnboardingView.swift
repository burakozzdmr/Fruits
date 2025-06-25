//
//  OnboardingView.swift
//  Fruits
//
//  Created by Burak Özdemir on 25.06.2025.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var fruits: [FruitModel] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(0..<fruits.count, id: \.self) { item in
                FruitCardView(fruitData: fruits[item])
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
