import SwiftUI

struct AnimateFontsView: View {
    @State var textFontSize: Font  = .largeTitle
    @State var toggleFont: Bool = false
    var body: some View {
        ZStack {
            Color
                .purple
                .opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Hello, World!")
                    .font(toggleFont ? .caption : .largeTitle)
                    .fontWeight(.bold)

                Spacer()

                Button {
                    withAnimation {
                        toggleFont.toggle()
                    }
                } label: {
                    Text("Animate Me")
                        .font(.title)
                        .fontWeight(.semibold)
                }

            }
            .padding()
        }
    }
}

#Preview {
    AnimateFontsView()
}
