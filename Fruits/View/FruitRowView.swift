//
//  FruitRowView.swift
//  Fruits
//
//  Created by Burak Özdemir on 26.06.2025.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - PROPERTIES
    
    var fruit: FruitModel
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.3),
                    radius: 3,
                    x: 2,
                    y: 2
                )
                .background(
                    LinearGradient(
                        colors: fruit.gradientColors,
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .cornerRadius(12)
            VStack(alignment: .leading, spacing: 8) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            } //: VSTACK
        } //: HSTACK
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
}
