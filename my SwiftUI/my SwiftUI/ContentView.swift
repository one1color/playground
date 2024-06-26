//
//  ContentView.swift
//  my SwiftUI
//
//  Created by koki isshiki on 26.06.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var swiftyColor: Color = .red
    @State private var swiftyOpacity: Double = 0.7

    var body: some View {
        VStack {
            swiftyControls(swiftyColor: $swiftyColor, swiftyOpacity: $swiftyOpacity)

            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .padding(25)
                .foregroundColor(.white)
                .opacity(swiftyOpacity)
                .background(swiftyColor)
                .cornerRadius(50)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct swiftyControls: View {
    @Binding var swiftyColor: Color
    @Binding var swiftyOpacity: Double
    var body: some View {
        ColorPicker("Swifty Color",
                    selection: $swiftyColor)
        Slider(value: $swiftyOpacity, in: 0...1)
            .accentColor(swiftyColor)
    }
}
