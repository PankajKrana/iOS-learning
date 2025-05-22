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
            PatternEditor()
            
            CodePreview()
                        
        }
        .padding()
        .frame(minWidth: 800, minHeight: 600)
    }
}

struct PatternEditor: View {
    var body: some View {
        // TODO: Pattern Editer
        Text("Pattern Editor")

    }
}

struct CodePreview: View {
    var body: some View {
        // TODO: Code Preview
        
        Text("Code Preview")

    }
}

#Preview {
    ContentView(n: 25)
}
