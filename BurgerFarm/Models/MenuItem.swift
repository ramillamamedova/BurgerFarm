//
//  MenuItem.swift
//  BurgerFarm
//
//  Created by Ram on 31.08.26.
//

import Foundation

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
    let descriptionAz: String
    let descriptionRu: String
    let descriptionEn: String
    
   
    var localizedDescription: String {
        let languageCode = Locale.current.language.languageCode?.identifier ?? "en"
        if languageCode == "ru" {
            return descriptionRu
        } else if languageCode == "az" {
            return descriptionAz
        } else {
            return descriptionEn
        }
    }
}
