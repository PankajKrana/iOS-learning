//
//  FlashCardViewModel.swift
//  Flashcard
//
//  Created by Pankaj Kumar Rana on 6/11/25.
//

import Foundation


@Observable
class FlashCardViewModel {
    var flashCardModels: [FlashcardModel] = [
        .init(
            topic: "Countries",
            topicDescription: "Explore geographical knowledge",
            topicImageName: .bigBen,
            questionModel: QuestionViewModel.countryQuestionModels
        ),
        .init(
            topic: "Movies",
            topicDescription: "Test your movie knowledge",
            topicImageName: .moviesTopic,
            questionModel: QuestionViewModel.movieTriviaModels
        ),
        .init(
            topic: "Spanish Greetings",
            topicDescription: "Greet in Spanish",
            topicImageName: .madrid,
            questionModel: QuestionViewModel.spanishGreetingsModels
        ),
        .init(
            topic: "Shakespeare",
            topicDescription: "Shakespeare trivia",
            topicImageName: .shakespeare,
            questionModel: QuestionViewModel.shakespeareTriviaQuestions
        ),

    ]
}
