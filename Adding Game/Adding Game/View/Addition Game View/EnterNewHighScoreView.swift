//
//  EnterNewHighScoreView.swift
//  Adding Game
//
//  Created by Pankaj Kumar Rana on 4/30/25.
//

import SwiftUI

struct EnterNewHighScoreView: View {
    let score: Int
    @Binding var name: String
    @Binding var isPresented: Bool
    
//    @Environment(HighScoreViewModel.self)private var highScoreVM: HighScoreViewModel
    
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        ZStack {
            BackgroundView(colorList: [.blue, .purple],opacity: 1)
            VStack {
                Text("New High Score!")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .padding()
                
                Text("\(score)")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .padding()
                
                TextField("Enter Name", text: $name)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .autocorrectionDisabled(true)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding()
                
                Button (action:{
                    name = name.isEmpty ? "Anon" : name
//                    highScoreVM.addHighScore(name: name, score: Int64(score))
//                    isPresented = false
                    
                    modelContext.insert(HighScoreEntity(name: name, score: score))
                    
                }, label: {
                    Text("Save")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(20)
                })

            }
        }
    }
}

#Preview {
    EnterNewHighScoreView(
        score: 123,
        name: .constant(""),
        isPresented: .constant(true)
    )
    .modelContainer(for: HighScoreEntity.self)
}
