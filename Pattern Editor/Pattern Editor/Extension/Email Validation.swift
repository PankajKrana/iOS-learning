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
        
        return true
        // TODO: Text for:
        /// 1. Not a swift keyword
        /// 2. Starts with the latter or underscore
        /// 3. Remaining character is latter, digits or underscore
        /// 4.
    }
}
