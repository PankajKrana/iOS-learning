//
//  NumericExtension.swift
//  Adding Game
//
//  Created by Pankaj Kumar Rana on 4/30/25.
//

import Foundation

let ordinalFormatter: NumberFormatter = {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .ordinal
    
    return numberFormatter
}()

extension Numeric {
    var ordinal:String {
        return ordinalFormatter.string(for: self) ?? String(describing: self)
    }
}
