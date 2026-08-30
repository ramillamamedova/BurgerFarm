//
//  OnboardingView.swift
//  BurgerFarm
//
//  Created by Ram on 31.08.26.
//
import SwiftUI

struct OnboardingView: View {
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding: Bool = false
    @State private var currentStep: Int = 1

    // Registration Form States
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var selectedGender: String = "Female"
    @State private var birthDate: String = ""

    var body: some View {
        ZStack {
            // Yellow Brand Background
            Color(red: 1.0, green: 0.75, blue: 0.0)
                .ignoresSafeArea()

            VStack {
                switch currentStep {
                case 1:
                    welcomeStep
                case 2:
                    registrationStep
                case 3:
                    notificationsStep
                default:
                    welcomeStep
                }
            }
        }
    }

    // MARK: - Step 1: Welcome
    private var welcomeStep: some View {
        VStack(spacing: 0) {
            Spacer()

            // Brand Logo Header
            VStack(spacing: 6) {
                Text("BURGER FARM")
                    .font(.system(size: 38, weight: .black))
                    .italic()
                    .foregroundStyle(.black)

                Text("Smashed since 2024")
                    .font(.headline)
                    .foregroundStyle(.black.opacity(0.8))
            }

            Spacer()

            // Glassmorphism Card
            VStack(spacing: 16) {
                Text("Welcome!")
                    .font(.title.bold())
                    .foregroundStyle(.black)

                Text("Collect FarmCoins, discover new smashed burgers and get exclusive rewards.")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal)

                // Language Selectors
                HStack(spacing: 16) {
                    Text("🇬🇧")
                    Text("🇦🇿")
                    Text("🇷🇺")
                }
                .font(.title)
                .padding(.vertical, 4)

                Button(action: {
                    withAnimation { currentStep = 2 }
                }) {
                    Text("Continue")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                }
            }
            .padding(24)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .padding()
        }
    }

    // MARK: - Step 2: Registration
    private var registrationStep: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Back Button
                Button(action: {
                    withAnimation { currentStep = 1 }
                }) {
                    HStack(spacing: 4) {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    }
                    .font(.headline)
                    .foregroundStyle(.black)
                }
                .padding(.leading, 20)
                .padding(.top, 10)

                VStack(spacing: 4) {
                    Text("BURGER FARM")
                        .font(.system(size: 26, weight: .black))
                        .italic()
                    
                    Text("Registration")
                        .font(.subheadline)
                        .foregroundStyle(.black.opacity(0.7))
                }
                .frame(maxWidth: .infinity, alignment: .center)

                VStack(alignment: .leading, spacing: 14) {
                    HStack(spacing: 12) {
                        TextField("First Name", text: $firstName)
                            .textFieldStyle(.roundedBorder)
                        TextField("Last Name", text: $lastName)
                            .textFieldStyle(.roundedBorder)
                    }

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Email Address")
                            .font(.caption)
                            .foregroundStyle(.gray)
                        TextField("email@example.com", text: $email)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.emailAddress)
                    }

                    VStack(alignment: .leading, spacing: 6) {
                        Text("Gender")
                            .font(.caption)
                            .foregroundStyle(.gray)

                        HStack {
                            RadioButton(title: "Male", isSelected: selectedGender == "Male") {
                                selectedGender = "Male"
                            }
                            Spacer()
                            RadioButton(title: "Female", isSelected: selectedGender == "Female") {
                                selectedGender = "Female"
                            }
                        }
                    }

                    VStack(alignment: .leading, spacing: 4) {
                        Text("Date of Birth")
                            .font(.caption)
                            .foregroundStyle(.gray)
                        TextField("DD.MM.YYYY", text: $birthDate)
                            .textFieldStyle(.roundedBorder)
                    }

                    Button(action: {
                        withAnimation { currentStep = 3 }
                    }) {
                        Text("Register")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                    }
                    .padding(.top, 10)
                }
                .padding(20)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.horizontal)
            }
        }
    }

    // MARK: - Step 3: Notifications
    private var notificationsStep: some View {
        VStack {
            // Back Button
            HStack {
                Button(action: {
                    withAnimation { currentStep = 2 }
                }) {
                    HStack(spacing: 4) {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    }
                    .font(.headline)
                    .foregroundStyle(.black)
                }
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.top, 10)

            Spacer()

            Image(systemName: "bell.badge.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .foregroundStyle(.black)

            Spacer()

            VStack(spacing: 16) {
                Text("Get updates first!")
                    .font(.title2.bold())

                Text("Enable push notifications to receive special offers and promo codes.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)

                Button(action: {
                    hasCompletedOnboarding = true
                }) {
                    Text("Enable Notifications")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                }

                Button("Maybe Later") {
                    hasCompletedOnboarding = true
                }
                .font(.subheadline)
                .foregroundStyle(.black)
            }
            .padding(24)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .padding()
        }
    }
}

// MARK: - Helper Radio Button
struct RadioButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 6) {
                Image(systemName: isSelected ? "largecircle.fill.circle" : "circle")
                    .foregroundStyle(isSelected ? .black : .gray)
                Text(title)
                    .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    OnboardingView()
}
