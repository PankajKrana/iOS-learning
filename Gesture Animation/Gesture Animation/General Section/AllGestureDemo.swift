//
//  AllGestureDemo.swift
//  Gesture Animation
//
//  Created by Pankaj Kumar Rana on 11/28/24.
//

import SwiftUI

struct AllGestureDemo: View {
    @State private var offset: CGSize  = .zero
    @State private var rotation = 0.0
    @State private var scale = 1.0
    
    var body: some View {
        NavigationStack {
            NiceTextView(
                text: "Hello world!",
                bgColor: .black,
                fgColor: .orange,
                radius: 10
            )
            .offset(
                offset
            )
            .rotationEffect(
                Angle(
                    degrees: rotation
                )
            )
            .scaleEffect(
                scale
            )
            .gesture(
                SimultaneousGesture(
                    SimultaneousGesture(
                        DragGesture()
                            .onChanged{ value in
                                offset = value.translation
                            }
                            .onEnded{ _ in
                                withAnimation(
                                    .spring()
                                ) {
                                    offset = .zero
                                }
                            },
                        MagnificationGesture()
                            .onChanged{ value in
                                scale = value
                            }
                            .onEnded{ _ in
                                withAnimation(
                                    .spring()
                                ) {
                                    scale = 1.0
                                }
                            }
                    )
                    ,
                    RotationGesture()
                        .onChanged{ value in
                            rotation = value.degrees
                        }
                        .onEnded{ _ in
                            withAnimation(.spring()) {
                                rotation = 0.0
                            }
                        }
                )
            )
            
            .navigationTitle(
                "Rotate, Drag, Magnify"
            )
            .navigationBarTitleDisplayMode(
                .inline
            )
        }
    }
}

#Preview {
    AllGestureDemo()
}
