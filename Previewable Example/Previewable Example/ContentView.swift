//
//  ContentView.swift
//  Previewable Example
//
//  Created by Pankaj Kumar Rana on 26/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
//    ContentView()
    @Previewable @State var isOn: Bool = false
    let msg = isOn ? "Disable Animations" : "Enable Animations"
    Toggle(isOn: $isOn) {
        Text(msg)
            .font(.title)
    }
    .padding()
    
}
