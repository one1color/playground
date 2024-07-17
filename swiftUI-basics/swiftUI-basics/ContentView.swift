// SwiftUI Basics

import SwiftUI

struct ContentView: View {
    let colorList2: [Color] = [.red, .purple, .green, .pink]

    let colorList1: [Color] = [.black, .white, .blue]

    @State private var screenTapped: Bool = false

    let rotationAngle: CGFloat = 360.0

    var body: some View {
        ZStack {
            // background color
            LinearGradient(
                colors: screenTapped ? colorList1 : colorList2,
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .opacity(0.8)
            .ignoresSafeArea()

            VStack(spacing: 0) {
                Text(screenTapped ? "The Basics of swiftUI" : "To know what you know and what you do now know, that is true knowledge.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.red)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .rotation3DEffect(
                        .degrees(screenTapped ? 0 : rotationAngle),
                        axis: (
                            x: 1.0,
                            y: 1.0,
                            z: 1.0
                        )
                    )
                Spacer()
                Text("Another line of text")
                    .font(screenTapped ? .largeTitle : .title)
                    .fontWeight(.semibold)
                    .foregroundStyle(screenTapped ? .blue : .white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .rotation3DEffect(
                        .degrees(screenTapped ? 0 : rotationAngle),
                        axis: (
                            x: 1.0,
                            y: 1.0,
                            z: 1.0
                        )
                    )
            }
        }
        .onTapGesture {
            //Change screen color if tapped
            withAnimation{
                screenTapped.toggle()

            }
        }
    }
}

#Preview {
    ContentView()
}
