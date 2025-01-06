//
//  RectangleTextView.swift
//  FlexToGrid
//
//  Created by Pankaj on 5/01/2025.
//

import SwiftUI

struct RectangleTextView: View {
    let color: Color
    let text: String
    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
            Text(text)
                .font(.title)
                .fontWeight(.semibold)
        }.cornerRadius(10)
    }
}

#Preview {
    RectangleTextView(color: .red, text: "25%")
}
