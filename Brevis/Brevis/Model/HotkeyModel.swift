//
//  HotkeyModel 2.swift
//  Brevis
//
//  Created by Pankaj Kumar Rana on 3/25/25.
//


import Foundation

struct HotkeyModel: Identifiable {
    let id =  UUID()
    
    let modifiers: [Modifier]
    let character: String
    let text: String
    
    
    //TODO: Update description
    var description: String {
        var result = ""
        for modifier in modifiers {
            result += modifier.rawValue
        }
        
        result += " \(character.capitalized)"

        return result
    }
}
