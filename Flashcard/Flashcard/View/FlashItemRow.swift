//
//  FlashItemRow.swift
//  Flashcard
//
//  Created by Pankaj Kumar Rana on 6/13/25.
//

import SwiftUI

struct FlashItemRow: View {
    let flashcardModel: FlashcardModel
    var imageSize = 60.0
    
    var body: some View {
        HStack {
            VStack( spacing: 10) {
                Text(flashcardModel.topic)
                    .font(.body)
                    .fontWeight(.semibold)
                Text(flashcardModel.topicDescription)
                    .font(.caption)
                    .fontWeight(.light)
                
            }
            
            Spacer()
            
            Image(flashcardModel.topicImageName)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize)
                .clipShape(.rect(cornerRadius: 10))
        }
    }
}

#Preview {
    FlashItemRow(flashcardModel: .init(
        topic: "Countries",
        topicDescription: "Explore geographical knowledge",
        topicImageName: .bigBen,
        questionModel: QuestionViewModel.countryQuestionModels
    ))
    .padding()
}
