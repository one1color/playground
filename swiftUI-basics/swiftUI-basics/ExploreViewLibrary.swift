import SwiftUI

struct ExploreViewLibrary: View {
    let text: [String] = ["Exploring Views", "Hello World"]
    @State var index = 0
    @State private var bgColor = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    @State private var date = Date()
    @State private var speed = 50.0
    @State private var isEditing = false

    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
                VStack(spacing: 30) {
                    Form {
                        Section(header: Text("Notifications")) {
                            Text(text[index])
                                .font(.largeTitle)
                                .padding()

                            Button("A button") {
                                withAnimation{
                                    index = (index + 1) % text.count
                                }
                            }
                        }

                        Section(header: Text("User Profiles")) {
                            ColorPicker("Title", selection: $bgColor)

                            DatePicker(selection: $date, label:  {Text("Date")})

                            Slider(
                                value: $speed,
                                in: 0...100,
                                onEditingChanged: { editing in
                                    isEditing = editing
                                }
                            )
                            Text("\(speed)")
                                .foregroundColor(isEditing ? .red : .blue)
                        }
                    }
                }
                .padding()
        }
    }
}

#Preview {
    ExploreViewLibrary()
}
