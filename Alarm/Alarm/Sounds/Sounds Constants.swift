//
//  Sounds Constants.swift
//  Alarm
//
//  Created by Pankaj Kumar Rana on 5/3/25.
//

import Foundation

enum Sounds: String, CaseIterable {
    case wake_up = "Sound Wake up"
    case lagrima = "lagrima"
    
    func formateSoundName() -> String {
        String(describing: self)
            .replacingOccurrences(of: "_", with: " ")
            .capitalized
    }
    
}
