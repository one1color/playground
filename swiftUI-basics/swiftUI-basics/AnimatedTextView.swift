//
//  AnimatedTextView.swift
//  swiftUI-basics
//
//  Created by koki isshiki on 17.07.24.
//

import SwiftUI

struct AnimatedTextView: View {
    @State var text = "Hello World !"
    @State var offset : CGSize = CGSize(width: 0, height: 1000)
    @State var togglePosition: Bool = false
    @State var color: Color = .blue
    @State var font: Font = .headline
    @State var rotate: Double = 0
    @State var bgColor: Color = .black

    var body: some View {
        ZStack {
            bgColor
                .opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Text(text)
                    .font(font)
                    .fontWeight(.semibold)
                    .offset(offset)
                    .rotationEffect(Angle(degrees: rotate))
                    .foregroundColor(color)

                Spacer()

                Button {
                    withAnimation(.spring) {
                        offset.height = togglePosition ? 400 : 0
                        color = togglePosition ? .red : .blue
                        font = togglePosition ? .headline : .title
                        rotate = togglePosition ? 0 : 360
                        bgColor = togglePosition ? .black : .indigo
                        text = togglePosition ? "Hello World!" : "Guten Tag!"
                        text = togglePosition ? "Hello World!" : "Guten Tag!"
                        togglePosition.toggle()
                    }
                } label: {
                    Text("Animate")
                        .fontWeight(.semibold)
                        .padding()
                        .overlay(Capsule().stroke())
                }

            }
            .padding()
            .onAppear{
                withAnimation {
                    offset = .zero
                }
        }
        }
    }
}

#Preview {
    AnimatedTextView()
}
