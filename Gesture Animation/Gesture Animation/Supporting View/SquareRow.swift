//
//  SquareRow.swift
//  Gesture Animation
//
//  Created by Pankaj Kumar Rana on 11/25/24.
//

import SwiftUI

struct SquareRow: View {
    let colors: [Color]
    let dim: CGFloat
    let cornerRadius: CGFloat
    
    init(colors: [Color], dim: CGFloat = 50, cornerRadius: CGFloat = 5) {
        self.colors = colors
        self.dim = dim
        self.cornerRadius = cornerRadius
    }
    var body: some View {
        GridRow {
            ForEach(colors, id: \.self) { color in
//                color
//                    .frame(width: dim, height: dim)
//                    .clipShape(.rect(cornerRadius: cornerRadius))
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(color)
                    .frame(width: dim, height: dim)

                
            }
        }
    }
}

struct GradientBackground: View {
    let colors: [Color]
    let opacity: CGFloat
    
    init(color: [Color], opacity: CGFloat) {
        self.colors = color
        self.opacity = opacity
    }
    
    var body: some View {
        LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(opacity)
            .ignoresSafeArea()
    }
}

#Preview {
    ZStack {
        GradientBackground(
            color: [.yellow, .indigo, .cyan],
            opacity: 0.4
        )
        Grid {
            ForEach(0..<10) { item in
                SquareRow(
                    colors: [.red, .green,.blue],
                    dim: CGFloat(item) * 5.0
                )
            }
            
            ForEach(0..<10) { item in
                SquareRow(
                    colors: [.red, .green,.blue],
                    dim: CGFloat(10 - item ) * 5.0
                )
            }

        }.opacity(0.9)
    }
}
