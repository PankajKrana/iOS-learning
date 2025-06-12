//
//  TwoSideBackgroundView.swift
//  Flashcard
//
//  Created by Pankaj Kumar Rana on 6/12/25.
//

import SwiftUI

struct TwoSideBackgroundView: View {
    let frontColor: Color
    let backColor: Color
    let opacity: CGFloat
    let isFrontUp: Bool
    
    
    var color: Color {
        isFrontUp ? frontColor : backColor
    }
    
    var body: some View {
        color
            .opacity(opacity)
            .ignoresSafeArea()
    }
}

#Preview {
    TwoSideBackgroundView(
        frontColor: .blue,
        backColor: .red,
        opacity: 0.1,
        isFrontUp: false
    )
}
