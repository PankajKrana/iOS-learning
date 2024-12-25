//
//  ContentView.swift
//  CodeSnippets
//
//  Created by Pankaj Kumar Rana on 11/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color
                .blue
                .opacity(0.3)
                .ignoresSafeArea()
            
            Text("HI there")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.1)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
