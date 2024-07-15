import SwiftUI

struct MovieList: View {
    @StateObject var movieStore = MovieStore()
    @State private var isAddPresented = false
    //TODO: add a new state property to track whether the look and feel view is shown
    @State private var isSettingPresented = false
    @EnvironmentObject var userStore: UserStore
    //TODO: add a new property to reference the LookAndFeelStore
    @ObservedObject var lookAndFeelStore = LookAndFeelStore()

    var body: some View {
        NavigationView {
            List {
                ForEach(movieStore.movies, id: \.title) {
                    MovieRow(movie: $0, lookAndFeelStore: lookAndFeelStore)
                }
            }
            .sheet(isPresented: $isAddPresented) {
                AddMovie(movieStore: movieStore, showModal: $isAddPresented, lookAndFeelStore: lookAndFeelStore)
            }
            .sheet(isPresented: $isSettingPresented) {
                LookAndFeelView(lookAndFeelStore: lookAndFeelStore, showModal: $isSettingPresented)
            }
            //TODO: you'll need to present the LookAndFeelDialogView..
            .navigationBarTitle(Text("Fave Flicks"))
            .navigationBarItems(
                leading:
                    NavigationLink(destination: UserView()) {
                        HStack {
                            Text(userStore.currentUserInfo.userName)
                            Image(systemName: "person.fill")
                        }
                    },
                trailing:
                    //TODO: add a new button to show the look and feel settings
                HStack {
                    Button(action: { isSettingPresented.toggle() }) {
                        Image(systemName: "gear")
                    }

                    Button(action: { isAddPresented.toggle() }) {
                        Image(systemName: "plus")
                    }
                }

            )
        }
        //TODO: make sure to update the accent color
        .accentColor(lookAndFeelStore.currentLookAndFeelInfo.accentColor)


    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList(movieStore: MovieStore())
            .environmentObject(UserStore())
    }
}
