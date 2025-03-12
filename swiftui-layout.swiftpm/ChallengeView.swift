import SwiftUI

struct ChallengeView: View {
    @State private var selectedGenre = Genre.list.first

    var body: some View {
        NavigationView {
            ScrollViewReader { scrollProxy in
                ScrollView(.vertical) {
                    LazyVStack(pinnedViews: .sectionHeaders) {
                        ForEach(Genre.list) { genre in
                            Section(
                                header: genre.header.id(genre)
                            ) {
                                LazyVGrid(columns: [.init(),.init()]) {
                                    ForEach(genre.subgenres, content: \.view)
                                }
                                .padding(.horizontal, 20)
                            }
                        }
                    }
                }
                .onChange(of: selectedGenre) { genre in
                    scrollProxy.scrollTo(selectedGenre, anchor: .top)
                    selectedGenre = nil
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Menu("Genre") {
                        ForEach(Genre.list) { genre in
                            Button(genre.name) {
                                selectedGenre = genre
                            }
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

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}
