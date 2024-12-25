//
//  ContentView.swift
//  Navigation Zoom Transition
//
//  Created by Pankaj Kumar Rana on 11/25/24.
//

import SwiftUI

struct ContentView: View {
    @Namespace private var namespace
    var body: some View {
        NavigationStack {
            NavigationLink {
                ZStack{
                    Color.cyan.opacity(0.3).ignoresSafeArea()
                    Text("Destination View")
                        .font(.title)
                        .navigationTransition(.zoom(sourceID: "idHello", in: namespace))
                }
            } label: {
                Text("Hello, world!")
                    .font(.largeTitle)
                    .bold()
                    .fontWidth(.expanded)
                    .matchedTransitionSource(id: "idHello", in: namespace)
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
