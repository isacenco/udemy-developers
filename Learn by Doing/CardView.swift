//
//  CardView.swift
//  Learn by Doing
//
//  Created by Ghenadie Isacenco on 25/10/2025.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
        
    var card: Card

    // MARK: - CARD
    
    var body: some View {
        ZStack {
            Image(card.imageName)
            
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)

                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
                    
                    

            }
            .offset(y: -218)
            
            Button {
                print("Learn".uppercased())
            } label: {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .accentColor(.white)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(.white)
                }
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(
                    LinearGradient(colors: card.gradientColors, startPoint: .leading, endPoint: .trailing)
                )
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y: 210)

        }
        .frame(width: 335, height: 545)
        .background(
            LinearGradient(colors: card.gradientColors, startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CardView(card: cardData[0])
}
