//
//  RawItem.swift
//  List Example
//
//  Created by Pankaj Kumar Rana on 18/10/24.
//

import SwiftUI

struct RowItem: View {
    let person: Person
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 3){
                Text(person.name.capitalized)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                Text(person.hobby.capitalized)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.orange)
                
            }
            Spacer()
            
            if let hobbyImage =  person.hobbyImage{
                Image(systemName: hobbyImage)
                    .foregroundColor(.red)
                    .padding()
                    .background(Circle().stroke(.green))
                
            }
        }
        .padding()
        .background(Color.black
            .cornerRadius(10))

    }
}

#Preview {
    RowItem(person:
            .init(
        name: "Bert",
        hobby: "Baseball",
        hobbyImage: "figure.american.football")
    )
    .padding()
}
