//
//  ContentView.swift
//  BurgerFarm
//
//  Created by Ram on 25.08.26.
//

import SwiftUI

// MARK: - Models
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

// MARK: - Data
struct MenuData {
    static let items: [MenuItem] = [
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
        MenuItem(name: "American Hot Dog", price: "5.5", category: .hotDogs, imageName: "AmericanHotDog"),
        MenuItem(name: "Jalapeno Hot Dog", price: "6", category: .hotDogs, imageName: "JalapenoHotDog"),
        MenuItem(name: "Farm Hot Dog", price: "6.5", category: .hotDogs, imageName: "FarmHotDog"),

        // FRIES
        MenuItem(name: "Classic Philly Cheesesteak", price: "14.5", category: .fries, imageName: "ClassicPhilly"),
        MenuItem(name: "Jalapeno Philly Cheesesteak", price: "14.9", category: .fries, imageName: "JalapenoPhilly"),
        MenuItem(name: "BBQ Philly Cheesesteak", price: "14.9", category: .fries, imageName: "BbqPhilly"),
        MenuItem(name: "Classic Philadelphia Fries", price: "14.5", category: .fries, imageName: "ClassicPhillyFries"),
        MenuItem(name: "Classic Chicken Philadelphia Fries", price: "11.5", category: .fries, imageName: "ChickenPhillyFries"),
        MenuItem(name: "BBQ Philadelphia Fries", price: "14.9", category: .fries, imageName: "BbqPhillyFries"),
        MenuItem(name: "Jalapeno Philadelphia Fries", price: "15.5", category: .fries, imageName: "JalapenoPhillyFries"),
        MenuItem(name: "Spicy Philadelphia Fries", price: "14.9", category: .fries, imageName: "SpicyPhillyFries"),
        MenuItem(name: "Sweet Chilli Philadelphia Fries", price: "14.9", category: .fries, imageName: "SweetChilliPhillyFries"),

        // SIDES
        MenuItem(name: "French Fries", price: "4", category: .sides, imageName: "FrenchFries"),
        MenuItem(name: "Country Wedges", price: "4.5", category: .sides, imageName: "CountryWedges"),
        MenuItem(name: "Chicken Nuggets (6 pcs.)", price: "6", category: .sides, imageName: nil),
        MenuItem(name: "Onion Rings (6 pcs.)", price: "5", category: .sides, imageName: nil),

        // SAUCES
        MenuItem(name: "Ketchup", price: "0.8", category: .sauces, imageName: "Ketchup"),
        MenuItem(name: "Mayonnaise", price: "0.8", category: .sauces, imageName: "Mayonnaise"),
        MenuItem(name: "BBQ Sauce", price: "0.8", category: .sauces, imageName: "BbqSauce"),
        MenuItem(name: "Cheese Sauce", price: "0.8", category: .sauces, imageName: "CheeseSauce"),
        MenuItem(name: "Farm Sauce", price: "0.8", category: .sauces, imageName: "FarmSauce"),
        MenuItem(name: "Sriracha Sauce", price: "1", category: .sauces, imageName: "SrirachaSauce"),
        MenuItem(name: "Sweet Chilli Sauce", price: "1", category: .sauces, imageName: "SweetChilliSauce"),

        // DRINKS
        MenuItem(name: "Farm Lemonade", price: "4", category: .drinks, imageName: "FarmLemonade"),
        MenuItem(name: "Farm Tea", price: "5", category: .drinks, imageName: "FarmTea"),
        MenuItem(name: "Coca-Cola (330ml)", price: "2", category: .drinks, imageName: "CocaCola"),
        MenuItem(name: "Coca-Cola Zero (330ml)", price: "2", category: .drinks, imageName: "CocaColaZero"),
        MenuItem(name: "Fanta (330ml)", price: "2", category: .drinks, imageName: "Fanta"),
        MenuItem(name: "Sprite (330ml)", price: "2", category: .drinks, imageName: "Sprite"),
        MenuItem(name: "Fuse Tea", price: "2", category: .drinks, imageName: "FuseTea"),
        MenuItem(name: "Still Water", price: "1", category: .drinks, imageName: "StillWater"),
        MenuItem(name: "Sparkling Water", price: "1", category: .drinks, imageName: "SparklingWater"),
        MenuItem(name: "Ayran", price: "1", category: .drinks, imageName: "Ayran")
    ]
}

// MARK: - Main View
struct ContentView: View {
    @State private var selectedCategory: MenuCategory = .burgers

    var filteredMenu: [MenuItem] {
        MenuData.items.filter { $0.category == selectedCategory }
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Шапка
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

                // Категории
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

                // Список
                List(filteredMenu) { item in
                    MenuItemRow(item: item)
                }
                .listStyle(.plain)
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// MARK: - Row View
struct MenuItemRow: View {
    let item: MenuItem

    var body: some View {
        HStack(spacing: 14) {
            Group {
                if let imageName = item.imageName, !imageName.isEmpty {
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
}

#Preview {
    ContentView()
}
