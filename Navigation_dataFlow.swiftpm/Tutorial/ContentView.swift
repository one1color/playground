import SwiftUI

struct ContentView: View {
    @State var artworks = artData

    var body: some View {
        NavigationStack {
            List(artworks) { artwork in
                NavigationLink(value: artwork) {
                    Text(artwork.title)
                }
            }
            .navigationTitle("Artworks")
            .navigationDestination(for: Artwork.self) { artwork in
                DetailView(artwork: artwork)
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
