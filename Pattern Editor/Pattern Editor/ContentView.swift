//
//  ContentView.swift
//  Pattern Editor
//
//  Created by Pankaj Kumar Rana on 5/22/25.
//

import SwiftUI

struct ContentView: View {
    let n : Int
    @State private var name: String = "pattern"
    @State private var pattern: [[Bool]]
    
    init(n: Int) {
        self.n = n
        self._pattern = State (initialValue: Array(repeating: Array(
            repeating: false,
            count: n
        ),count: n))
    }
    
    var body: some View {
        HStack {
            // TODO: Pattern Editer
            
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView(n: 25)
}
