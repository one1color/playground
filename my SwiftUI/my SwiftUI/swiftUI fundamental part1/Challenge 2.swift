import SwiftUI

struct Challenge_2: View {
  var body: some View {
    VStack {
      Image(systemName: "sun.max.fill")
        .renderingMode(.original)
        .resizable()
        .frame(width: 50, height: 50)

        Text("Sunny")
            .font(.title)
            .fontWeight(.semibold)
            .foregroundStyle(Color.white)

        Text("H: 61° L: 44°")
            .foregroundStyle(Color.white)
            .opacity(0.5)
    }
    .padding()
    .background(
      LinearGradient(
        gradient: Gradient(
          colors: [Color.white, Color.blue]),
        startPoint: .top, endPoint: .bottom
      )
    )
    .cornerRadius(12)
  }
}


#Preview {
    Challenge_2()
}
