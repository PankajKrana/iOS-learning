//
//  MainGradient.swift
//  Alarm
//
//  Created by Pankaj Kumar Rana on 5/4/25.
//

import SwiftUI

struct MainGradient: View {
    var statRadius: CGFloat = 0.0
    var endRadius: CGFloat
    var scaleX: CGFloat = 2.0
    var opacityLinGrad = 0.5
    var opacityRidGrad = 1.0
    
    var yelloColor = yellow

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [blue, purple, pink],
                startPoint: .top,
                endPoint: .bottom
            )
            .opacity(opacityLinGrad)
            
            RadialGradient(
                colors: [yelloColor, .clear],
                center: .bottom,
                startRadius: statRadius,
                endRadius: endRadius
            )
            .opacity(opacityRidGrad)
            .scaleEffect(x: scaleX)
            
        }
    }
}

#Preview {
    MainGradient( endRadius: 75)
        .frame(width: screenWidth, height: 100)
}
