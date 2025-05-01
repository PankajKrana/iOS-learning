//
//  String Helper Fuction.swift
//  Calculator
//
//  Created by Pankaj Kumar Rana on 2/25/25.
//

import Foundation
// Return las character if it exists
// Otherwise return an empty string
func getLastChat(str: String) -> String {
    return str.isEmpty ? "" : String(str.last!)
    
}
// Return true if last charactter of str is equal to char
func lastCharacterISEqualTo(str: String, char: String) -> Bool {
    let last = getLastChat(str: str)
    return last == char
}

func formatResult(val: Double) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    numberFormatter.maximumFractionDigits = 16
    let result = numberFormatter.string(
        from: NSNumber(value: val))
    
    return result ?? "0"
}
