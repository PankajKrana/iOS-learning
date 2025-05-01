//
//  Randomness.swift
//  Shuzi
//
//  Created by Pankaj Kumar Rana on 3/26/25.
//

import Foundation
/*
 Homework :
 1. Implement a function
  func generateUniqueRandomIntegers(count: Int) between 0 and 99
 
 2. create an extension of Int with same functionality as part 1.
 
 */


extension Int {
  
    // random int in the range lower..upper
    // Ex: lower == 1 , upper == 2
    // Random number from 1...2
    // if count == 1:
    // possible output is [2]
    // if count == 2:
    // possible output i s[2,1] or [1,2]
    // if count == 3:
    // Impossible , upper - lower + 1 = 2 < 3
    
    
    
    static func generateUniqueRandomIntegers(count: Int, lower:Int = 0, upper: Int  = 99) ->  [Int] {
        // In case the task is impossible
        
        if count > upper - lower + 1 || lower > upper {
            return []
        }
        
        var result = [Int]()
        
        while result.count < count {
            let randomInt = Int.random(in: lower...upper)
            
            // check for uniqueness
            if !result.contains(randomInt) {
                // Good, so we can append
                result.append(randomInt)
            }
        }
        
        return result
    }
}
