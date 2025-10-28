//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Ghenadie Isacenco on 25/10/2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var cards: [Card] = cardData
    
    // MARK: - CONTENT
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }
            .padding(20)
        }
        
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
