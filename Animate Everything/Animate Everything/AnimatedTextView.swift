//
//  ContentView.swift
//  Animate Everything
//
//  Created by Pankaj Kumar Rana on 18/10/24.
//

import SwiftUI

struct AnimatedTextView: View {
    
    var text: String {
        togglePosition ?  "Hello World!" : "Γεια σου Κόσμο!"
    }
    // Creating the Computed Property
    var  offset: CGSize{
        CGSize(width: 0, height: togglePosition ? 400 : 0)
    }
    @State private var togglePosition = false
    
    var color: Color {
        togglePosition ? .red : .blue
    }
    
    var font: Font {
        togglePosition ? .headline : .title
    }
    
    var rotate : CGFloat {
        togglePosition ? 0 : 360
    }
    
    var bgColor: Color {
        togglePosition ? .black.opacity(0.85) : .gray.opacity(0.3)
    }
    
    var body: some View {
        ZStack {
            bgColor
            .ignoresSafeArea()
            
            VStack {
                Text(text)
                    .font(font)
                    .fontWeight(.semibold)
                    .rotationEffect(Angle(degrees: rotate))
                    .offset(offset)
                    .foregroundStyle(color)
                Spacer()
                
                Button {
                    //                withAnimation(.easeInOut(duration: 2)) {
                    
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.825, blendDuration: 0)) {
                        togglePosition.toggle()
                    }
                } label: {
                    Text("Animate")
                        .font(.title)
                        .fontWeight(.semibold)
                }.buttonStyle(.borderedProminent)
                
            }
            .padding()
        }
    }
}

#Preview {
    AnimatedTextView()
}
