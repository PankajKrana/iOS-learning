//
//  ContentView.swift
//  Animate Fonts
//
//  Created by Pankaj Kumar Rana on 04/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var largeFont = true
    
    var font: Font {
        largeFont ? .largeTitle : .caption
    }
    
    var body: some View {
        ZStack {
            Color
                .purple
                .opacity(0.7)
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                    .font(font)
                    .fontWeight(.bold)
                Spacer()
                
                Button {
                    largeFont.toggle()
                } label: {
                    Text("Click Me")
                        .font(.title)
                        .fontWeight(.semibold)
                }

            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}