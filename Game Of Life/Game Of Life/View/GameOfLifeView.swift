//
//  ContentView.swift
//  Game Of Life
//
//  Created by Pankaj Kumar Rana on 5/19/25.
//

import SwiftUI

struct GameOfLifeView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                // Title
                TitleView()
                Spacer()
                
                // Boards
                BoardView()
                
                Spacer()
                
                // Control
                
                ControleView()
            }
            .padding()
        }
    }
}


 
#Preview("Light Mode") {
    GameOfLifeView()
        .preferredColorScheme(.light)
    
}


#Preview("Dark Mode") {
    GameOfLifeView()
        .preferredColorScheme(.dark)
}
