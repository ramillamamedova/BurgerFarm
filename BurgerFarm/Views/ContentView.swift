//
//  ContentView.swift
//  BurgerFarm
//
//  Created by Ram on 25.08.26.
//
import SwiftUI

struct ContentView: View {
    @State private var selectedCategory: MenuCategory = .burgers

    var filteredMenu: [MenuItem] {
        MenuData.items.filter { $0.category == selectedCategory }
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Header
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

                // Categories
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

                // Menu Item List
                List(filteredMenu) { item in
                    NavigationLink(destination: ItemDetailView(item: item)) {
                        MenuItemRow(item: item)
                    }
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
