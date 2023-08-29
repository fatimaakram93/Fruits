//
//  FruitCardView.swift
//  Fruits
//
//  Created by Fatima Akram on 29.08.23.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    @State private var isAnimated: Bool = false

    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(isAnimated ? 1.0 : 0.6)

                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Blueberries are widely populra, yummy, nutritious and cutu babies in  the world i ")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)

                StartButtonView()
            }
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimated = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center )
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueBerryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
    }
}
