//
//  SF Symbol Content Transition.swift
//  SF Symbols Animation
//
//  Created by Pankaj Kumar Rana on 11/25/24.
//

import SwiftUI

struct SF_Symbol_Content_Transition: View {
    @State private var clicked = false
    @State private var pauseGlobe = false
    @State private var runCount = 1
    @State private var layerAnimate = true
    @State private var animationRunning = false
    var body: some View {
        VStack {
            HStack {
                Image(systemName: clicked ? "person.fill" : "globe")
                    .imageScale(.large)
                    .symbolEffectsRemoved(pauseGlobe)
                    .symbolEffect(.bounce, value: clicked)
                    .contentTransition(
                        .symbolEffect(.replace.byLayer.downUp)
                    )
                    .padding()
                
                
                
                Image(systemName: clicked ? "person.fill" : "globe")
                    .imageScale(.large)
                    .symbolEffectsRemoved(pauseGlobe)
                    .symbolEffect(.pulse.wholeSymbol, value: clicked)
                    .contentTransition(
                        .symbolEffect(.replace.wholeSymbol.downUp)
                    )
                    .padding()

            }
            .padding()
            
            // Buttons
            HStack {
                Button {
                    clicked.toggle()
                } label: {
                    Text("Clicked Me!!")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .bold()
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
                    
                }
                
            }
            
            Button {
                runCount += 1
            } label: {
                Label("Hello world \(runCount)!!", systemImage: "figure.run.circle")
            }
            .symbolEffect(layerAnimate ? .bounce.byLayer : .bounce.wholeSymbol, options: .repeat(runCount), value: runCount)
            .font(.largeTitle)
            .padding()
            
            Button {
                layerAnimate.toggle()
            } label: {
                Text(layerAnimate ? "Whole Animate" : "Layer Animate")
            }


        }
    }
}

#Preview {
    SF_Symbol_Content_Transition()
}
