//
//  ContentView.swift
//  Fruits
//
//  Created by Fatima Akram on 28.08.23.
//

import SwiftUI

struct ContentView: View {

    var fruits: [Fruit] = fruitsData
    @State private var isSHowingSettings: Bool = false

    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 3)
                    }

                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isSHowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isSHowingSettings) {
                        SettingsView()
                    }
                )
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
