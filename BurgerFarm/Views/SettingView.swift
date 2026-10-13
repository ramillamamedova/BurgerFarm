//
//  SettingView.swift
//  BurgerFarm
//
//  Created by Ram on 13.10.26.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("hasCompletedOnboarding") private var hasCompletedOnboarding: Bool = false
    @AppStorage("userFirstName") private var savedFirstName: String = ""
    @AppStorage("userLastName") private var savedLastName: String = ""
    @AppStorage("userEmail") private var savedEmail: String = ""
    @AppStorage("userGender") private var savedGender: String = ""
    @AppStorage("userBirthDate") private var savedBirthDate: String = ""

    @State private var showDeleteAlert = false

    var body: some View {
        NavigationStack {
            List {
                // Блок с информацией о профиле
                Section(header: Text("Profile Information")) {
                    HStack {
                        Text("Name")
                        Spacer()
                        Text("\(savedFirstName) \(savedLastName)")
                            .foregroundColor(.gray)
                    }
                    HStack {
                        Text("Email")
                        Spacer()
                        Text(savedEmail.isEmpty ? "Not provided" : savedEmail)
                            .foregroundColor(.gray)
                    }
                    HStack {
                        Text("Date of Birth")
                        Spacer()
                        Text(savedBirthDate.isEmpty ? "Not provided" : savedBirthDate)
                            .foregroundColor(.gray)
                    }
                }

                // Блок опасной зоны (Удаление аккаунта / данных)
                Section {
                    Button(role: .destructive) {
                        showDeleteAlert = true
                    } label: {
                        HStack {
                            Spacer()
                            Text("Delete Account")
                                .fontWeight(.semibold)
                            Spacer()
                        }
                    }
                }
            }
            .navigationTitle("Settings")
            .alert("Delete Account", isPresented: $showDeleteAlert) {
                Button("Cancel", role: .cancel) {}
                Button("Delete", role: .destructive) {
                    deleteAccount()
                }
            } message: {
                Text("Are you sure you want to delete your account and clear all local data? This action cannot be undone.")
            }
        }
    }

    private func deleteAccount() {
        savedFirstName = ""
        savedLastName = ""
        savedEmail = ""
        savedGender = ""
        savedBirthDate = ""
        hasCompletedOnboarding = false // Сбрасывает онбординг и возвращает на экран приветствия
    }
}

#Preview {
    SettingsView()
}
