//
//  ContentView.swift
//  my SwiftUI
//
//  Created by koki isshiki on 27.06.24.
//

import SwiftUI

struct ContentView_wwdc: View {
    @State private var pets = Pet.samplePets

    var body: some View {
        Button("Add Pet") {
            pets.append(Pet("Toby", kind: .dog, trick: "WWDC Presenter"))
        }

        List(pets) { pet in
            HStack {
                Label(pet.name, systemImage: pet.kind.systemImage)

                Spacer()

                Text(pet.trick)
            }.swipeActions(edge: .leading) {
                Button("Award", systemImage: "trophy") {
                    print("hello")
                }
                .tint(.orange)

                ShareLink(item: pet, preview: SharePreview("Pet", image: Image(pet.name)))
            }
        }
    }
}

struct Pet: Identifiable {
    enum Kind {
        case cat
        case dog
        case fish
        case bird
        case lizard
        case turtle
        case rabbit
        case bug

        var systemImage: String {
            switch self {
            case .cat: return "cat.fill"
            case .dog: return "dog.fill"
            case .fish: return "fish.fill"
            case .bird: return "bird.fill"
            case .lizard: return "lizard.fill"
            case .turtle: return "tortoise.fill"
            case .rabbit: return "rabbit.fill"
            case .bug: return "ant.fill"
            }
        }
    }

    let id = UUID()
    var name: String
    var kind: Kind
    var trick: String

    init(_ name: String, kind: Kind, trick: String) {
        self.name = name
        self.kind = kind
        self.trick = trick
    }

    static let samplePets = [
        Pet("Whiskers", kind: .cat, trick: "Tightrope walking"),
        Pet("Roofus", kind: .dog, trick: "Home runs"),
        Pet("Bubbles", kind: .fish, trick: "100m freestyle"),
        Pet("Mango", kind: .bird, trick: "Basketball dunk"),
        Pet("Ziggy", kind: .lizard, trick: "Parkour"),
        Pet("Sheldon", kind: .turtle, trick: "Kickflip"),
        Pet("Chirpy", kind: .bug, trick: "Canon in D")
    ]
}

extension Pet: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation { $0.name }
    }
}
#Preview {
    ContentView_wwdc()
}
