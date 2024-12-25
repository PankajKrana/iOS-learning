//
//  Phase Animation 1.swift
//  SF Symbols Animation
//
//  Created by Pankaj Kumar Rana on 11/25/24.
//

import SwiftUI


struct AnimateProperties: Equatable {
    let color : Color
    let bgColor: Color
    let font: Font
    let fontWeight: Font.Weight
    let cornerRadius: CGFloat
    let xScale: CGFloat
    let yScale: CGFloat
    let offset: CGFloat
    let rotate: CGFloat
}


struct Phase_Animation_1: View {
    @State private var animateMe = false
    
    let phase: [AnimateProperties] = [
        .init(
            color: .red,
            bgColor: .black,
            font: .largeTitle,
            fontWeight: .semibold,
            cornerRadius: 20,
            xScale: 1.0,
            yScale: 1.5,
            offset: 0,
            rotate: 30
        ),
        
            .init(
                color: .blue,
                bgColor: .black,
                font: .body,
                fontWeight: .thin,
                cornerRadius: 0,
                xScale: 1.0,
                yScale: 1.5,
                offset: 50,
                rotate: 60
            )

    ]
    var body: some View {
        VStack {
            
            Spacer()
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .phaseAnimator(phase, trigger: animateMe){ view , phase in
                    view
                        .foregroundStyle(phase.color)
                        .font(phase.font)
                        .fontWeight(phase.fontWeight)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: phase.cornerRadius)
                                .fill(phase.bgColor.gradient)
                        )
                        .scaleEffect(
                            x: phase.xScale,
                            y: phase.yScale)
                        .offset(y: phase.offset)
                        .rotation3DEffect(Angle(degrees: phase.rotate), axis: (x: 1.0 , y: 0.0, z: 0.0)
                        )

                }
                            
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .foregroundStyle(.blue)
//                .font(.body)
//                .fontWeight(.thin)
//                .padding()
//                .background(
//                    RoundedRectangle(cornerRadius: 0)
//                        .fill( .black.gradient)
//                )
//                .scaleEffect(x: 1, y: 1.5)
//                .offset(y: 50)
//                .rotation3DEffect(Angle(degrees: 60), axis: (x: 1.0 , y: 0.0, z: 0.0)
//                )
            
            
            Spacer()

            Button {
                animateMe.toggle()
            } label: {
                Text(animateMe ? "Stop" : "Play")
            }

            
        }
    }
}

#Preview {
    Phase_Animation_1()
}
