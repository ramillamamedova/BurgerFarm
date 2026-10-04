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

    var body: some Scene {
        WindowGroup {
            if hasCompletedOnboarding {
                ContentView()
            } else {
                OnboardingView()
            }
        }
    }
}
