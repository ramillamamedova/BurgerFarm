//
//  OnboardingView.swift
//  BurgerFarm
//
//  Created by Ram on 31.08.26.

import SwiftUI
import UserNotifications

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
    @State private var showNameError = false
    @State private var showEmailError = false

    // Saved profile (stored on the device)
    @AppStorage("userFirstName") private var savedFirstName: String = ""
    @AppStorage("userLastName") private var savedLastName: String = ""
    @AppStorage("userEmail") private var savedEmail: String = ""
    @AppStorage("userGender") private var savedGender: String = ""
    @AppStorage("userBirthDate") private var savedBirthDate: String = ""

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

                    if showNameError {
                        Text("Please enter your first name")
                            .font(.caption)
                            .foregroundStyle(.red)
                    }

                    VStack(alignment: .leading, spacing: 4) {
                        Text(LocalizedStringKey("Email Address"))
                            .font(.caption)
                            .foregroundStyle(.gray)
                        TextField("email@example.com", text: $email)
                            .textFieldStyle(.roundedBorder)
                            .keyboardType(.emailAddress)
                            .textInputAutocapitalization(.never)
                            .autocorrectionDisabled()

                        if showEmailError {
                            Text("Please enter a valid email")
                                .font(.caption)
                                .foregroundStyle(.red)
                        }
                    }

                    VStack(alignment: .leading, spacing: 6) {
                        Text(LocalizedStringKey("Gender"))
                            .font(.caption)
                            .foregroundStyle(.gray)

                        HStack {
                            RadioButton(title: LocalizedStringKey("Male"), isSelected: selectedGender == "Male") {
                                selectedGender = "Male"
                            }
                            Spacer()
                            RadioButton(title: LocalizedStringKey("Female"), isSelected: selectedGender == "Female") {
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

                    Button(action: register) {
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

                Button(action: requestNotifications) {
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

// MARK: - Actions
extension OnboardingView {
    private func register() {
        let name = firstName.trimmingCharacters(in: .whitespaces)
        let mail = email.trimmingCharacters(in: .whitespaces)

        showNameError = name.isEmpty
        showEmailError = !isValidEmail(mail)
        guard !showNameError, !showEmailError else { return }

        savedFirstName = name
        savedLastName = lastName.trimmingCharacters(in: .whitespaces)
        savedEmail = mail
        savedGender = selectedGender
        savedBirthDate = birthDate

        withAnimation { currentStep = 3 }
    }

    private func isValidEmail(_ value: String) -> Bool {
        let parts = value.split(separator: "@", omittingEmptySubsequences: false)
        return parts.count == 2
            && !parts[0].isEmpty
            && parts[1].contains(".")
            && !value.contains(" ")
    }

    private func requestNotifications() {
        Task {
            _ = try? await UNUserNotificationCenter.current()
                .requestAuthorization(options: [.alert, .sound, .badge])
            hasCompletedOnboarding = true
        }
    }
}

struct RadioButton: View {
    let title: LocalizedStringKey
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
