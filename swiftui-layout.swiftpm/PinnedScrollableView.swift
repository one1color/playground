import SwiftUI

struct PinnedScrollableView: View {
    @State private var selectedGenre = Genre.list.first

    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(pinnedViews: .sectionHeaders) {
                ForEach(Genre.list) { genre in
                    Section(
                        header: genre.header,
                        footer: genre.header
                    ) {
                        ForEach(genre.subgenres.prefix(5)) {
                            $0.view.frame(width: 125)
                        }
                    }
                }
            }
        }
    }
}

private extension Genre {
    var header: some SwiftUI.View {
        HStack {
            Text(name)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.leading)
                .padding(.vertical, 8)

            Spacer()
        }
        .background(UIBlurEffect.View(blurStyle: .systemThinMaterial))
        .frame(maxWidth: .infinity)
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

struct PinnedScrollableView_Previews: PreviewProvider {
    static var previews: some View {
        PinnedScrollableView()
    }
}
