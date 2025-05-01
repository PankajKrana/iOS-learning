//
//  ListItemView.swift
//  Recipe
//
//  Created by Pankaj Kumar Rana on 2/25/25.
//

import SwiftUI

struct ListItemView: View {
    let name: String
    let caloriesPer100Gram: Int
    let recipeImage: String
    let imageDim:  CGFloat = 70
    var body: some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .foregroundColor(.orange)
                Text("\(caloriesPer100Gram) calories per 100 grams")
                    .font(.caption)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                
            }.padding()
            
            Spacer()
            
            Image(recipeImage)
                .resizable()
                .frame(width: imageDim, height: imageDim)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 1)
                ).shadow(color: .white.opacity(0.7), radius: 10, x: 0, y: 0)
        }
        .padding(.horizontal)
        .background(Color.black.cornerRadius(10 ))

    }
}

#Preview {
    ListItemView(name: "Chichen", caloriesPer100Gram: 322, recipeImage: "IMGChicken")
}
