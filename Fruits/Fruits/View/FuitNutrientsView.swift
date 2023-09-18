//
//  FuitNutrientsView.swift
//  Fruits
//
//  Created by Fatima Akram on 18.09.23.
//

import SwiftUI

struct FuitNutrientsView: View {

    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protien", "Vitamins", "Minerals"]

    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional Value per 100 gram") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Text(nutrients[item])
                            .foregroundColor(fruit.gradientColors[1])
                        Spacer(minLength: 30)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FuitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FuitNutrientsView(fruit: fruitsData[0])
    }
}
