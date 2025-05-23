//
//  Email Validation.swift
//  Pattern Editor
//
//  Created by Pankaj Kumar Rana on 5/22/25.
//


extension String {
    var isValidIdentifier: Bool {
        // Non-empty: the string must be non-empty
        
        guard !self.isEmpty else { return false }
        
        // Start with a letter or underscore
        let firstCharacter = self.first!
        if !firstCharacter.isLetter && firstCharacter != "_" {
            return false
        }
        
        // Remaining character is letter , digits or underscore
        let validCharacter = self
            .allSatisfy {
                $0.isLetter || $0.isNumber || $0 == "_"
            }
        
        if !validCharacter {
            return false 
        }
        
        
        return true
    
    }
}
