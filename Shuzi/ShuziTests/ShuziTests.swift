//
//  ShuziTests.swift
//  ShuziTests
//
//  Created by Pankaj Kumar Rana on 3/26/25.
//

import XCTest
@testable import Shuzi

final class ShuziTests: XCTestCase {
    
    func testMax() throws {
        // Setup Data
        let dataArray: [(x: Int, y: Int, z: Int)] = [
            (x: 3, y: 10, z: 7),
            (x: 3, y: 7, z: 10),
            (x: 7, y: 10, z: 3),
            (x: 7, y: 3, z: 10),
            (x: 10, y: 3, z: 7),
            (x: 10, y: 7, z: 3),
            (x: 5, y: 5, z: 5),
            (x: -15, y: 15, z: 0)
        ]
        
        // Expected values
        let expectedValues = [
            10, 10, 10, 10, 10, 10, 5, 15
        ]
        
        // Test
        for (i, data) in dataArray.enumerated() {
            let expectedValue = expectedValues[i]
            let evaluatedValue = myMax(x: data.x, y: data.y, z: data.z)
            
            XCTAssertEqual(expectedValue, evaluatedValue, "Failed at index \(i) with values \(data)")
        }
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
