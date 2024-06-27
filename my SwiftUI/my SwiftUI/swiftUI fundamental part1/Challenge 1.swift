import SwiftUI

struct Challenge_1: View {
  var body: some View {
    Image("monster")
          .resizable()
          .scaledToFit()
          .shadow(radius: 15)
          .border(Color.green, width: 5.0)
          .padding()
  }
}

#Preview {
    Challenge_1()
}
