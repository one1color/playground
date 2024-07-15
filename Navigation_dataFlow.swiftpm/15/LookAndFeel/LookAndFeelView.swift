import SwiftUI


let symbols = ["star", "rectangle", "triangle", "circle"]


struct LookAndFeelView: View {
    //TODO: reference the LookAndFeelStore here
    //TODO: You'll also need some @State properties here - views below need bindings
    @State private var accentColor = Color.red
    @State private var symbolName: String = ""
    @ObservedObject var lookAndFeelStore: LookAndFeelStore
    @Binding var showModal: Bool

    var body: some View {
        NavigationView {
            Form {
                Section("Accent Color") {
                    ColorPicker("Accent Color", selection: $accentColor)
                }
                Section("Rating Symbol") {
                    Picker(selection: $symbolName, label: Text("Symbol")) {
                        ForEach(symbols, id: \.self) {
                            Text($0)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Look and Feel"), displayMode: .inline)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        updateLookAndFeelInfo()
                    })
                {
                    Text("Update")
                }
            )
        }
        //TODO: like the UserView, be sure to update thing in onAppear
        .onAppear {
            accentColor = lookAndFeelStore.currentLookAndFeelInfo.accentColor
            symbolName = lookAndFeelStore.currentLookAndFeelInfo.symbolName
        }
    }


    func updateLookAndFeelInfo() {
        //TODO: update the store here
        let newLookAndFeelStore = LookAndFeelInfo(accentColor: accentColor, symbolName: symbolName)
        lookAndFeelStore.currentLookAndFeelInfo = newLookAndFeelStore
        showModal.toggle()
    }
}

struct LookAndFeelView_Previews: PreviewProvider {
    static var previews: some View {
        LookAndFeelView(lookAndFeelStore: LookAndFeelStore(), showModal: .constant(true))
    }
}
