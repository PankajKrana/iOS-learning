//
//  BoardModel.swift
//  Game Of Life
//
//  Created by Pankaj Kumar Rana on 5/22/25.
//

import Foundation

struct BoardModel {
    var gridSize: Int
    var creatures: [[Int]] = []
    
    init(gridSize: Int) {
        self.gridSize = gridSize
        self.randomBoard()
    }
    
    mutating func randomBoard() {
        creatures = []
        
        for _ in 0..<gridSize {
            creatures.append(Array(repeating: 0, count: gridSize)
                .map { _ in
                    Int.random(in: 0...1)
                })
        }
    }
    
    mutating func clearBpard() {
        creatures = Array(repeating: Array(repeating: 0, count: gridSize), count: gridSize)
    }
    
    func countLiveNeighbours(row: Int, col: Int) -> Int {
        let directions: [(x: Int, y: Int)] = [
            (-1,-1), (0, -1), (1, -1),
            (-1, 0), (1, 0),
            (-1,1), (0, 1), (1, 1),

        ]
        
        var count = 0
        for direction in directions {
            let newRow = (row + direction.x + gridSize) % gridSize
            let newCol = (row + direction.y + gridSize) % gridSize
            count += self.creatures[newRow][newCol]
        }
        
        return count
    }
    
     mutating func safelyAssignCreatureState(i: Int, j: Int, state: Int) {
        let safeRow = (i + gridSize) % gridSize
        let safeCol = (j + gridSize) % gridSize
        self.creatures[safeRow][safeCol]
    }
}

enum DesignType: String, CaseIterable {
    case block , beehive, load , boat, tub // Still life
    case blinker, toad, beacon, petaDecathlon // Oscillators
    case glider, LWSS, MWSS, HWSS // Space Ship
    
    var offsetDesign: [(x: Int, y: Int)] {
        switch self {
        case .block: return [
            (0, -1 ),
            (1, -1 ),
            (0, 0 ),
            (1, 0 ),
        ]
        case .beehive: return [
            (-1, -1 ),
            (0, -1 ),
            (-2, 0 ),
            (1, 0 ),
            (-1, 1 ),
            (0, 1 ),
        ]
            
            
    }
}
