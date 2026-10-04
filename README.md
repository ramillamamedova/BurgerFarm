# Burger Farm — iOS app

A SwiftUI menu app for **Burger Farm**, a smash-burger restaurant in Baku, Azerbaijan. Browse the menu by category, open a dish to see its price and ingredients, and reach the branch by phone, WhatsApp, Instagram or Apple Maps. The app is available in English, Russian and Azerbaijani.

## Features

- **Menu with 45 items** in 6 categories: Burgers, Hot Dogs, Fries, Sides, Sauces, Drinks, with photos and prices in AZN
- **Item detail screen** with price, category and an ingredient description in EN / RU / AZ
- **Branch sheet** with address (opens Apple Maps), opening hours, and one-tap Call, WhatsApp and Instagram buttons
- **Onboarding flow**: welcome screen with language selection, registration form, notifications screen
- **Localization** with a String Catalog (`Localizable.xcstrings`) for English, Russian and Azerbaijani

## Tech stack

- Swift 5, SwiftUI
- `NavigationStack`, `List`, `.sheet` with presentation detents
- `@State`, `@AppStorage`
- String Catalogs for localization
- Git with `main` / `develop` branches and pull requests

## Project structure

```text
BurgerFarm/
├── BurgerFarmApp.swift          # App entry point
├── Assets.xcassets              # Images and app assets
├── Data/
│   ├── MenuData.swift           # Static menu (45 items)
│   └── Localizable.xcstrings    # EN / RU / AZ strings
├── Models/
│   └── MenuItem.swift           # MenuItem, MenuCategory
└── Views/
    ├── ContentView.swift        # Menu screen with category filter
    ├── MenuItemRow.swift        # Row in the menu list
    ├── ItemDetailView.swift     # Dish details
    ├── BranchView.swift         # Branch info and contact buttons
    └── OnboardingView.swift     # 3-step onboarding
```

## Getting started

1. Clone the repo: `git clone https://github.com/ramillamamedova/BurgerFarm.git`
2. Open `BurgerFarm.xcodeproj` in Xcode
3. Select an iPhone simulator and press **Run** (⌘R)

## Known limitations and next steps

- Menu data is a static Swift array; moving it to JSON or a backend is planned
- The registration form and notifications screen are UI only (no data is stored or sent yet)
- The language chosen in onboarding applies to onboarding screens; dish descriptions follow the device language (to be unified)
- No cart or ordering yet
- Planned: extract view models (MVVM), unit tests, dark mode support

## Author

Ramilla Mamedova — iOS developer · mammadova.rm@gmail.com
Ramilla Mamedova — iOS developer · mammadova.rm@gmail.com
