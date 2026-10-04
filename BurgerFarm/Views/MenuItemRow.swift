//
//  MenuItemRow.swift
//  BurgerFarm
//
//  Created by Ram on 31.08.26.
//

import SwiftUI

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

                Text(LocalizedStringKey(item.category.rawValue))
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
