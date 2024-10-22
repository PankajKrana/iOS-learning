//
//  ContentView.swift
//  List Example
//
//  Created by Pankaj Kumar Rana on 18/10/24.
//

import SwiftUI

let people: [Person] = [
    .init(
        name: "Bert",
        hobby: "Baseball",
        hobbyImage: "figure.american.football"),
    
    .init(
        name: "andrew",
        hobby: "archery",
        hobbyImage: nil),
    
    .init(
        name: "brew",
        hobby: "football",
        hobbyImage: "figure.australian.football"),

        .init(
            name: "peter",
            hobby: "badminton",
            hobbyImage: "figure.badminton"),

]

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let hobby: String
    let hobbyImage: String?
}

struct ContentView: View {
    var body: some View {
        List {
            ForEach(people) { person in
                RowItem(person: person)}
        }
    }
}





#Preview {
    ContentView()
}
