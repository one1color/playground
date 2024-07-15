
import SwiftUI

struct MovieRow: View {
    let movie: Movie
    @ObservedObject var lookAndFeelStore: LookAndFeelStore

    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.title2)
                    .fontWeight(.light)
                Text(movie.genre.rawValue)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                RatingView(rating: movie.rating, lookAndFeelStore: lookAndFeelStore)
            }
        }
    }
}
