import SwiftUI

struct GridView: View {
    var body: some View {
        LazyVGrid(
            columns: [
                .init(),
                .init(),
                .init()
            ]
        ) {
            ForEach(
                Genre.list.randomElement()!.subgenres.shuffled().prefix(20),
                content: \.view
            )
        }
        .padding(.horizontal)
    }
}

private extension Genre.Subgenre {
    var view: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(
                LinearGradient(
                    gradient: .init(
                        colors: AnyIterator { } .prefix(2).map {
                            .random(saturation: 2 / 3, value: 0.85)
                        }
                    ),
                    startPoint: .topLeading, endPoint: .bottomTrailing
                )
            )
            .frame(height: 125)
            .overlay(
                Image("Genre/\(Int.random(in: 1...92))")
                    .resizable()
                    .saturation(0)
                    .blendMode(.multiply)
                    .scaledToFit()
            )
            .overlay(
                Text(name)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(10)
                    .frame(alignment: .bottomLeading),
                alignment: .bottomLeading
            )
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
