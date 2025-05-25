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
    
    mutating func applyDesignPattern(
        row: Int,
        col: Int,
        designType: DesignType,
        swapXY: Bool
    ) {
        
        if self.creatures[row][col] == 0 {
            for offset in designType.offsetDesign {
                let dx = swapXY ? offset.x : offset.y
                let dy = swapXY ? offset.y : offset.x
                
                safelyAssignCreatureState(
                    i: row + dx,
                    j: col + dy,
                    state: 1
                )
            }
        }
    }
    
    mutating func newGeneration(){
        var newCreature = self.creatures
        
        for row in 0..<gridSize{
            for col in 0..<gridSize {
                let liveNeighbors = countLiveNeighbours(row: row, col: col)
                // Apply rules
                
                // Living creature either dies from loneliness or overcrowded
                if self.creatures[row][col] == 1 {
                    if liveNeighbors < 2 || liveNeighbors > 3 {
                        newCreature[row][col] = 0 // Creature dies
                    }
                } else { // Case where there is no creatures present
                    // Creature is born?
                    if liveNeighbors == 3 {
                        newCreature[row][col] = 1
                    }
                }
            }
        }
        
        self.creatures = newCreature
    }
    
    
}

