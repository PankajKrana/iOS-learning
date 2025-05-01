//
//  ContentView.swift
//  Adding Game
//
//  Created by Pankaj Kumar Rana on 4/22/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            AdditionGameView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Game")
                }
            
            HighScoreView()
                .tabItem {
                    Image(systemName: "list.number")
                    Text("High Score")
                }
        }
    }
}

#Preview {
    MainView()
        .modelContainer(for: HighScoreEntity.self)
}
