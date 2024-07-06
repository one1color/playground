import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var selectedGenre = Genre.list.first

    var body: some View {
        NavigationView {
            ScrollView {
                ScrollViewReader { proxy in
                    LazyVStack(alignment: .leading) {
                        ForEach(Genre.list) { genre in
                            Text(genre.name)
                                .font(.headline)
                                .padding(.leading, 40)
                                .id(genre)

                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack(spacing: 20) {
                                    ForEach(genre.subgenres, content: \.view)
                                }
                                .padding(.leading, 40)
                            }
                            Divider()
                                .padding(.leading, 40)
                                .padding(.top)
                        }
                    }
                    .onChange(of: selectedGenre) { genre in
                        withAnimation {
                            proxy.scrollTo(genre, anchor: .top)
                        }

                        selectedGenre = nil
                    }
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
            .frame(width: 125, height: 125)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
