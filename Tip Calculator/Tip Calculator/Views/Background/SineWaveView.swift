//
//  SineWaveView.swift
//  Tip Calculator
//
//  Created by Pankaj Kumar Rana on 6/3/25.
//

import SwiftUI

struct SineWaveView: View {
    @State private var amplitute: CGFloat? = 0.0
    let fillColor: Color
    let height: CGFloat?
    init(fillColor: Color, height: CGFloat? = nil) {
        self.fillColor = fillColor
        self.height = height
    }
    
    var body: some View {
        SineWave()
            .fill(fillColor.gradient)
            .shadow(color: fillColor, radius: 3, x: 3, y: 3)
            .frame(height: amplitute)
            .onAppear {
                withAnimation(.bouncy(duration: 2, extraBounce: 0.05)) {
                    amplitute = height
                }
            }
        
        
    }
}

struct SineWave: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        let delta = rect.height / 2
        let midY = rect.midY
        
        // GO-to left-center
        path.move(to: CGPoint(x: 0, y: midY))
        
        // Draw sine curve from left-center
        path.addCurve(
            to: CGPoint(x: width, y: midY),
            control1: CGPoint(x: 0.25*width, y: midY-delta),
            control2: CGPoint(x: 0.75*width, y: midY+delta)
        )
        
        // Go up
        
        path.addLine(to: CGPoint(x: width, y: midY - height / 2))
        
        // Go left
        
        path.addLine(to: CGPoint(x: 0, y: midY - height / 2))
        
        return path
    }
}

#Preview {
    SineWaveView(fillColor: .green.opacity(0.7), height: 200)
}
