//
//  NumberOptionVIew.swift
//  Shuzi
//
//  Created by Pankaj Kumar Rana on 3/27/25.
//

import SwiftUI

struct NumberOptionView: View {
    let numbers: [Int]
    let answer: Int
    
    var body: some View {
        VStack {
            HStack {
                CircleView(
                    value: numbers[0],
                    answer: answer,
                    color: .blue
                )
                
                CircleView(
                    value: numbers[1],
                    answer: answer,
                    color: .green
                )
            }
            
            HStack {
                CircleView(
                    value: numbers[2],
                    answer: answer,
                    color: .red
                )
                
                CircleView(
                    value: numbers[3],
                    answer: answer,
                    color: .orange
                )
            }

        }
    }
}

struct CircleView: View {
    let value: Int
    let answer: Int
    let color: Color
    
    @Environment (GameViewModel.self) var gVM
    
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundStyle(color.gradient)
            Text("\(value)")
        }
        .onTapGesture {
            if  answer == value {
                self.gVM.gameModel.increaseScore()
                self.gVM.playNumber(num: answer)
            } else {
                self.gVM.incorrectSound()
            }
            // Next turn
            self.gVM.gameModel.nextTurn()
        }
    }
}

#Preview {
    NumberOptionView(numbers: [42,13,10,20], answer: 10)
        .environment(GameViewModel())
        .padding()
}
