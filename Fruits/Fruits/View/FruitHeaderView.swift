//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by Fatima Akram on 18.09.23.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 1.6)
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])

    }
}
