//
//  OptionsView.swift
//  Adding Game
//
//  Created by Pankaj Kumar Rana on 4/30/25.
//

import SwiftUI

struct OptionsView: View {
    let gameVM: AdditionGameViewModel
    let columns = [
        GridItem( .flexible()),
        GridItem( .flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            
            ForEach(gameVM.possibleSolutions, id: \.self) { option in
                
//                let cheatColor: Color = option == gameVM.answer ? .red : .black
                
                SelectButton(option: option, gameVM: gameVM)
                
                

            }
        }
    }
}

struct SelectButton: View {
    let option: Int
    @State private var selectedOption: Int? = nil
    
    let gameVM: AdditionGameViewModel
    
    var isSelected: Bool {
        selectedOption == option
    }
    
    var color: Color {
        isSelected ? getRandomColor() :
            .purple.opacity(0.7)
    }
    
    func getRandomColor() -> Color {
        [.green.opacity(0.7), .red
                      , .blue.opacity(0.5)].randomElement() ?? .green.opacity(0.7)
    }
    var scale: CGFloat {
        isSelected ? 1.2 : 1.0
    }
    
    var body: some View {
        BubbleView(
            textColor: .black,
            bgColor: color,
            name: "bubble2",
            text: "\(option)")
        .scaleEffect( scale)
        .onTapGesture {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.3).repeatCount(1, autoreverses: false)
            ){
                selectedOption = option
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
                withAnimation {
                    selectedOption = nil
                }

            }
            
            withAnimation {
                if gameVM.answer == option {
                    gameVM.increaseScore()
                } else {
                    gameVM.loseLife()
                }
                gameVM.generateNumbers()
            }
        }
    }
}

#Preview {
    OptionsView(gameVM: AdditionGameViewModel())
}
