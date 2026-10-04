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
                ZStack {
                    if let imageName = item.imageName, !imageName.isEmpty, let _ = UIImage(named: imageName) {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                    } else {
                        Image(systemName: "cup.and.saucer.fill")
                            .font(.system(size: 60))
                            .foregroundStyle(.red)
                            .frame(maxWidth: .infinity)
                            .frame(height: 260)
                            .background(Color.red.opacity(0.1))
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: 20))

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

                    Text(item.localizedDescription)
                        .font(.body)
                        .foregroundStyle(.secondary)
                }
                .padding(.horizontal)

                Spacer(minLength: 30)

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
