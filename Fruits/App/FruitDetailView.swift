//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Burak Özdemir on 27.06.2025.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTIES
    
    var fruit: FruitModel
    
    // MARK: - BODY
    
    var body: some View {
         NavigationView {
             ScrollView(.vertical, showsIndicators: true) {
                VStack(alignment: .center, spacing: 20) {
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        // HEADLINE
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRITIONS
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADLINE
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                    
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            } //: SCROLL
             .ignoresSafeArea()
        } //: NAVIGATION
         
    }
}

// MARK: - PREVIEW

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
