//
//  ContentView.swift
//  BurgerFarm
//
//  Created by Ram on 25.08.26.
//
import SwiftUI

struct ContentView: View {
    @State private var selectedCategory = "Burgers"
    @State private var showBranchSheet = false
    
    var filteredMenu: [MenuItem] {
        MenuData.items.filter { $0.category.rawValue == selectedCategory }
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                HStack(alignment: .center) {
                    VStack(alignment: .leading, spacing: 1) {
                        Text("BURGER FARM")
                            .font(.system(size: 25, weight: .black))
                            .tracking(0.5)
                        Text("Smashed since 2024")
                            .font(.system(size: 13, weight: .semibold))
                            .textCase(.uppercase)
                            .opacity(0.8)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        showBranchSheet = true
                    }) {
                        Image(systemName: "mappin.and.ellipse")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(Color(red: 0.85, green: 0.15, blue: 0.1))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.vertical, 18)
                .foregroundColor(Color(red: 0.85, green: 0.15, blue: 0.1))
                .background(Color(red: 1, green: 0.93, blue: 0.8))
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        CategoryButton(title: "Burgers", isSelected: selectedCategory == "Burgers") {
                            selectedCategory = "Burgers"
                        }
                        CategoryButton(title: "Hot Dogs", isSelected: selectedCategory == "Hot Dogs") {
                            selectedCategory = "Hot Dogs"
                        }
                        CategoryButton(title: "Fries", isSelected: selectedCategory == "Fries") {
                            selectedCategory = "Fries"
                        }
                        CategoryButton(title: "Sides", isSelected: selectedCategory == "Sides") {
                            selectedCategory = "Sides"
                        }
                        CategoryButton(title: "Sauces", isSelected: selectedCategory == "Sauces") {
                            selectedCategory = "Sauces"
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 12)
                }
                
                List(filteredMenu) { item in
                    NavigationLink(destination: ItemDetailView(item: item)) {
                        MenuItemRow(item: item)
                    }
                }
                .listStyle(.plain)
            }
            .sheet(isPresented: $showBranchSheet) {
                BranchView()
                    .presentationDetents([.medium])
            }
        }
    }
}

struct CategoryButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.subheadline)
                .fontWeight(.medium)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(isSelected ? Color(red: 0.85, green: 0.15, blue: 0.1) : Color(.systemGray6))
                .foregroundColor(isSelected ? .white : .primary)
                .cornerRadius(20)
        }
    }
}
