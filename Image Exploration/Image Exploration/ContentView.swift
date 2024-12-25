//
//  ContentView.swift
//  Image Exploration
//
//  Created by Pankaj Kumar Rana on 11/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .onAppear {
                for i in 1...48  {
                    print("\tcase img\(i)")
                }
            }
    }
}

#Preview {
    ContentView()
}
