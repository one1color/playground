//
//  ExploreView.swift
//  swiftUI-basics
//
//  Created by koki isshiki on 17.07.24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStackDemo()
        }
    }
}

struct HStackDemo: View {
    var body: some View {
        HStack(spacing: 50) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding()
                .background(Color.green)
                .cornerRadius(10)
                .rotationEffect(Angle(degrees: 45))

            Text("Hello, World!")
                .padding()
                .background(Color.red)
                .cornerRadius(10)
                .rotation3DEffect(
                    Angle(degrees: 30),axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
                )

            Text("Hello, World!")
                .font(.title)
                .fontWeight(.semibold)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

#Preview {
    ExploreView()
}
