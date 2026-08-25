//
//  ContentView.swift
//  BurgerFarm
//
//  Created by Ram on 25.08.26.
//

import SwiftUI


enum MenuCategory: String, CaseIterable, Identifiable {
    case burgers = "Burgers"
    case philly = "Philly"
    case fries = "Fries"
    case hotDogs = "Hot Dogs"
    case sides = "Sides"
    case drinks = "Drinks"

    var id: String { rawValue }
}

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let category: MenuCategory
}

struct ContentView: View {
    @State private var selectedCategory: MenuCategory = .burgers

    let menu = [
        MenuItem(name: "Classic Smashed", price: "10", category: .burgers),
        MenuItem(name: "Smashed Cheese", price: "12.5", category: .burgers),
        MenuItem(name: "Oklahoma Onion", price: "12.9", category: .burgers),
        MenuItem(name: "Spicy Smashed", price: "12.9", category: .burgers),
        MenuItem(name: "Jalapeno Smashed", price: "12.9", category: .burgers),
        MenuItem(name: "Smashed Steak", price: "15", category: .burgers),
        MenuItem(name: "BBQ Smashed", price: "12.9", category: .burgers),
        MenuItem(name: "Fried Onion Smashed", price: "13.9", category: .burgers),
        MenuItem(name: "Fresh Smashed", price: "12.9", category: .burgers),
        MenuItem(name: "Truffle Smashed", price: "13.4", category: .burgers),
        MenuItem(name: "Classic Smashed Chicken", price: "8", category: .burgers),
        MenuItem(name: "Double Smashed Chicken", price: "9.9", category: .burgers),
        MenuItem(name: "Sezar Smashed", price: "9.9", category: .burgers),

        MenuItem(name: "Classic Philly Cheesesteak", price: "14.5", category: .philly),
        MenuItem(name: "Jalapeno Philly Cheesesteak", price: "14.9", category: .philly),
        MenuItem(name: "BBQ Philly Cheesesteak", price: "14.9", category: .philly),

        MenuItem(name: "Classic Philadelphia Fries", price: "14.5", category: .fries),
        MenuItem(name: "Classic Chicken Philadelphia Fries", price: "11.5", category: .fries),
        MenuItem(name: "BBQ Philadelphia Fries", price: "14.9", category: .fries),
        MenuItem(name: "Jalapeno Philadelphia Fries", price: "15.5", category: .fries),
        MenuItem(name: "Spicy Philadelphia Fries", price: "14.9", category: .fries),
        MenuItem(name: "Sweet Chilli Philadelphia Fries", price: "14.9", category: .fries),

        MenuItem(name: "American Hot Dog", price: "5.5", category: .hotDogs),
        MenuItem(name: "Jalapeno Hot Dog", price: "6", category: .hotDogs),
        MenuItem(name: "Farm Hot Dog", price: "6.5", category: .hotDogs),

        MenuItem(name: "Kartof Fri", price: "3.5", category: .sides),
        MenuItem(name: "Kəndsayağı Kartof", price: "4", category: .sides),
        MenuItem(name: "Soğan Halqaları", price: "4.5", category: .sides),
        MenuItem(name: "Nuggets", price: "6", category: .sides),

        MenuItem(name: "Farm Lemonade", price: "4–5", category: .drinks),
        MenuItem(name: "Farm Tea", price: "5", category: .drinks),
        MenuItem(name: "Cola, Fanta, Sprite, Fuse Tea", price: "1.5–3", category: .drinks),
        MenuItem(name: "Su / Qazlı", price: "1", category: .drinks),
        MenuItem(name: "Ayran", price: "1", category: .drinks)
    ]

    var filteredMenu: [MenuItem] {
        menu.filter { $0.category == selectedCategory }
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 6) {
                    Text("BURGER FARM")
                        .font(.largeTitle.bold())

                    Text("Fresh smashed burgers")
                        .font(.subheadline)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(24)
                .foregroundStyle(.red)
                .background(Color(red: 1, green: 0.91, blue: 0.71))

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(MenuCategory.allCases) { category in
                            Button(category.rawValue) {
                                selectedCategory = category
                            }
                            .font(.subheadline.bold())
                            .padding(.horizontal, 14)
                            .padding(.vertical, 9)
                            .background(
                                selectedCategory == category
                                ? Color.red
                                : Color.red.opacity(0.12)
                            )
                            .foregroundStyle(
                                selectedCategory == category
                                ? .white
                                : .red
                            )
                            .clipShape(Capsule())
                        }
                    }
                    .padding()
                }

                List(filteredMenu) { item in
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text(item.name)
                                .font(.headline)

                            Text(selectedCategory.rawValue)
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }

                        Spacer()

                        Text("\(item.price) AZN")
                            .font(.headline)
                            .foregroundStyle(.red)
                    }
                    .padding(.vertical, 6)
                }
                .listStyle(.plain)
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
