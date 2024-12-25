//
//  Pluralization Demo.swift
//  Text Exploration
//
//  Created by Pankaj Kumar Rana on 12/19/24.
//

import SwiftUI

struct Pluralization_Demo: View {
    @State private var count = 0
    let nounList = [
        "bread",
        "foot",
        "tooth",
        "salt",
        "man",
        "domino",
        "radius",
        "child",
        "woman",
        "deer",
        "oasis",
        "goose",
        "focus" ,
        "matrix",
        "fish",
        "index" ,
        "boom",
        "brush"
    ]
    
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    ForEach(nounList, id: \.self) { noun in
                        LabeledContent(noun.capitalized) {
                            Text("^[\(count) \(noun.capitalized) ](inflect: true)")
                        }
                    }
                }
                Button(
                    "increment",
                    systemImage: "plus.circle.fill",
                    action: {
                    count += 1
                })
            }
            .font(.title)
            .toolbar{
                ToolbarItem {
                    Button("Resert") {
                        count = 0
                    }
                }
            }
            .navigationBarTitle("Pluralization")
        }

    }
}

#Preview {
    Pluralization_Demo()
}
