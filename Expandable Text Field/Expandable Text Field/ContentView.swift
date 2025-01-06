//
//  ContentView.swift
//  Expandable Text Field
//
//  Created by Pankaj on 06/01/2025.

//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
        ExpandableTextField(
            value: $text,
            placeholder: "Type something...",
            lineLimit: 10
        )
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}

#Preview {
    ContentView()
}
