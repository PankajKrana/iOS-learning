//
//  AdditionGameView.swift
//  Adding Game
//
//  Created by Pankaj Kumar Rana on 4/30/25.
//

import SwiftUI
import SwiftData

struct AdditionGameView: View {
    private var gameVM = AdditionGameViewModel()
    
//    @Environment(HighScoreViewModel.self) private var highScoreVM: HighScoreViewModel
    @Query( sort: [SortDescriptor(\HighScoreEntity.score, order: .reverse)]) private var highScores: [HighScoreEntity]
        
    var minHighScore: Int? {
        if highScores.isEmpty {
            return nil
        } else {
            return highScores .last?.score
        }
    }

    let Max_Num_HighScore = 100
    
    @State private var highScoreViewIsPresented = false
    
    @State private var name: String = ""
    
    var showHighScore: Bool {
        gameVM.gameOver &&
            isNewHighScore( score: gameVM.score)
    }
    
    // TODO: Update this once
    // we add the high score view model
    
    var showGameOverView: Bool {
        gameVM.gameOver
    }
    
    var body: some View {
        ZStack {
            GameBackgroundView()
            
            VStack {
                ScoreLivesView(
                    score: gameVM.score,
                    lives: gameVM.gameModel.lives,
                    maxLives: 3,
                    level: gameVM.gameModel.level)

                Spacer()
                
                BubbleView(
                    textColor: .white,
                    bgColor: Color.purple.opacity(0.7),
                    name: "bubble3",
                    text: "\(gameVM.number1) + \(gameVM.number2)")
                
                Spacer()
                
                OptionsView(gameVM: gameVM)
            }
            .padding()
            .blur(radius: showGameOverView ? 5 : 0)
            .disabled( showGameOverView)
            
            GameOverView()
                .padding()
                .blur(radius: showGameOverView ? 0 : 30)
                .opacity(showGameOverView ? 1 : 0)
                .disabled( !showGameOverView)
                .onTapGesture {
                    gameVM.reset()
                }
                            
        }
        .fullScreenCover(isPresented: $highScoreViewIsPresented, onDismiss: {
            gameVM.reset()
        }) {
            EnterNewHighScoreView(
                score: gameVM.score,
                name: $name,
                isPresented: $highScoreViewIsPresented
            )

        }
        
        .onChange(of: showHighScore) {
            highScoreViewIsPresented = showHighScore
        }
        
    }
    
    func isNewHighScore( score: Int) -> Bool {
        if score <= 0 {
            return false
        } else if let minHighScore {
            return minHighScore < score || highScores.count <= Max_Num_HighScore
        } else {
            return true
        }
    }

}

#Preview {
    AdditionGameView()
        .modelContainer(for: HighScoreEntity.self )
//        .environment(HighScoreViewModel())
}
