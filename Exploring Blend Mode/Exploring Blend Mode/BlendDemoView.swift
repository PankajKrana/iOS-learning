//
//  ContentView.swift
//  Exploring Blend Mode
//
//  Created by Pankaj Kumar Rana on 27/10/24.
//

import SwiftUI

struct BlendDemoView: View {
    @State private var opacity = 0.2
    
    let blendModels : [BlendModel] = [
        .init(
            blendmode: .normal,
            title: "Normal",
            describe: "This is the standard blend mode which uses the top layer alone, without mixing its color  with the layer beneath it. "
        ),
        .init(
            blendmode: .color,
            title: "Color",
            describe: "The Color blend mode preserves the luma of the bottom layer, while adopting the hue and chroma of the top layer."
        )

    ]
    
    var sortedBlendModels: [BlendModel] {
        blendModels
            .sorted{lhs, rhs in
                lhs.title < rhs.title
                
            }
    }
    var body: some View {
        VStack {
            Text("Blend Modes in SwiftUI")
                .font(.title)
            
            Form {
                ForEach(sortedBlendModels) { blendModel in
                    BlendModeView(
                        blendModel: blendModel,
                        opacity: opacity
                    )
                }
            }
            Slider(value: $opacity, in: 0...1)
                .tint(.purple)
                .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    BlendDemoView()
}
