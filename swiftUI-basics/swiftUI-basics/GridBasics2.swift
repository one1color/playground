//
//  GridBasics2.swift
//  swiftUI-basics
//
//  Created by koki isshiki on 16.07.24.
//

import SwiftUI

struct GridBasics2: View {
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()

            Grid {
                GridRow {
                    Rect(color: .red, count: 2, total: 3)
                    Rect(color: .blue, count: 1, total: 3)
                }
                GridRow {
                    Rect(color: .red, count: 1, total: 3)
                    Rect(color: .yellow, count: 1, total: 3)
                    Rect(color: .orange, count: 1, total: 3)
                }
                GridRow {
                    Rect(color: .red, count: 1, total: 4)
                    Rect(color: .yellow, count: 1, total: 4)
                    Rect(color: .orange, count: 1, total: 4)
                    Rect(color: .black, count: 1, total: 4)

                }
            }
            .padding()
        }
    }
}

struct Rect: View {
    let color: Color
    let count: Int
    let total: Int

    var text: String {
        "\(count) out of \(total)"
    }

    var body: some View {
        Rectangle()
            .fill(color.opacity(0.5))
            .cornerRadius(20)
            .overlay(
            Text(text)
                .font(.subheadline)
                .fontWeight(.semibold)
            )
            .gridCellColumns(count)
    }
}

#Preview {
    GridBasics2()
}
