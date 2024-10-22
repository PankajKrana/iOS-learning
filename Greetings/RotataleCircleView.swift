//
//  RotataleCircleView.swift
//  Greetings
//
//  Created by Pankaj Kumar Rana on 30/09/24.
//

import SwiftUI

struct RotataleCircleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    
    
    @State private  var isRotated : Bool = false
    var angle : Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient : AngularGradient {
        AngularGradient.init(colors: [.pink, .purple, .blue, .orange , .yellow], center: .center, angle: .zero)
    }

    var body: some View {
        Circle()
            .strokeBorder(angularGradient, lineWidth: 15)
            .rotationEffect(angle)
            .frame(width: diameter , height: diameter)
            .onTapGesture {
                withAnimation() {
                    isRotated.toggle()
                }
            }

    }
}

#Preview {
    RotataleCircleView()
}
