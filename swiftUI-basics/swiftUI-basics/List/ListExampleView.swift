//
//  ListExampleView.swift
//  swiftUI-basics
//
//  Created by koki isshiki on 17.07.24.
//

import SwiftUI

struct ListExampleView: View {
    let people: [Person] = [
        .init(name: "Bert", hobby: "baseball", hobbyImage: "figure.baseball"),
        .init(name: "Ernie", hobby: "sky dives", hobbyImage: nil),
        .init(name: "Big Bird", hobby: "criket", hobbyImage: "figure.cricket"),
        .init(name: "Cookie", hobby: "skateboard", hobbyImage: nil)
    ]
    var body: some View {
        List {
            ForEach(people) { person in
                RowItem(person: person)
                    .listRowSeparator(.hidden)
            }
        }
    }
}

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let hobby: String?
    let hobbyImage: String?
}

#Preview {
    ListExampleView()
}
