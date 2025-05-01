//
//  GameModel.swift
//  Shuzi
//
//  Created by Pankaj Kumar Rana on 3/26/25.
//

import Foundation


struct GameModel {
    var score: Int
    var maxTurns: Int
    var volume: Float
    var turns: Int // Turns played so for
    var answer: Int
    var alternatives: [Int] // Possible solution including answer
    
    var gameWon: Bool {
        turns >= maxTurns
    }
    
    var gameOver: Bool {
        score < 0 || gameWon
    }
    
    // Score code
    
    mutating func increaseScore() {
        score += 1
    }
    
    // Update turns
    mutating func nextTurn() {
        turns += 1
    }
    
    mutating func resetGame() {
        self = GameModel(score: 0, maxTurns: 5, volume: self.volume, turns: 0, answer: 10, alternatives: [42, 13, 7, 10].shuffled())
        
    }
    mutating func generateNewProblem() {
        
        // Create an array of four different
        // Random value between 0 and 99
        alternatives = Int.generateUniqueRandomIntegers(count: 4)
        
        // Let the last alternative be answer
        
        answer = alternatives[3]
        
        
        // Suffled the altenative so that solution appears
        // in a different position
        
        alternatives = alternatives.shuffled()
        
    }
    
    static var defaultGameModel: GameModel {
        .init(
            score: 0,
            maxTurns: 5,
            volume: 0.7,
            turns: 0,
            answer: 10,
            alternatives: [42, 13, 7, 10].shuffled())
    }
    
}

