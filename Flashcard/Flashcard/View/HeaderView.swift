//
//  HeaderView.swift
//  Flashcard
//
//  Created by Pankaj Kumar Rana on 6/13/25.
//

import SwiftUI

struct HeaderView: View {
    let topic: String
    let questionNumber: Int
    let numberOfQuestions: Int
    let colorBG: Color
    let colorFill: Color
    let dismissFunc: () -> Void
    let barWidth = 10.0
    let unicodeX = "\u{2715}"
    
    var percentage: CGFloat {
        CGFloat(questionNumber) / CGFloat(numberOfQuestions)
    }
    
    var topicFont: Font{
        UIDevice.isIPad ? .largeTitle : .body
    }
    
    var numQuestionText: String {
        "\(questionNumber) out of \(numberOfQuestions)"
    }
    
    var numQuestionFont: Font {
        UIDevice.isIPad ? .largeTitle : .caption

    }
    var body: some View {
        VStack(spacing: 5) {
            // First Row
            HStack {
                Text("\(topic)")
                    .font(topicFont)
                
                Spacer()
                
                Text(numQuestionText)
                    .font(numQuestionFont)
            }
            .fontWeight(.bold)
            
            // Second Row
            HStack {
                Button(
                    action: {
                        dismissFunc()
                    },
                    label: {
                        Text( unicodeX)
                            .font(.largeTitle)
                            .fontWeight(.thin)
                            .foregroundStyle(colorBG)
                        
                })
                
                
                FillBarView(
                    barWidth: barWidth,
                    colorBG: .gray,
                    colorFill: .purple,
                    percentage: percentage
                )

            }
        }
    }
}

#Preview {
    HeaderView(
        topic: "Countries",
        questionNumber: 3,
        numberOfQuestions: 10,
        colorBG: .gray,
        colorFill: .purple,
        dismissFunc: {
        }
    ).padding()
}
