//
//  GameOverView.swift
//  Shuzi
//
//  Created by Pankaj Kumar Rana on 3/27/25.
//

import SwiftUI

struct GameOverView: View {
    @Environment(GameViewModel.self) var gVM
    
    let color: Color
    
    var body: some View {
        ZStack {
            Image([.china1, .china2, .china3, .china4, .china5, .china6, .china7].randomElement()!)
            .resizable()
            .scaledToFit()
            .ignoresSafeArea()
            
            VStack {
                VStack{
                    Text("Game Over!")
                    Text("You solved \(gVM.gameModel.score) out of \(gVM.gameModel.maxTurns)!")
                    Text("Tap for a new game")
                        .fontWeight(.thin)
                    
                }
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(color)
                .padding()
                .background(Material.ultraThin, in: RoundedRectangle(cornerRadius: 8))
                
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(color, lineWidth: 5)
                }
                
                Spacer()

            }
            .padding()
        }
        .onTapGesture {
            gVM.gameModel.resetGame()
        }
    }
}

#Preview {
    GameOverView(color: .green)
        .environment(GameViewModel())
}
