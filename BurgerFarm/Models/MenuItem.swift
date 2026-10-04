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

    func localizedDescription(for locale: Locale) -> String {
        switch locale.language.languageCode?.identifier {
        case "ru": return descriptionRu
        case "az": return descriptionAz
        default:   return descriptionEn
        }
    }
}
