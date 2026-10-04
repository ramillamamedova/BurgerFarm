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
        MenuItem(
            name: "Classic Smashed",
            price: "10",
            category: .burgers,
            imageName: "ClassicSmashed",
            descriptionAz: "1x smash dana əti (90g), pendir, duzlu xiyar, xüsusi sous, karamelizə soğan, karamelizə çörək",
            descriptionRu: "1x говяжья котлета смэж (90г), сыр, маринованные огурцы, фирменный соус, карамелизованный лук, карамелизованная булочка",
            descriptionEn: "1x smashed beef patty (90g), cheese, pickles, special sauce, caramelized onions, caramelized bun"
        ),
        MenuItem(
            name: "Smashed Cheese",
            price: "12.5",
            category: .burgers,
            imageName: "SmashedCheese",
            descriptionAz: "2x smash dana əti (125g), ekstra pendir, duzlu xiyar, karamelizə soğan, xüsusi sous, karamelizə çörək",
            descriptionRu: "2x говяжьи котлеты смэж (125г), экстра сыр, маринованные огурцы, карамелизованный лук, фирменный соус, карамелизованная булочка",
            descriptionEn: "2x smashed beef patties (125g), extra cheese, pickles, caramelized onions, special sauce, caramelized bun"
        ),
        MenuItem(
            name: "Oklahoma Onion",
            price: "12.9",
            category: .burgers,
            imageName: "OklahomaOnion",
            descriptionAz: "2x smash dana əti (125g), ekstra pendir, duzlu xiyar, Oklahoma sayağı soğan, xüsusi sous, karamelizə çörək",
            descriptionRu: "2x говяжьи котлеты смэж (125г), экстра сыр, маринованные огурцы, лук по-оклахомски, фирменный соус, карамелизованная булочка",
            descriptionEn: "2x smashed beef patties (125g), extra cheese, pickles, Oklahoma-style onions, special sauce, caramelized bun"
        ),
        MenuItem(
            name: "Spicy Smashed",
            price: "12.9",
            category: .burgers,
            imageName: "SpicySmashed",
            descriptionAz: "2x smash dana əti (125g), pendir, duzlu xiyar, karamelizə soğan, Sriracha sous, xüsusi sous, karamelizə çörək",
            descriptionRu: "2x говяжьи котлеты смэж (125г), сыр, маринованные огурцы, карамелизованный лук, соус Шрирача, фирменный соус, карамелизованная булочка",
            descriptionEn: "2x smashed beef patties (125g), cheese, pickles, caramelized onions, Sriracha sauce, special sauce, caramelized bun"
        ),
        MenuItem(
            name: "Jalapeno Smashed",
            price: "12.9",
            category: .burgers,
            imageName: "JalapenoSmashed",
            descriptionAz: "2x smash dana əti (125g), pendir, duzlu xiyar, xalapenyo, xüsusi sous, karamelizə soğan, karamelizə çörək",
            descriptionRu: "2x говяжьи котлеты смэж (125г), сыр, маринованные огурцы, халапеньо, фирменный соус, карамелизованный лук, карамелизованная булочка",
            descriptionEn: "2x smashed beef patties (125g), cheese, pickles, jalapeno, special sauce, caramelized onions, caramelized bun"
        ),
        MenuItem(
            name: "Smash Deluxe",
            price: "15",
            category: .burgers,
            imageName: "SmashDeluxe",
            descriptionAz: "2x smash dana əti (125g), ekstra pendir, duzlu xiyar, krevet, karamelizə soğan, aysberq kahı, karamelizə çörək",
            descriptionRu: "2x говяжьи котлеты смэж (125г), экстра сыр, маринованные огурцы, креветки, карамелизованный лук, салат айсберг, карамелизованная булочка",
            descriptionEn: "2x smashed beef patties (125g), extra cheese, pickles, shrimp, caramelized onions, iceberg lettuce, caramelized bun"
        ),
        MenuItem(
            name: "BBQ Smashed",
            price: "12.9",
            category: .burgers,
            imageName: "BbqSmashed",
            descriptionAz: "2x smash dana əti (125g), pendir, duzlu xiyar, barbekü sousu, xüsusi sous, karamelizə soğan, karamelizə çörək",
            descriptionRu: "2x говяжьи котлеты смэж (125г), сыр, маринованные огурцы, соус барбекю, фирменный соус, карамелизованный лук, карамелизованная булочка",
            descriptionEn: "2x smashed beef patties (125g), cheese, pickles, BBQ sauce, special sauce, caramelized onions, caramelized bun"
        ),
        MenuItem(
            name: "Fried Onion Smashed",
            price: "13.9",
            category: .burgers,
            imageName: "FriedOnionSmashed",
            descriptionAz: "2x smash dana əti (125g), pendir, duzlu xiyar, soğan halqaları, karamelizə soğan, xüsusi sous, karamelizə çörək",
            descriptionRu: "2x говяжьи котлеты смэж (125г), сыр, маринованные огурцы, луковые кольца, карамелизованный лук, фирменный соус, карамелизованная булочка",
            descriptionEn: "2x smashed beef patties (125g), cheese, pickles, onion rings, caramelized onions, special sauce, caramelized bun"
        ),
        MenuItem(
            name: "Fresh Smashed",
            price: "12.9",
            category: .burgers,
            imageName: "FreshSmashed",
            descriptionAz: "2x smash dana əti (125g), pendir, duzlu xiyar, aysberq kahı, pomidor, karamelizə soğan, xüsusi sous, karamelizə çörək",
            descriptionRu: "2x говяжьи котлеты смэж (125г), сыр, маринованные огурцы, салат айсберг, помидоры, карамелизованный лук, фирменный соус, карамелизованная булочка",
            descriptionEn: "2x smashed beef patties (125g), cheese, pickles, iceberg lettuce, tomatoes, caramelized onions, special sauce, caramelized bun"
        ),
        MenuItem(
            name: "Truffle Smashed",
            price: "13.4",
            category: .burgers,
            imageName: "TruffleSmashed",
            descriptionAz: "2x smash dana əti (125g), pendir, duzlu xiyar, truffle sousu, xüsusi sous, karamelizə soğan, karamelizə çörək",
            descriptionRu: "2x говяжьи котлеты смэж (125г), сыр, маринованные огурцы, трюфельный соус, фирменный соус, карамелизованный лук, карамелизованная булочка",
            descriptionEn: "2x smashed beef patties (125g), cheese, pickles, truffle sauce, special sauce, caramelized onions, caramelized bun"
        ),
        MenuItem(
            name: "Classic Smashed Chicken",
            price: "8",
            category: .burgers,
            imageName: "ClassicSmashedChicken",
            descriptionAz: "1x smash toyuq əti (90g), pendir, duzlu xiyar, xüsusi sous, karamelizə soğan, karamelizə çörək",
            descriptionRu: "1x куриная котлета смэж (90г), сыр, маринованные огурцы, фирменный соус, карамелизованный лук, карамелизованная булочка",
            descriptionEn: "1x smashed chicken patty (90g), cheese, pickles, special sauce, caramelized onions, caramelized bun"
        ),
        MenuItem(
            name: "Double Smash Chicken",
            price: "9.9",
            category: .burgers,
            imageName: "DoubleSmashChicken",
            descriptionAz: "2x smash toyuq əti (125g), ekstra pendir, duzlu xiyar, karamelizə soğan, xüsusi sous, karamelizə çörək",
            descriptionRu: "2x куриные котлеты смаж (125г), экстра сыр, маринованные огурцы, карамелизованный лук, фирменный соус, карамелизованная булочка",
            descriptionEn: "2x smashed chicken patties (125g), extra cheese, pickles, caramelized onions, special sauce, caramelized bun"
        ),
        MenuItem(
            name: "Sezar Smashed",
            price: "9.9",
            category: .burgers,
            imageName: "SezarSmashed",
            descriptionAz: "1x smash toyuq əti (90g), pendir, duzlu xiyar, kahı, pomidor, karamelizə soğan, sezar sousu, karamelizə çörək",
            descriptionRu: "1x куриная котлета смаш (90г), сыр, маринованные огурцы, салат, помидоры, карамелизованный лук, соус цезарь, карамелизованная булочка",
            descriptionEn: "1x smashed chicken patty (90g), cheese, pickles, lettuce, tomatoes, caramelized onions, Caesar sauce, caramelized bun"
        ),

        // HOT DOGS
        MenuItem(
            name: "American Hot Dog",
            price: "5.5",
            category: .hotDogs,
            imageName: "AmericanHotDog",
            descriptionAz: "Mal ətindən sosis, çörək, ketçup, mayonez, xardal, karamelizə soğan",
            descriptionRu: "Говяжья сосиска, булочка, кетчуп, майонез, горчица, карамелизованный лук",
            descriptionEn: "Beef sausage, bun, ketchup, mayonnaise, mustard, caramelized onions"
        ),
        MenuItem(
            name: "Jalapeno Hot Dog",
            price: "6",
            category: .hotDogs,
            imageName: "SpicyHotDog",
            descriptionAz: "Mal ətindən sosis, çörək, ketçup, mayonez, xardal, xalapenyo, karamelizə soğan",
            descriptionRu: "Говяжья сосиска, булочка, кетчуп, майонез, горчица, халапеньо, карамелизованный лук",
            descriptionEn: "Beef sausage, bun, ketchup, mayonnaise, mustard, jalapeno, caramelized onions"
        ),
        MenuItem(
            name: "Farm Hot Dog",
            price: "6.5",
            category: .hotDogs,
            imageName: "FarmHotDog",
            descriptionAz: "Mal ətindən sosis, çörək, xüsusi sous, duzlu xiyar, pendir, karamelizə soğan",
            descriptionRu: "Говяжья сосиска, булочка, фирменный соус, маринованные огурцы, сыр, карамелизованный лук",
            descriptionEn: "Beef sausage, bun, special sauce, pickles, cheese, caramelized onions"
        ),

        // FRIES & PHILLY CHEESESTEAK
        MenuItem(
            name: "Classic Philly Cheesesteak",
            price: "14.5",
            category: .fries,
            imageName: "ClassicPhiladelphiaFries",
            descriptionAz: "Dana əti (125g), ekstra pendir, karamelizə soğan, xüsusi sous, xüsusi çörək",
            descriptionRu: "Говядина (125г), экстра сыр, карамелизованный лук, фирменный соус, специальный хлеб",
            descriptionEn: "Beef (125g), extra cheese, caramelized onions, special sauce, special bread"
        ),
        MenuItem(
            name: "Jalapeno Philly Cheesesteak",
            price: "14.9",
            category: .fries,
            imageName: "JalapenoPhiladelphiaFries",
            descriptionAz: "Dana əti (125g), ekstra pendir, karamelizə soğan, xüsusi sous, jalapeno, xüsusi çörək",
            descriptionRu: "Говядина (125г), экстра сыр, карамелизованный лук, фирменный соус, халапеньо, специальный хлеб",
            descriptionEn: "Beef (125g), extra cheese, caramelized onions, special sauce, jalapeno, special bread"
        ),
        MenuItem(
            name: "BBQ Philly Cheesesteak",
            price: "14.9",
            category: .fries,
            imageName: "BBQPhiladelphiaFries",
            descriptionAz: "Dana əti (125g), ekstra pendir, karamelizə soğan, xüsusi sous, bbq sous, xüsusi çörək",
            descriptionRu: "Говядина (125г), экстра сыр, карамелизованный лук, фирменный соус, соус барбекю, специальный хлеб",
            descriptionEn: "Beef (125g), extra cheese, caramelized onions, special sauce, BBQ sauce, special bread"
        ),
        MenuItem(
            name: "Classic Philadelphia Fries",
            price: "14.5",
            category: .fries,
            imageName: "ClassicPhiladelphiaFries",
            descriptionAz: "Çəkilmiş dana əti (150), kartof fri, xüsusi sous, əridilmiş pendir",
            descriptionRu: "Говяжья котлета (150г), картофель фри, фирменный соус, плавленый сыр",
            descriptionEn: "Beef patty (150g), French fries, special sauce, melted cheese"
        ),
        MenuItem(
            name: "Classic Chicken Philadelphia Fries",
            price: "11.5",
            category: .fries,
            imageName: "ClassicChickenPhiladelphiaFries",
            descriptionAz: "Çəkilmiş toyuq əti (150), kartof fri, xüsusi sous, əridilmiş pendir",
            descriptionRu: "Куриная котлета(150г), картофель фри, фирменный соус, плавленый сыр",
            descriptionEn: "Chicken patty (150g), French fries, special sauce, melted cheese"
        ),
        MenuItem(
            name: "BBQ Philadelphia Fries",
            price: "14.9",
            category: .fries,
            imageName: "BBQPhiladelphiaFries",
            descriptionAz: "Çəkilmiş dana əti (150), kartof fri, barbekü sousu, əridilmiş pendir",
            descriptionRu: "Говяжья котлета (150г), картофель фри, соус барбекю, плавленый сыр",
            descriptionEn: "Beef patty (150g), French fries, BBQ sauce, melted cheese"
        ),
        MenuItem(
            name: "Jalapeno Philadelphia Fries",
            price: "15.5",
            category: .fries,
            imageName: "JalapenoPhiladelphiaFries",
            descriptionAz: "Çəkilmiş dana əti (150), kartof fri, xalapenyo, xüsusi sous, əridilmiş pendir",
            descriptionRu: "Говяжья котлета (150г), картофель фри, халапеньо, фирменный соус, плавленый сыр",
            descriptionEn: "Beef patty (150g), French fries, jalapeno, special sauce, melted cheese"
        ),
        MenuItem(
            name: "Spicy Philadelphia Fries",
            price: "14.9",
            category: .fries,
            imageName: "SpicyPhiladelphiaFries",
            descriptionAz: "Çəkilmiş dana əti (150), kartof fri, sous sriracha, əridilmiş pendir",
            descriptionRu: "Говяжья котлета (150г), картофель фри, соус шрирача, плавленый сыр",
            descriptionEn: "Beef patty (150g), French fries, Sriracha sauce, melted cheese"
        ),
        MenuItem(
            name: "Sweet Chilli Philadelphia Fries",
            price: "14.9",
            category: .fries,
            imageName: "SweetChilliPhiladelphiaFries",
            descriptionAz: "Çəkilmiş dana əti (150), kartof fri, şirin çili sous, əridilmiş pendir",
            descriptionRu: "Говяжья котлета (150г), картофель фри, соус сладкий чили, плавленый сыр",
            descriptionEn: "Beef patty (150g), French fries, sweet chili sauce, melted cheese"
        ),

        // SIDES
        MenuItem(
            name: "Kartof Fri",
            price: "4",
            category: .sides,
            imageName: "FrenchFries",
            descriptionAz: "Klassik kartof fri",
            descriptionRu: "Классический картофель фри",
            descriptionEn: "Classic French fries"
        ),
        MenuItem(
            name: "Kəndsayağı Kartof",
            price: "4.5",
            category: .sides,
            imageName: "PotatoWedges",
            descriptionAz: "Kəndsayağı kartof",
            descriptionRu: "Картофель по-деревенски",
            descriptionEn: "Potato wedges"
        ),
        MenuItem(
            name: "Soğan Halqaları",
            price: "4.5",
            category: .sides,
            imageName: "OnionRings",
            descriptionAz: "Soğan Halqaları",
            descriptionRu: "Луковые кольца",
            descriptionEn: "Onion rings"
        ),
        MenuItem(
            name: "Nuggets",
            price: "6",
            category: .sides,
            imageName: "ChickenNuggets",
            descriptionAz: "Toyuq nuggetsləri (6 əd.)",
            descriptionRu: "Куриные наггетсы (6 шт.)",
            descriptionEn: "Chicken nuggets (6 pcs.)"
        ),

        // SAUCES
        MenuItem(
            name: "Ketchup",
            price: "0.8",
            category: .sauces,
            imageName: "Ketchup",
            descriptionAz: "Klassik ketçup",
            descriptionRu: "Классический кетчуп",
            descriptionEn: "Classic ketchup"
        ),
        MenuItem(
            name: "Mayonnaise",
            price: "0.8",
            category: .sauces,
            imageName: "Mayonnaise",
            descriptionAz: "Mayonez",
            descriptionRu: "Майонез",
            descriptionEn: "Mayonnaise"
        ),
        MenuItem(
            name: "BBQ Sauce",
            price: "0.8",
            category: .sauces,
            imageName: "BBQSauce",
            descriptionAz: "Barbekü sousu",
            descriptionRu: "Соус барбекю",
            descriptionEn: "BBQ sauce"
        ),
        MenuItem(
            name: "Cheese Sauce",
            price: "0.8",
            category: .sauces,
            imageName: "CheeseSauce",
            descriptionAz: "Pendir sousu",
            descriptionRu: "Сырный соус",
            descriptionEn: "Cheese sauce"
        ),
        MenuItem(
            name: "Farm Sauce",
            price: "0.8",
            category: .sauces,
            imageName: "FarmSauce",
            descriptionAz: "Bizim xüsusi sous",
            descriptionRu: "Наш фирменный соус",
            descriptionEn: "Our special sauce"
        ),
        MenuItem(
            name: "Sriracha Sauce",
            price: "1",
            category: .sauces,
            imageName: "SrirachaSauce",
            descriptionAz: "Acılı Sriracha sousu",
            descriptionRu: "Острый соус ",
            descriptionEn: "Spicy Sriracha sauce"
        ),
        MenuItem(
            name: "Sweet Chilli Sauce",
            price: "1",
            category: .sauces,
            imageName: "SweetChilliSauce",
            descriptionAz: "Şirin çili sousu",
            descriptionRu: "Соус сладкий чили",
            descriptionEn: "Sweet chili sauce"
        ),

        // DRINKS
        MenuItem(
            name: "Farm Lemonade",
            price: "4",
            category: .drinks,
            imageName: "FarmLemonade",
            descriptionAz: "Dadlar: Peach, Blue curacao, Apple, Watermelon, Passion fruit, Cherry, Moxito",
            descriptionRu: "Вкусы: Персик, Яблоко, Арбуз, Маракуйя, Вишня, Мохито",
            descriptionEn: "Flavors: Peach, Blue curacao, Apple, Watermelon, Passion fruit, Cherry, Mojito"
        ),
        MenuItem(
            name: "Farm Tea",
            price: "5",
            category: .drinks,
            imageName: "FarmTea",
            descriptionAz: "Dadlar: Peach, Watermelon, Passion fruit",
            descriptionRu: "Вкусы: Персик, Арбуз, Маракуйя",
            descriptionEn: "Flavors: Peach, Watermelon, Passion fruit"
        ),
        MenuItem(
            name: "Coca-Cola",
            price: "2",
            category: .drinks,
            imageName: "Coca-Cola",
            descriptionAz: "330 ml , 500 ml",
            descriptionRu: "330 мл , 500 ml",
            descriptionEn: "330 ml , 500 ml"
        ),
        MenuItem(
            name: "Coca-Cola Zero",
            price: "2",
            category: .drinks,
            imageName: "Coca-Cola Zero",
            descriptionAz: "330 ml , 500 ml",
            descriptionRu: "330 мл , 500 ml",
            descriptionEn: "330 ml , 500ml "
        ),
        MenuItem(
            name: "Fanta",
            price: "2",
            category: .drinks,
            imageName: "Fanta",
            descriptionAz: "330 ml , 500 ml",
            descriptionRu: "330 мл , 500 ml",
            descriptionEn: "330 ml , 500 ml",
        ),
        MenuItem(
            name: "Sprite",
            price: "2",
            category: .drinks,
            imageName: "Sprite",
            descriptionAz: "330 ml , 500 ml ",
            descriptionRu: "330 мл , 500 ml ",
            descriptionEn: "330 ml , 500 ml ",
        ),
        MenuItem(
            name: "Fuse Tea",
            price: "2",
            category: .drinks,
            imageName: "FuseTea",
            descriptionAz: "330 ml , 500 ml",
            descriptionRu: "330 ml , 500 мл",
            descriptionEn: "330 ml , 500 ml"
            ,
        ),
        MenuItem(
            name: "Su / Qazlı",
            price: "1",
            category: .drinks,
            imageName: "Bonaqua",
            descriptionAz: "Su və ya qazlı su",
            descriptionRu: "Вода или газированная вода",
            descriptionEn: "Still or sparkling water"
        ),
        MenuItem(
            name: "Ayran",
            price: "1",
            category: .drinks,
            imageName: nil,
            descriptionAz: "Təravətləndirici ayran",
            descriptionRu: "Освежающий айран",
            descriptionEn: "Refreshing ayran"
        )
    ]
}
