//
//  ContentView.swift
//  Exploring Tab View
//
//  Created by Pankaj Kumar Rana on 26/10/24.
//

import SwiftUI

struct SimpleTabView: View {
    var body: some View {
        TabView {
            Tab("Watch" , systemImage: "play") {
                Text("Watching Something")
            }
            
            Tab("Read" , systemImage: "book.pages.fill") {
                Text("Reading the Book")
            }
            Tab(role: .search) {
                Text("Search this App...")
            }

        }
        // tab view styling 
        .tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    SimpleTabView()
}
