//
//  BurgerFarmApp.swift
//  BurgerFarm
//
//  Created by Ram on 25.08.26.
//
import SwiftUI

@main
struct BurgerFarmApp: App {
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding = false
    @AppStorage("selectedLanguage") private var selectedLanguage = "en"

    var body: some Scene {
        WindowGroup {
            Group {
                if hasCompletedOnboarding {
                    ContentView()
                } else {
                    OnboardingView()
                }
            }
            .environment(\.locale, Locale(identifier: selectedLanguage))
        }
    }
}
