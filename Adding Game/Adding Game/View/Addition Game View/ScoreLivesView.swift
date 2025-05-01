//
//  ScoreLivesView.swift
//  Adding Game
//
//  Created by Pankaj Kumar Rana on 4/30/25.
//

import SwiftUI

struct ScoreLivesView: View {
    let score: Int
    let lives: Int
    let maxLives: Int
    let level: Int
    
    var body: some View {
        HStack {
            
            TitleValueView(
                title: "Score",
                value: score
            )

            Spacer()
            
            TitleValueView(
                title: "Level",
                value: level
            )
            
            Spacer()
            
            LivesView(
                imageName: .creature1,
                numLives: lives,
                maxLives: maxLives
            )
        }
        .padding()
    }
}

#Preview {
    ZStack {
        GameBackgroundView()
        ScoreLivesView(
            score: 22,
            lives: 2,
            maxLives: 3,
            level: 7)
    }
}
