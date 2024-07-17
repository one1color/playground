//
//  RowItem.swift
//  swiftUI-basics
//
//  Created by koki isshiki on 17.07.24.
//

import SwiftUI

struct RowItem: View {
    let person: Person
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 3) {
                Text(person.name.capitalized)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                Text(person.hobby!.capitalized)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.orange)
            }
            Spacer()
            if let hobbyImage = person.hobbyImage {
                Image(systemName: hobbyImage)
                    .foregroundStyle(.red)
                    .padding()
                    .background(Circle().stroke(.red))
            }
        }        
        .padding()
        .background(Color.black
            .cornerRadius(10))
    }
}

#Preview {
    RowItem(person: .init(name: "Bert", hobby: "baseball", hobbyImage: "figure.baseball"))
        .padding()
}
