//
//  GridBasics.swift
//  swiftUI-basics
//
//  Created by koki isshiki on 16.07.24.
//

import SwiftUI

struct GridBasics: View {
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()

            Grid {
                GridRow {
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                        .gridCellColumns(2)
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)

                }
                GridRow {
                    Rectangle()
                        .fill(.red)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.green)
                        .cornerRadius(20)
                        .gridCellColumns(2)
                    Rectangle()
                        .fill(.red)
                        .cornerRadius(20)

                }
                GridRow {
                    Rectangle()
                        .fill(.yellow)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.orange)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.yellow)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.orange)
                        .cornerRadius(20)
                }
            }
            .padding()
        }
    }
}

#Preview {
    GridBasics()
}
