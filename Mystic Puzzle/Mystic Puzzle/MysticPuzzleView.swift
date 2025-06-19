//
//  ContentView.swift
//  Mystic Puzzle
//
//  Created by Pankaj Kumar Rana on 6/17/25.
//

import SwiftUI

struct MysticPuzzleView: View {
    @StateObject var mysticPuzzleViewModel: MysticPuzzleViewModel = MysticPuzzleViewModel()
    let title = "Mystic Puzzle "
    let titleDimension:CGFloat = 70
    var body: some View {
        ZStack {
            // background color
            Color(.blue).opacity(0.3).ignoresSafeArea()
            
            VStack {
                Text( title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                ZStack {
                    
                    let tiles = mysticPuzzleViewModel.mysticPuzzleModel.tiles
                    
                    ForEach(tiles) { tile in
                        TitleView(titleNumber: tile.value, titleDimension: titleDimension, offset: tile.currentPoint)
                        
                    }
                    
                }
            }
        }
    }
}

#Preview {
    MysticPuzzleView()
}

struct TitleView: View {
    let titleNumber: Int
    let titleDimension: CGFloat
    let offset: CGPoint
    let somePadding: CGFloat = 3
    let digitRasizeFactor: CGFloat = 5/2

    var body: some View {
        let direction = offset * titleDimension
        let deltaX = direction.x + titleDimension / 2
        let deltaY = direction.y - 3 * titleDimension / 2
        
        Image("digit\(titleNumber)")
            .resizable()
            .renderingMode(.template)
            .foregroundStyle(.red)
            .aspectRatio(contentMode: .fit)
            .frame(width: titleDimension, height: titleDimension)
            .padding()
            .background(
                Color.gray.frame(width: titleDimension - somePadding, height: titleDimension - somePadding)
                    .cornerRadius(10)
            )
            .offset(x: deltaX,
                    y: deltaY)
            .shadow(color: .black, radius: 1, x: 1, y: 1)

    }
}
