//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by Burak Özdemir on 27.06.2025.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - PROPERTIES
    
    @State private var isAnimating: Bool = false
    var fruit: FruitModel
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: fruit.gradientColors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 4)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        } //: ZSTACK
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

// MARK: - PREVIEW

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
}
