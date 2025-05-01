//
//  HighScoreEntity.swift
//  Adding Game
//
//  Created by Pankaj Kumar Rana on 5/1/25.
//

import Foundation
import SwiftData

@Model
class HighScoreEntity: Identifiable {
    let id = UUID()
    var name: String
    let score: Int
    
    init(name: String, score: Int) {
        self.name = name
        self.score = score
    }
    
    
}
