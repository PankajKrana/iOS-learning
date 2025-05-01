//
//  GameOverView.swift
//  Adding Game
//
//  Created by Pankaj Kumar Rana on 4/30/25.
//

import SwiftUI

struct GameOverView: View {
    var body: some View {
        HStack {
            Label(title: {
                Text("Game Over")
                    .multilineTextAlignment(.center)
                Image(systemName: "arrowshape.turn.up.backward.circle.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.yellow)
            }, icon: {
                Image( Creatures.creature1.rawValue)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .scaledToFill()
                    .padding()
                    .background(Color.green)
                    .clipShape(Circle())
            })
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(50)
            .shadow(radius: 10)
            
        }
    }
}

#Preview {
    GameOverView()
}
