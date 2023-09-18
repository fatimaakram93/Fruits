//
//  OnboardingView.swift
//  Fruits
//
//  Created by Fatima Akram on 29.08.23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    var fruits: [Fruit] = fruitsData

    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 10)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
