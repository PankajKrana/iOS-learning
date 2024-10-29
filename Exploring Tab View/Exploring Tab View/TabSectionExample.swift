//
//  TabSectionExample.swift
//  Exploring Tab View
//
//  Created by Pankaj Kumar Rana on 26/10/24.
//

import SwiftUI

struct TabSectionExample: View {
    var body: some View {
        TabView {
            Tab("Watch", systemImage: "play") {
                Text("Watching ")
            }
            Tab("Sleep", systemImage: "sleep.circle") {
                Text("Sleeping")
            }
            TabSection("Collection") {
                Tab("Record Collection", systemImage: "play") {
                    Text("Watching ")
                }
                Tab("Stamp Collection", systemImage: "sleep.circle") {
                    Text("Sleeping")
                }
                

            }
            
            TabSection("Hobbies") {
                Tab("Tab 1", systemImage: "person") {
                    Text("Tab 1 View ")
                }
                Tab("Tab 2", systemImage: "trash") {
                    Text("Tab 2 View")
                }

            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    TabSectionExample()
}
