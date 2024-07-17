//
//  arithmeticProgression.swift
//  swiftUI-basics
//
//  Created by koki isshiki on 17.07.24.
//

import SwiftUI

// Exercise 3:
// Display a, a + d, a + 2d, ..., a + (n-1) * d

struct arithmeticProgression: View {
    let a: Int
    let d: Int
    let n: Int
    var body: some View {
        VStack {
            List {
                ForEach(0 ..< n, id: \.self) { i in
                    Text("\(a + i * d)")
                }
            }
        }
    }
}

#Preview {
    arithmeticProgression(a: 1, d: 2, n: 100)
}
