//
//  SF Symbole Animation.swift
//  SF Symbols Animation
//
//  Created by Pankaj Kumar Rana on 11/24/24.
//

import SwiftUI

struct SF_Symbole_Animation: View {
    @State private var clicked = false
    @State private var puseGlobe = false
    var body: some View {
        // SF Symbole
        VStack {
            
            HStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .symbolEffect(.pulse.wholeSymbol, value: clicked)
                    .padding()
                
                Image(systemName: "cloud.moon.rain")
                    .imageScale(.large)
                    .symbolEffect(.bounce.byLayer, value: clicked)
                    .foregroundStyle( clicked ? .gray : .brown)

                    .padding()
                
                Image(systemName: "square.stack.3d.up")
                    .imageScale(.large)
                    .symbolEffect(.variableColor.iterative, value: clicked)
                    .foregroundStyle( clicked ? .red : .blue)
                    .padding()
                
                Image(systemName: "square.stack.3d.up")
                    .imageScale(.large)
                    .symbolEffect(.variableColor.iterative, value: clicked)
                    .foregroundStyle( clicked ? .orange : .green)
                    .padding()

                
                Image( systemName: clicked ? "eye" : "eye.slash")
                    .imageScale(.large)
                    .foregroundStyle( clicked ? .black : .gray.opacity(0.5))
                    .symbolEffect(.bounce, value: clicked)
                    .padding()
                
                Image( systemName: clicked ? "person.crop.circle.badge.plus" : "bolt.horizontal.circle.fill")
                    .imageScale(.large)
                    .foregroundStyle( clicked ? .black : .gray.opacity(0.5))
                    .symbolEffect(.pulse.byLayer, options: .repeat(3).speed(3), value: clicked)
                    .padding()

                
            }
                // Button
            HStack {
                Button {
                    clicked.toggle()
                } label: {
                    Text("Clicked Me")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .bold()
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
                    
                }
                
                Button {
                    puseGlobe.toggle()
                } label: {
                    Text(puseGlobe ? "Desible" : "glow")
                        .font(.headline)
                        .foregroundStyle(puseGlobe ? .red : .green)
                        .bold()
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
                    
                }
            }
        }
    }
}

#Preview {
    SF_Symbole_Animation()
}
