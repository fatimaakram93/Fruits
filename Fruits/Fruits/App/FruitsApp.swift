//
//  FruitsApp.swift
//  Fruits
//
//  Created by Fatima Akram on 28.08.23.
//

import SwiftUI

@main
struct FruitsApp: App {

    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
