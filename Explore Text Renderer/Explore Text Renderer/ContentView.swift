//
//  ContentView.swift
//  Explore Text Renderer
//
//  Created by Pankaj Kumar Rana on 12/20/24.
//

import SwiftUI

enum RenderType : String , CaseIterable {
    case blur, wobble
    
}

struct ContentView: View {
    @State private var renderType: RenderType = .blur
    @State private var blur = 1.0
    let heart = Image(systemName: "heart.fill")
    
    var helloWorld : Text {
        Text("Hello \(heart) wordl!")
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundStyle(.red)
            .customAttribute(CustomAttr())
    }
    var body: some View {
        VStack {
            Picker("Render Type", selection: $renderType) {
                
                ForEach(RenderType.allCases, id: \.self) { type in
                    Text(type.rawValue)
                        .tag(type)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            Text("yet another \" \(helloWorld)\"  example")
                .font(.title)
                .multilineTextAlignment(.center)
                .textRenderer(Renderer(rendreType: renderType, value: blur))
            
            Spacer()
            
            Slider(value: $blur, in: 1...10)
        }
        .padding()
    }
}

struct Renderer : TextRenderer {
    let rendreType : RenderType
    let value: CGFloat
    func draw(layout: Text.Layout, in ctx: inout GraphicsContext) {
        let allLines = layout
            .flatMap({ $0 })
        
        for line in allLines {
            // Extract Custom Attrubute text
            if line[CustomAttr.self] != nil {
                var localContext = ctx
                
                switch rendreType {
                case .blur:
                    let blurFilter = GraphicsContext.Filter.blur(radius:value)
                    
                    localContext.addFilter(blurFilter)

                case .wobble:
                    let wobbleFilter = GraphicsContext.Filter.distortionShader(
                        ShaderLibrary.wobble(.float(value)),
                        maxSampleOffset: .zero
                    )
                    
                    localContext.addFilter(wobbleFilter)

                }
                
                
                

                
                localContext.draw(line)
                
            }else {
                let localContext = ctx
                localContext.draw(line)
            }
        }
    }
    
    
}

struct CustomAttr: TextAttribute {
    // Additional Properties
    
    
}

#Preview {
    ContentView()
}
