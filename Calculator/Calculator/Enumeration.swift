//
//  Enumeration.swift
//  Calculator
//
//  Created by Pankaj Kumar Rana on 2/25/25.
//

import Foundation

enum Operation {
    case add , substract , multiply, divide , equal , none
    
    
}

enum CalcButton: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case substract = "-"
    case divide = "/"
    case multiply = "x"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "IMGplus.forwardslash.minus"
    case undo = "IMGarrow.counterclockwise"

}

let enumOperators: [CalcButton] = [.add, .substract, .divide, .multiply]

let multiplySymbol: String = CalcButton.multiply.rawValue
let divisionSymbole: String = CalcButton.divide.rawValue

let operators: String = "+-*\(multiplySymbol) \(divisionSymbole)"
