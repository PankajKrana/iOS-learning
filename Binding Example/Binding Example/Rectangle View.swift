//
//  Rectangle View.swift
//  Binding Example
//
//  Created by Pankaj Kumar Rana on 11/8/24.
//

import SwiftUI

struct RectangleView: View {
    let dim: CGFloat
    let color: Color
    
    init(dim: CGFloat = 50, color: Color) {
        self.dim = dim
        self.color = color
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(color)
            .frame(width: dim, height: dim)
    }
}

#Preview {
    RectangleView( color: .blue)
}
