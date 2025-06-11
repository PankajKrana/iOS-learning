//
//  QuestionModel.swift
//  Flashcard
//
//  Created by Pankaj Kumar Rana on 6/11/25.
//

import Foundation
import SwiftUI

struct QuestionModel: Identifiable {
    let id = UUID()
    let question: String
    let questionImageName: ImageResource?
    let answer: String
    let answerImageName: ImageResource?
    
}
