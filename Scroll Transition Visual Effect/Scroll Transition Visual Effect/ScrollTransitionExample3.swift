//
//  ScrollTransitionExample3.swift
//  Scroll Transition Visual Effect
//
//  Created by Pankaj Kumar Rana on 26/10/24.
//

import SwiftUI

struct ScrollTransitionExample3: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(images, id: \.self) { name in
                    ZStack{
                        MyImageView(name: name)
                            .scrollTransition(axis: .horizontal) { content,  phase in
                                
                                                            
                                return content
                                    .offset(x: phase.value * (-500))
//                                    .grayscale(abs(phase.value))
                                    .grayscale(phase.value * phase.value)
                                    .opacity(phase.isIdentity ? 1 : 0.5)
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
    ScrollTransitionExample3()
}
