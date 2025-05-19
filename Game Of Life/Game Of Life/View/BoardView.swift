//
//  BoardView.swift
//  Game Of Life
//
//  Created by Pankaj Kumar Rana on 5/19/25.
//
import SwiftUI

struct BoardView: View {
    var body: some View {
        Rectangle()
            .fill(.blue)
            .aspectRatio(1, contentMode: .fit)
            .padding(.horizontal)
            .overlay {
                Text("Board View")
                    .foregroundStyle(.white)
                    .bold()
            }
        
    }
}


#Preview {
    BoardView()
}
