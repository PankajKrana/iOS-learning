//
//  Max.swift
//  Shuzi
//
//  Created by Pankaj Kumar Rana on 3/26/25.
//

import Foundation

func myMax(x: Int, y: Int, z: Int) -> Int  {
    if x >= y && x >= z {
        return x
        
    } else if y >= x && y >= z {
        return y
    } else {
        return z
    }
}

/*
max(x: 3, y: 10, Z: 7) = 10
max(x: 3, y: 7, Z: 10) = 10
max(x: 7, Y: 10, Z: 3) = 10
max(x: 7, y: 3, Z: 10) = 10
max (x: 10, y: 3, Z: 7) = 10
max(x: 10, y: 7, Z: 3) = 10
max(x: 5, y: 5, Z: 5) = 5
max(x: -15, y: 15, z: 0) = 15
*/

