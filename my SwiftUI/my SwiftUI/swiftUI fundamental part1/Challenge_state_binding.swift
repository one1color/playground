import SwiftUI

struct Mood {
    var emoji: String
}

class MoodManager: ObservableObject {
    @Published var moods: [Mood] = [
        Mood(emoji: "😀"),
        Mood(emoji: "☹️"),
        Mood(emoji: "🙃"),
        Mood(emoji: "🐱"),
    ]

    func addEmoji(emoji: String) {
        moods.append(Mood(emoji: emoji))
    }
}

struct Challenge_state_binding: View {
    // MARK:- Directions
    /*
     Follow the TODO's and errors to complete this challenge and get the project compiling.
     * Figure out where to use the @State and @Binding attributes
     * Pass the right data into the `StatusControl` and `StatusIcon` views
     * Test out your solution with the Live View in the Canvas!
     */

    // MARK: TODO - These 3 properties will need an attribute added...
    @State private var name: String = ""
    @State private  var favoriteColor: Color = .green
    @State var selectedMood: Mood = MoodManager().moods[0]
    @StateObject var moodManager = MoodManager()
    @State private var newEmoji = ""

    var body: some View {
        VStack {
            // MARK: TODO - Pass the right kind of data into each initializer
            Text("Set your status:")

            StatusControl(name: $name,
                          favoriteColor: $favoriteColor,
                          selectedMood: $selectedMood,
                          moodManager: moodManager)
                .padding()

            StatusIcon(name: $name, favoriteColor: $favoriteColor, mood: $selectedMood)


            Spacer()
            Text("Add new mood:")
            TextField("Enter new emoji", text: $newEmoji)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
            Button("Add Mood") {
                moodManager.addEmoji(emoji: newEmoji)
            }
        }
    }
}

struct StatusControl: View {
    // MARK: TODO - These 3 properties will need an attribute added...
    @Binding var name: String
    @Binding var favoriteColor: Color
    @Binding var selectedMood: Mood
    @ObservedObject var moodManager: MoodManager

    var body: some View {
        // MARK: TODO - Pass the right data into the views below
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            ColorPicker("Favorite Color", selection: $favoriteColor)

            Picker("Mood", selection: $selectedMood.emoji) {
                ForEach(moodManager.moods, id: \.emoji) { mood in
                    Text(mood.emoji).tag(mood.emoji)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct StatusIcon: View {
    @Binding var name: String
    @Binding var favoriteColor: Color
    @Binding var mood: Mood

    var body: some View {
        VStack {
            Text(mood.emoji)
            Text(name)
                .foregroundColor(.white)

        }
        .font(.largeTitle)
        .padding()
        .background(favoriteColor)
        .cornerRadius(12)
    }
}


#Preview {
    Challenge_state_binding()
}
