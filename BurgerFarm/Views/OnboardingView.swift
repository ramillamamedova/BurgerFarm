//
//  OnboardingView.swift
//  BurgerFarm
//
//  Created by Ram on 31.08.26.
//
import SwiftUI

struct OnboardingView: View {
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding: Bool = false
    @AppStorage("selectedLanguage") private var selectedLanguage: String = "en"
    @State private var currentStep: Int = 1

    // Registration Form States
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var selectedGender: String = "Female"
    @State private var birthDate: String = ""

    var body: some View {
        ZStack {
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
        .environment(\.locale, Locale(identifier: selectedLanguage))
    }

    // MARK: - Step 1: Welcome
    private var welcomeStep: some View {
        VStack(spacing: 0) {
            Spacer()

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

            VStack(spacing: 20) {
                Text(LocalizedStringKey("Welcome!"))
                    .font(.title.bold())
                    .foregroundStyle(.black)

                // Language Selectors
                HStack(spacing: 12) {
                    languageButton(flag: "🇬🇧", code: "en")
                    languageButton(flag: "🇦🇿", code: "az")
                    languageButton(flag: "🇷🇺", code: "ru")
                }
                .padding(.vertical, 4)

                Button(action: {
                    withAnimation { currentStep = 2 }
                }) {
                    Text(LocalizedStringKey("Continue"))
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

    private func languageButton(flag: String, code: String) -> some View {
        Button(action: {
            selectedLanguage = code
        }) {
            Text(flag)
                .font(.title)
                .padding(8)
                .background(
                    selectedLanguage == code
                        ? Color.black.opacity(0.15)
                        : Color.clear
                )
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }

    // MARK: - Step 2: Registration
    private var registrationStep: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Button(action: {
                    withAnimation { currentStep = 1 }
                }) {
                    HStack(spacing: 4) {
                        Image(systemName: "chevron.left")
                        Text(LocalizedStringKey("Back"))
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
                    
                    Text(LocalizedStringKey("Registration"))
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
                        Text(LocalizedStringKey("Email Address"))
                            .font(.caption)
                            .foregroundStyle(.gray)
                        TextField("email@example.com", text: $email)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.emailAddress)
                    }

                    VStack(alignment: .leading, spacing: 6) {
                        Text(LocalizedStringKey("Gender"))
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
                        Text(LocalizedStringKey("Date of Birth"))
                            .font(.caption)
                            .foregroundStyle(.gray)
                        TextField("DD.MM.YYYY", text: $birthDate)
                            .textFieldStyle(.roundedBorder)
                    }

                    Button(action: {
                        withAnimation { currentStep = 3 }
                    }) {
                        Text(LocalizedStringKey("Register"))
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
            HStack {
                Button(action: {
                    withAnimation { currentStep = 2 }
                }) {
                    HStack(spacing: 4) {
                        Image(systemName: "chevron.left")
                        Text(LocalizedStringKey("Back"))
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
                Text(LocalizedStringKey("Get updates first!"))
                    .font(.title2.bold())

                Button(action: {
                    hasCompletedOnboarding = true
                }) {
                    Text(LocalizedStringKey("Enable Notifications"))
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                }

                Button(action: {
                    hasCompletedOnboarding = true
                }) {
                    Text(LocalizedStringKey("Maybe Later"))
                        .font(.subheadline)
                        .foregroundStyle(.black)
                }
            }
            .padding(24)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .padding()
        }
    }
}

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
