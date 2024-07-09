import Combine


class UserStore: ObservableObject {
    @Published var currentUserInfo = UserInfo(userName: "Koki", favoriteGenre: .horror)
}


struct UserInfo {
    let userName: String
    let favoriteGenre: Genre
}
