//
//  ContentView.swift
//  Mystic Puzzle
//
//  Created by Pankaj Kumar Rana on 6/17/25.
//

import SwiftUI
import UIKit

struct MysticPuzzleView: View {
    @StateObject var mysticPuzzleViewModel: MysticPuzzleViewModel = MysticPuzzleViewModel()
    let title = "Mystic Puzzle "
    let titleDimension:CGFloat = 70
    var body: some View {
        ZStack {
            // background color
            Image("WaterBackground").opacity(0.7).ignoresSafeArea()
            VStack {
                Text( title)
                    .font(Font.custom("ChalkboardSE", size: 48))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                ZStack {
                    
                    let tiles = mysticPuzzleViewModel.mysticPuzzleModel.tiles
                    
                    ForEach(tiles) { tile in
                        TitleView(titleNumber: tile.value, titleDimension: titleDimension, offset: tile.currentPoint)
                        
                    }
                    
                }
                .frame(width: titleDimension * 4, height: titleDimension * 4)
                .padding()
                .background(
                    Image("BlueMarbleBackground")
                        .resizable()
                        .opacity(0.9)
                )
                .cornerRadius(20)
                .padding()
                .padding(.vertical)
                .shadow(color: .black, radius: 10, x: 3, y: 3)

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
    let digitRasizeFactor: CGFloat = 0.8

    var body: some View {
        let direction = offset * titleDimension
        let deltaX = direction.x + titleDimension / 2
        let deltaY = direction.y - 3 * titleDimension / 2
        
        Image("digit\(titleNumber)")
            .resizable()
            .renderingMode(.template)
            .foregroundStyle(.red)
            .aspectRatio(contentMode: .fit)
            .frame(width: titleDimension*digitRasizeFactor, height: titleDimension*digitRasizeFactor)
            .scaleEffect(titleNumber < 10 || titleNumber < 11 ? 0.8 : 1)
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
