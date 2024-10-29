//
//  ContentView.swift
//  Scroll Transition Visual Effect
//
//  Created by Pankaj Kumar Rana on 25/10/24.
//

import SwiftUI

struct ScrollTransitionExample1: View {
    
    // wisunlist :
    // left opacity = 0
    // value = - 1
    // center: opacity = 1
    // value = 0
    // RIGHT : OPACITY = 0
    // Value = 1
    // -1 to 0
    // 0 to 1
    // cos(pi/2) = 0
    // cos(-pi/2) = 0
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(images, id: \.self) { name in
                    ZStack{
                        MyImageView(name: name)
                            .scrollTransition(axis: .horizontal) { content,  phase in
                                
                                // -1 ... 1
                                let value = phase.value
                                
                                // 0 .. 2
                                let opacity = cos((.pi/2) * value)
                                return content
                                    .opacity(opacity)
                            }
                    }
                    .containerRelativeFrame(.horizontal)
                    
                }
                
            }
        }
    }
}

#Preview {
    ScrollTransitionExample1()
}
