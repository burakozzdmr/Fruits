//
//  ContentView.swift
//  Fruits
//
//  Created by Burak Özdemir on 4.05.2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var fruits: [FruitModel] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 8)
                    }
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

#Preview {
    ContentView()
}
