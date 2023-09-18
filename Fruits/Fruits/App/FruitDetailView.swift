//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Fatima Akram on 18.09.23.
//

import SwiftUI

struct FruitDetailView: View {

    var fruit: Fruit

    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack (alignment: .center, spacing: 20){
                    // Header
                    FruitHeaderView(fruit: fruit)

                    VStack (alignment: .leading, spacing: 20) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])

                        Text(fruit.headline)
                            .multilineTextAlignment(.leading)

                        FuitNutrientsView(fruit: fruit)

                        Text("Learn more about \(fruit.title)")
                            .foregroundColor(fruit.gradientColors[1])

                        Text(fruit.description)
                            .multilineTextAlignment(.leading)

                        SourceLinkView()
                            .padding(.top, 20)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
