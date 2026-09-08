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
        
        MenuItem(name: "Classic Smashed", price: "10", category: .burgers, imageName: "ClassicSmashed", description: "1x smash dana əti (90g), pendir, duzlu xiyar, xüsusi sous, karamelizə soğan, karamelizə çörək"),
      
        MenuItem(name: "Smashed Cheese", price: "12.5", category: .burgers, imageName: "SmashedCheese", description: "2x smash dana əti (125g), ekstra pendir, duzlu xiyar, karamelizə soğan, xüsusi sous, karamelizə çörək"),
      
        MenuItem(name: "Oklahoma Onion", price: "12.9", category: .burgers, imageName: "OklahomaOnion", description: "2x smash dana əti (125g), ekstra pendir, duzlu xiyar, Oklahoma sayağı soğan, xüsusi sous, karamelizə çörək"),
     
        MenuItem(name: "Spicy Smashed", price: "12.9", category: .burgers, imageName: "SpicySmashed", description: "2x smash dana əti (125g), pendir, duzlu xiyar, karamelizə soğan, Sriracha sous, xüsusi sous, karamelizə çörək"),
       
        MenuItem(name: "Jalapeno Smashed", price: "12.9", category: .burgers, imageName: "JalapenoSmashed", description: "2x smash dana əti (125g), pendir, duzlu xiyar, xalapenyo, xüsusi sous, karamelizə soğan, karamelizə çörək"),
       
        MenuItem(name: "Smash Deluxe", price: "15", category: .burgers, imageName: "SmashDeluxe", description: "2x smash dana əti (125g), ekstra pendir, duzlu xiyar, krevet, karamelizə soğan, aysberq kahı, karamelizə çörək"),
       
        MenuItem(name: "BBQ Smashed", price: "12.9", category: .burgers, imageName: "BbqSmashed", description: "2x smash dana əti (125g), pendir, duzlu xiyar, barbekü sousu, xüsusi sous, karamelizə soğan, karamelizə çörək"),
       
        MenuItem(name: "Fried Onion Smashed", price: "13.9", category: .burgers, imageName: "FriedOnionSmashed", description: "2x smash dana əti (125g), pendir, duzlu xiyar, soğan halqaları, karamelizə soğan, xüsusi sous, karamelizə çörək"),
       
        MenuItem(name: "Fresh Smashed", price: "12.9", category: .burgers, imageName: "FreshSmashed", description: "2x smash dana əti (125g), pendir, duzlu xiyar, aysberq kahı, pomidor, karamelizə soğan, xüsusi sous, karamelizə çörək"),
       
        
        MenuItem(name: "Truffle Smashed", price: "13.4", category: .burgers, imageName: "TruffleSmashed", description: "2x smash dana əti (125g), pendir, duzlu xiyar, truffle sousu, xüsusi sous, karamelizə soğan, karamelizə çörək"),
       
        MenuItem(name: "Classic Smashed Chicken", price: "8", category: .burgers, imageName: "ClassicSmashedChicken", description: "1x smash toyuq əti (90g), pendir, duzlu xiyar, xüsusi sous, karamelizə soğan, karamelizə çörək"),
       
        MenuItem(name: "Double Smash Chicken", price: "9.9", category: .burgers, imageName: "DoubleSmashChicken", description: "2x smash toyuq əti (125g), ekstra pendir, duzlu xiyar, karamelizə soğan, xüsusi sous, karamelizə çörək"),
       
        MenuItem(name: "Sezar Smashed", price: "9.9", category: .burgers, imageName: "SezarSmashed", description: "1x smash toyuq əti (90g), pendir, duzlu xiyar, kahı, pomidor, karamelizə soğan, sezar sousu, karamelizə çörək"),

        // HOT DOGS
        MenuItem(name: "American Hot Dog", price: "5.5", category: .hotDogs, imageName: "AmericanHotDog", description: "Mal ətindən sosis, çörək, ketçup, mayonez, xardal, karamelizə soğan"),
     
        MenuItem(name: "Jalapeno Hot Dog", price: "6", category: .hotDogs, imageName: "SpicyHotDog", description: "Mal ətindən sosis, çörək, ketçup, mayonez, xardal, xalapenyo, karamelizə soğan"),
        
        MenuItem(name: "Farm Hot Dog", price: "6.5", category: .hotDogs, imageName: "FarmHotDog", description: "Mal ətindən sosis, çörək, xüsusi sous, duzlu xiyar, pendir, karamelizə soğan"),

      
        // FRIES & PHILLY CHEESESTEAK
       
        MenuItem(name: "Classic Philly Cheesesteak", price: "14.5", category: .fries, imageName: "ClassicPhiladelphiaFries", description: "Dana əti (125g), ekstra pendir, karamelizə soğan, xüsusi sous, xüsusi çörək"),
      
        MenuItem(name: "Jalapeno Philly Cheesesteak", price: "14.9", category: .fries, imageName: "JalapenoPhiladelphiaFries", description: "Dana əti (125g), ekstra pendir, karamelizə soğan, xüsusi sous, jalapeno, xüsusi çörək"),
       
        MenuItem(name: "BBQ Philly Cheesesteak", price: "14.9", category: .fries, imageName: "BBQPhiladelphiaFries", description: "Dana əti (125g), ekstra pendir, karamelizə soğan, xüsusi sous, bbq sous, xüsusi çörək"),
       
        MenuItem(name: "Classic Philadelphia Fries", price: "14.5", category: .fries, imageName: "ClassicPhiladelphiaFries", description: "Çəkilmiş dana əti (150), kartof fri, xüsusi sous, əridilmiş pendir"),
       
        MenuItem(name: "Classic Chicken Philadelphia Fries", price: "11.5", category: .fries, imageName: "ClassicChickenPhiladelphiaFries", description: "Çəkilmiş toyuq əti (150), kartof fri, xüsusi sous, əridilmiş pendir"),
       
        MenuItem(name: "BBQ Philadelphia Fries", price: "14.9", category: .fries, imageName: "BBQPhiladelphiaFries", description: "Çəkilmiş dana əti (150), kartof fri, barbekü sousu, əridilmiş pendir"),
        
        MenuItem(name: "Jalapeno Philadelphia Fries", price: "15.5", category: .fries, imageName: "JalapenoPhiladelphiaFries", description: "Çəkilmiş dana əti (150), kartof fri, xalapenyo, xüsusi sous, əridilmiş pendir"),
       
        MenuItem(name: "Spicy Philadelphia Fries", price: "14.9", category: .fries, imageName: "SpicyPhiladelphiaFries", description: "Çəkilmiş dana əti (150), kartof fri, sous sriracha, əridilmiş pendir"),
       
        MenuItem(name: "Sweet Chilli Philadelphia Fries", price: "14.9", category: .fries, imageName: "SweetChilliPhiladelphiaFries", description: "Çəkilmiş dana əti (150), kartof fri, şirin çili sous, əridilmiş pendir"),

        // SIDES
        
        MenuItem(name: "Kartof Fri", price: "4", category: .sides, imageName: "FrenchFries", description: "Klassik kartof fri"),
        
        MenuItem(name: "Kəndsayağı Kartof", price: "4.5", category: .sides, imageName: "PotatoWedges", description: "Kəndsayağı kartof"),
       
        MenuItem(name: "Soğan Halqaları", price: "4.5", category: .sides, imageName: "OnionRings", description: "Soğan Halqaları"),
      
        MenuItem(name: "Nuggets", price: "6", category: .sides, imageName: "ChickenNuggets", description: "Toyuq nuggetsləri (6 əd.)"),

        // SAUCES
      
        MenuItem(name: "Ketchup", price: "0.8", category: .sauces, imageName: "Ketchup", description: "Klassik ketçup"),
      
        MenuItem(name: "Mayonnaise", price: "0.8", category: .sauces, imageName: "Mayonnaise", description: "Mayonez"),
       
        MenuItem(name: "BBQ Sauce", price: "0.8", category: .sauces, imageName: "BBQSauce", description: "Barbekü sousu"),
       
        MenuItem(name: "Cheese Sauce", price: "0.8", category: .sauces, imageName: "CheeseSauce", description: "Pendir sousu"),
        
        MenuItem(name: "Farm Sauce", price: "0.8", category: .sauces, imageName: "FarmSauce", description: "Bizim xüsusi sous"),
       
        MenuItem(name: "Sriracha Sauce", price: "1", category: .sauces, imageName: "SrirachaSauce", description: "Acılı Sriracha sousu"),
      
        MenuItem(name: "Sweet Chilli Sauce", price: "1", category: .sauces, imageName: "SweetChilliSauce", description: "Şirin çili sousu"),

        // DRINKS
        MenuItem(name: "Farm Lemonade", price: "4", category: .drinks, imageName: nil, description: "Dadlar: Peach, Blue curacao, Apple, Watermelon, Passion fruit, Cherry, Moxito"),
       
        MenuItem(name: "Farm Tea", price: "5", category: .drinks, imageName: nil, description: "Dadlar: Peach, Watermelon, Passion fruit"),
      
        MenuItem(name: "Coca-Cola", price: "2", category: .drinks, imageName: "Coca-Cola", description: "330 ml"),
     
        MenuItem(name: "Coca-Cola Zero", price: "2", category: .drinks, imageName: "Coca-Cola Zero", description: "330 ml"),
       
        MenuItem(name: "Fanta", price: "2", category: .drinks, imageName: "Fanta", description: "330 ml"),
       
        MenuItem(name: "Sprite", price: "2", category: .drinks, imageName: "Sprite", description: "330 ml"),
       
        MenuItem(name: "Fuse Tea", price: "2", category: .drinks, imageName: "FuseTea", description: "500 ml"),
       
        MenuItem(name: "Su / Qazlı", price: "1", category: .drinks, imageName: "Bonaqua", description: "Su və ya qazlı su"),
       
        MenuItem(name: "Ayran", price: "1", category: .drinks, imageName: nil, description: "Təravətləndirici ayran")
    ]
}
