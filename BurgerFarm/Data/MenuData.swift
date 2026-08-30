//
//  MenuData.swift
//  BurgerFarm
//
//  Created by Ram on 31.08.26.
//

import Foundation

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
        MenuItem(name: "Jalapeno Hot Dog", price: "6", category: .hotDogs, imageName: "SpicyHotDog"),
        MenuItem(name: "Farm Hot Dog", price: "6.5", category: .hotDogs, imageName: "FarmHotDog"),

        // FRIES
        MenuItem(name: "Classic Philly Cheesesteak", price: "14.5", category: .fries, imageName: "ClassicPhiladelphiaFries"),
        MenuItem(name: "Jalapeno Philly Cheesesteak", price: "14.9", category: .fries, imageName: "JalapenoPhiladelphiaFries"),
        MenuItem(name: "BBQ Philly Cheesesteak", price: "14.9", category: .fries, imageName: "BBQPhiladelphiaFries"),
        MenuItem(name: "Classic Philadelphia Fries", price: "14.5", category: .fries, imageName: "ClassicPhiladelphiaFries"),
        MenuItem(name: "Classic Chicken Philadelphia Fries", price: "11.5", category: .fries, imageName: "ClassicChickenPhiladelphiaFries"),
        MenuItem(name: "BBQ Philadelphia Fries", price: "14.9", category: .fries, imageName: "BBQPhiladelphiaFries"),
        MenuItem(name: "Jalapeno Philadelphia Fries", price: "15.5", category: .fries, imageName: "JalapenoPhiladelphiaFries"),
        MenuItem(name: "Spicy Philadelphia Fries", price: "14.9", category: .fries, imageName: "SpicyPhiladelphiaFries"),
        MenuItem(name: "Sweet Chilli Philadelphia Fries", price: "14.9", category: .fries, imageName: "SweetChilliPhiladelphiaFries"),

        // SIDES
        MenuItem(name: "French Fries", price: "4", category: .sides, imageName: "FrenchFries"),
        MenuItem(name: "Country Wedges", price: "4.5", category: .sides, imageName: "PotatoWedges"),
        MenuItem(name: "Chicken Nuggets (6 pcs.)", price: "6", category: .sides, imageName: "ChickenNuggets"),
        MenuItem(name: "Onion Rings (6 pcs.)", price: "5", category: .sides, imageName: "OnionRings"),

        // SAUCES
        MenuItem(name: "Ketchup", price: "0.8", category: .sauces, imageName: "Ketchup"),
        MenuItem(name: "Mayonnaise", price: "0.8", category: .sauces, imageName: "Mayonnaise"),
        MenuItem(name: "BBQ Sauce", price: "0.8", category: .sauces, imageName: "BBQSauce"),
        MenuItem(name: "Cheese Sauce", price: "0.8", category: .sauces, imageName: "CheeseSauce"),
        MenuItem(name: "Farm Sauce", price: "0.8", category: .sauces, imageName: "FarmSauce"),
        MenuItem(name: "Sriracha Sauce", price: "1", category: .sauces, imageName: "SrirachaSauce"),
        MenuItem(name: "Sweet Chilli Sauce", price: "1", category: .sauces, imageName: "SweetChilliSauce"),

        // DRINKS
        MenuItem(name: "Farm Lemonade", price: "4", category: .drinks, imageName: "FarmLemonade"),
        MenuItem(name: "Farm Tea", price: "5", category: .drinks, imageName: "FarmTea"),
        MenuItem(name: "Coca-Cola (330ml)", price: "2", category: .drinks, imageName: "Coca-Cola"),
        MenuItem(name: "Coca-Cola Zero (330ml)", price: "2", category: .drinks, imageName: "Coca-Cola Zero"),
        MenuItem(name: "Fanta (330ml)", price: "2", category: .drinks, imageName: "Fanta"),
        MenuItem(name: "Sprite (330ml)", price: "2", category: .drinks, imageName: "Sprite"),
        MenuItem(name: "Fuse Tea", price: "2", category: .drinks, imageName: "FuseTea"),
        MenuItem(name: "Still Water", price: "1", category: .drinks, imageName: "Bonaqua"),
        MenuItem(name: "Ayran", price: "1", category: .drinks, imageName: nil)
    ]
}
