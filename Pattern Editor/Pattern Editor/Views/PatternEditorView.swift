//
//  PatternEditorView.swift
//  Pattern Editor
//
//  Created by Pankaj Kumar Rana on 5/22/25.
//

import SwiftUI

struct PatternEditorView: View {
    let n: Int
    @Binding var name: String
    @Binding var pattern: [[Bool]]
    
    var body: some View {
        VStack {
            Text("Pattern Editor")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Tap a cell to toggle it's state")
                .font(.title2)
                .foregroundStyle(.secondary)
            
            VStack(alignment: .trailing) {
                HStack {
                    Text("Name: ")
                    TextField("Enter Pattern Name", text: $name)
                        .padding(6)
                        .overlay {
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(name.isEmpty ? Color.red : Color.gray , lineWidth: name.isEmpty ? 3 : 1)
                        }.frame(maxWidth: 300)
                    
                    Button("Clear", systemImage: "arrow.uturn.backward") {
                        withAnimation {
                            pattern = Array(repeating: Array(repeating: false, count: n), count: n)
                        }
                    }.buttonStyle(.borderedProminent)
                        .tint(.purple)
                        .padding()
                }.font(.title2)
                
            // TODO: Add Identifier validation
                if !name.isValidIdentifier {
                    Text("Invalid Identifier")
                        .font(.callout)
                        .bold()
                        .foregroundStyle(.red)
                        .padding([.horizontal, .bottom])
                }
                
            }
            
            PatternGrid(
                n: n,
                pattern: $pattern,
                enabled: name.isValidIdentifier
            )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    PatternEditorView(n: 15, name: .constant("Pattern"), pattern: .constant(Array(repeating: Array(repeating: false, count: 15), count: 15)))
}




