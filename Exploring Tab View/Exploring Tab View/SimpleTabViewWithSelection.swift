//
//  SimpleTabViewWithSelection.swift
//  Exploring Tab View
//
//  Created by Pankaj Kumar Rana on 26/10/24.
//

import SwiftUI

enum WatchType {
    case watch , sleep , browse
}

struct SimpleTabViewWithSelection: View {
    @State private var selectedTab : WatchType = .watch
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Watch", systemImage: "play", value: .watch) {
                Text("Watch View")
            }
            
            Tab("sleep", systemImage: "sleep.circle", value: .sleep) {
                Text("sleep View")
            }
    
            Tab("Browse", systemImage: "square.grid.2x2", value: .watch) {
                Text("Browse View")
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    SimpleTabViewWithSelection()
}
