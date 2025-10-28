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
    @State private var fadeIn: Bool = false
    @State private var moveDownoard: Bool = false
    @State private var moveUpward: Bool = false

    // MARK: - CARD
    
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
            
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
            .offset(y: moveDownoard ? -218 : -300)
            
            Button {
                print("Learn".uppercased())
                playSound(sound: "sound-chime", type: "mp3")
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
            .offset(y: moveUpward ? 210 : 300)

        }
        .frame(width: 335, height: 545)
        .background(
            LinearGradient(colors: card.gradientColors, startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear() {
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
            }
            
            withAnimation(.linear(duration: 0.8)) {
                self.moveDownoard.toggle()
                self.moveUpward.toggle()
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CardView(card: cardData[0])
}
