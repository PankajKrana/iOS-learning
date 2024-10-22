//
//  ContentView.swift
//  Exploring View
//
//  Created by Pankaj Kumar Rana on 19/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStackDemo()

        }
    }
}

struct HStackDemo: View {
    var body: some View {
        HStack (spacing: 50) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
                .rotationEffect(.degrees(45))
            
            
            Text("Hello, world!")
                .padding()
                .font(.headline)
                .fontWeight(.bold)
                .background(Color.red)
                .cornerRadius(10)
                .rotation3DEffect(Angle(degrees: 40), axis: (x: 1 , y: 0 , z: 0))
            
            Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.regular)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                .rotation3DEffect(Angle(degrees: 45), axis: (x: 2 , y: 4 , z: 2))
            
            
        }
        .padding()    }
}

#Preview {
    ContentView()
}
