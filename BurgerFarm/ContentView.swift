//
//  ContentView.swift
//  BurgerFarm
//
//  Created by Ram on 25.08.26.
//

import SwiftUI

enum MenuCategory: String, CaseIterable, Identifiable {
    case burgers = "Burgers"
    case hotDogs = "Hot Dogs"
    case fries = "Fries"
    case sides = "Sides"
    case sauces = "Sauces"
    case drinks = "Drinks"

    var id: String { rawValue }
}

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let category: MenuCategory
    let imageName: String?
}

struct ContentView: View {
    @State private var selectedCategory: MenuCategory = .burgers

    let menu = [
        // BURGERS
        MenuItem(name: "Classic Smashed", price: "10", category: .burgers, imageName: "ClassicSmashed"),
        MenuItem(name: "Smashed Cheese", price: "12.5", category: .burgers, imageName: "SmashedCheese"),
        MenuItem(name: "Oklahoma Onion", price: "12.9", category: .burgers, imageName: "OklahomaOnion"),
        MenuItem(name: "Spicy Smashed", price: "12.9", category: .burgers, imageName: "SpicySmashed"),
        MenuItem(name: "Jalapeno Smashed", price: "12.9", category: .burgers, imageName: "JalapenoSmashed"),
        MenuItem(name: "Smash Deluxe", price: "15", category: .burgers, imageName: "SmashDeluxe"),
        MenuItem(name: "BBQ Smashed", price: "12.9", category: .burgers, imageName: "BbqSmashed"),
        MenuItem(name: "Fried Onion Smashed", price: "13.9", category: .burgers, imageName: "FriedOnionSmashed"),
        MenuItem(name: "Fresh Smashed", price: "12.9", category: .burgers, imageName: "FreshSmashed"),
        MenuItem(name: "Truffle Smashed", price: "13.4", category: .burgers, imageName: "TruffleSmashed"),
        MenuItem(name: "Classic Smashed Chicken", price: "8", category: .burgers, imageName: "ClassicSmashedChicken"),
        MenuItem(name: "Double Smash Chicken", price: "9.9", category: .burgers, imageName: "DoubleSmashChicken"),
        MenuItem(name: "Sezar Smashed", price: "9.9", category: .burgers, imageName: "SezarSmashed"),

        // HOT DOGS
        MenuItem(name: "American Hot Dog", price: "5.5", category: .hotDogs, imageName: nil),
        MenuItem(name: "Jalapeno Hot Dog", price: "6", category: .hotDogs, imageName: nil),
        MenuItem(name: "Farm Hot Dog", price: "6.5", category: .hotDogs, imageName: nil),

        // FRIES
        MenuItem(name: "Classic Philly Cheesesteak", price: "14.5", category: .fries, imageName: nil),
        MenuItem(name: "Jalapeno Philly Cheesesteak", price: "14.9", category: .fries, imageName: nil),
        MenuItem(name: "BBQ Philly Cheesesteak", price: "14.9", category: .fries, imageName: nil),
        MenuItem(name: "Classic Philadelphia Fries", price: "14.5", category: .fries, imageName: nil),
        MenuItem(name: "Classic Chicken Philadelphia Fries", price: "11.5", category: .fries, imageName: nil),
        MenuItem(name: "BBQ Philadelphia Fries", price: "14.9", category: .fries, imageName: nil),
        MenuItem(name: "Jalapeno Philadelphia Fries", price: "15.5", category: .fries, imageName: nil),
        MenuItem(name: "Spicy Philadelphia Fries", price: "14.9", category: .fries, imageName: nil),
        MenuItem(name: "Sweet Chilli Philadelphia Fries", price: "14.9", category: .fries, imageName: nil),

        // SIDES
        MenuItem(name: "Kartof Fri", price: "3.5", category: .sides, imageName: nil),
        MenuItem(name: "Kəndsayağı Kartof", price: "4", category: .sides, imageName: nil),
        MenuItem(name: "Soğan Halqaları", price: "4.5", category: .sides, imageName: nil),
        MenuItem(name: "Nuggets", price: "6", category: .sides, imageName: nil),

        // SAUCES
        MenuItem(name: "BBQ Sauce", price: "1", category: .sauces, imageName: nil),
        MenuItem(name: "Garlic Sauce", price: "1", category: .sauces, imageName: nil),

        // DRINKS
        MenuItem(name: "Farm Lemonade", price: "4–5", category: .drinks, imageName: nil),
        MenuItem(name: "Farm Tea", price: "5", category: .drinks, imageName: nil),
        MenuItem(name: "Cola, Fanta, Sprite, Fuse Tea", price: "1.5–3", category: .drinks, imageName: nil),
        MenuItem(name: "Su / Qazlı", price: "1", category: .drinks, imageName: nil),
        MenuItem(name: "Ayran", price: "1", category: .drinks, imageName: nil)
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
                    HStack(spacing: 14) {
                        Group {
                            if let imageName = item.imageName {
                                Image(imageName)
                                    .resizable()
                                    .scaledToFill()
                            } else {
                                Image(systemName: "fork.knife")
                                    .font(.title)
                                    .foregroundStyle(.red)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    .background(.red.opacity(0.1))
                            }
                        }
                        .frame(width: 92, height: 92)
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 14))

                        VStack(alignment: .leading, spacing: 6) {
                            Text(item.name)
                                .font(.headline)

                            Text(item.category.rawValue)
                                .font(.caption)
                                .foregroundStyle(.secondary)

                            Text("\(item.price) AZN")
                                .font(.headline)
                                .foregroundStyle(.red)
                        }

                        Spacer()
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
