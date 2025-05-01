//
//  HIghScoreView.swift
//  Adding Game
//
//  Created by Pankaj Kumar Rana on 4/30/25.
//

import SwiftUI
import SwiftData

struct HighScoreView: View {
//    @Environment(HighScoreViewModel.self) private var highScoreVM: HighScoreViewModel
    @Query( sort: [SortDescriptor(\HighScoreEntity.score, order: .reverse)]) private var highScores: [HighScoreEntity]
    
    
    @Environment(\.modelContext) var modelContext
    var body: some View {
        ZStack {
            HighScoreBackgroundView()
            
            VStack {
                HighScoreTitle()

                List {
                    ForEach(Array(highScores.enumerated()), id: \.offset) { index, entity in
                        
                        RankScoreView(
                            rank: index + 1,
                            score: Int64(Int(entity.score)),
                            entity: entity)
                        
                    }
                    .onDelete(perform: deleteScore)
                    .listRowBackground(Color.black)
                }.listStyle(.plain)
                
                Image("creature0")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            }
        }
    }
    
    
    func deleteScore( indexSet: IndexSet) {
        for index in indexSet {
            // Model Content
            
            modelContext.delete(highScores[index])
        }
    }
}

struct RankScoreView: View {
    let rank: Int
    let score: Int64
    let entity: HighScoreEntity
    let scoreColors: [Color] = [
        .blue, .pink, .purple, .yellow, .orange
    ]
    var color: Color {
        scoreColors[(rank - 1) % scoreColors.count]
    }
    @State private var editMode = false
     
//    @Environment(HighScoreViewModel.self) private var highScoreVM: HighScoreViewModel
    
    @Query( sort: [SortDescriptor(\HighScoreEntity.score, order: .reverse)]) private var highScores: [HighScoreEntity]
    
    @Environment(\.modelContext)  var modelContext
    
    @State private var name: String = ""
    @State private var save = false
    
    var body: some View {
        VStack {
            if editMode{
                HStack {
                    TextField(entity.name , text: $name)
                        .padding()
                        .background(Color.green.gradient)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                        .cornerRadius(10)
                    
                    Button(action: {
//                        highScoreVM.updateHighScore(entity: entity, name: name.isEmpty ? (entity.name ?? "Anon") : name)
                        
                        /// Update this
//                        entity.name = name.isEmpty ? (entity.name) : name
                        entity.name = name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? entity.name : name

                        
                        do {
                            try modelContext.save()
                        } catch {
                            print("Update failer..")
                        }
                        withAnimation {
                            editMode.toggle()
                        }
                    }, label: {
                        Text("Save")
                            .foregroundStyle(.white)
                            .padding()
                            .background(Color.red.gradient)
                            .cornerRadius(10)
                    })
                }
            } else {
                HStack {
                    Text(rank.ordinal)
                        .frame(maxWidth: .infinity)
                    
                    Text("\(score)")
                        .frame(maxWidth: .infinity)
                    
                    Text(entity.name.uppercased())
                        .frame(maxWidth: .infinity)
                }
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundStyle(color)
                .onTapGesture {
                    withAnimation {
                        editMode.toggle()
                    }
                }
            }
        }
    }
}

#Preview {
    HighScoreView()
        .modelContainer(for: HighScoreEntity.self)
//        .environment(HighScoreViewModel())
}
