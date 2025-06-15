//
//  ContentView.swift
//  Flashcard
//
//  Created by Pankaj Kumar Rana on 6/10/25.
//

import SwiftUI

struct TopicView: View {
    var flashCardViewModel = FlashCardViewModel()
    
    var body: some View {
        NavigationStack {
            List(flashCardViewModel.flashCardModels) { flashCardModel in
                NavigationLink {
                    QuestionsView(questionModels: flashCardModel.questionModel, topic: flashCardModel.topic, numberOfQuestions: flashCardModel.numberOfQuestions)
                        .navigationBarBackButtonHidden()
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    FlashItemRow(flashcardModel: flashCardModel)
                }

            }
            .navigationTitle("FlashCard")
        }
    }
}

#Preview {
    TopicView()
}
