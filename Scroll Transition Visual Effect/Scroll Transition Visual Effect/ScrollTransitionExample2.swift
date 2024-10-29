//
//  ScrollTransitionExample2.swift
//  Scroll Transition Visual Effect
//
//  Created by Pankaj Kumar Rana on 26/10/24.
//

import SwiftUI

struct ScrollTransitionExample2: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(images, id: \.self) { name in
                    ZStack{
                        MyImageView(name: name)
                            .scrollTransition(axis: .horizontal) { content,  phase in
                                
                                // -1 ... 1
                                _ = phase.value
                                
                                // 0 .. 2
                                                                
                                
                                
                                let contrast = phase.isIdentity ? 1 : 1.5 * (1 + phase.value)
                                
                                let brightness = abs(phase.value)
                                
                                return content
                                    .offset(x: phase.value * (-500))
                                
                                    .contrast(contrast)
                                    .brightness(brightness)
                            }
                    }
                    .containerRelativeFrame(.horizontal)
                    .clipShape(.rect(cornerRadius: 30))
                    
                }
                
            }
        }

    }
}

#Preview {
    ScrollTransitionExample2()
}
