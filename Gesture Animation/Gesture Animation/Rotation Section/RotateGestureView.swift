//
//  RotateGestureView.swift
//  Gesture Animation
//
//  Created by Pankaj Kumar Rana on 11/28/24.
//

import SwiftUI

struct RotateGestureView: View {
    @State private var rotation: Double = 0.0
    @State private var currentRotation: Double = 0.0

    var totalRotation : Double {
        currentRotation + rotation
    }
    var body: some View {
        NavigationStack {
            NiceTextView(
                text: "Hello world!",
                bgColor: .black,
                fgColor: .orange,
                radius: 10
            )
            .rotationEffect(
                Angle(
                    degrees: totalRotation
                )
            )
            .gesture(
                RotationGesture()
                    .onChanged{ value in
                        currentRotation = value.degrees
                        
                    }
                    .onEnded{ _ in
                        withAnimation(.spring()) {
                            rotation += currentRotation
                            
                            // Reset current rotation
                            currentRotation = .zero
                        }
                    }
            )
            .onTapGesture {
                withAnimation(.spring()) {
                    rotation = 0
                    currentRotation = 0
                }
            }
            .navigationTitle("Rotaion Demo Stay Still")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RotateGestureView()
}
