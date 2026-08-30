//
//  ItemDetailView.swift
//  BurgerFarm
//
//  Created by Ram on 31.08.26.
//

import SwiftUI

struct ItemDetailView: View {
    let item: MenuItem
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Item Image
                ZStack(alignment: .topLeading) {
                    if let imageName = item.imageName, !imageName.isEmpty {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                    } else {
                        Image(systemName: "fork.knife")
                            .font(.system(size: 60))
                            .foregroundStyle(.red)
                            .frame(maxWidth: .infinity)
                            .frame(height: 260)
                            .background(Color.red.opacity(0.1))
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: 20))

                // Item Information
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Text(item.name)
                            .font(.title.bold())

                        Spacer()

                        Text("\(item.price) AZN")
                            .font(.title2.bold())
                            .foregroundStyle(.red)
                    }

                    Text(item.category.rawValue)
                        .font(.subheadline)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 4)
                        .background(Color.red.opacity(0.1))
                        .foregroundStyle(.red)
                        .clipShape(Capsule())

                    Divider()
                        .padding(.vertical, 8)

                    Text("Ingredients & Description")
                        .font(.headline)

                    Text("Juicy ingredients prepared according to the signature Burger Farm recipe. Served hot and fresh.")
                        .font(.body)
                        .foregroundStyle(.secondary)
                }
                .padding(.horizontal)

                Spacer(minLength: 30)

                // Add to Cart Button
                Button(action: {
                    dismiss()
                }) {
                    Text("Add for \(item.price) AZN")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ItemDetailView(item: MenuData.items[0])
    }
}
