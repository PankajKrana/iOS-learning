//
//  FlashcardModel.swift
//  Flashcard
//
//  Created by Pankaj Kumar Rana on 6/11/25.
//

import Foundation
import SwiftUI

struct FlashcardModel: Identifiable {
    let id = UUID()
    
    let topic: String
    let topicDescription: String
    let topicImageName: ImageResource
    let questionModel: [QuestionModel]
    
    var numberOfQuestions: Int {
        questionModel.count
    }
    
    }
