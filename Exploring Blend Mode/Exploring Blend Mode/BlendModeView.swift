//
//  BlendModeView.swift
//  Exploring Blend Mode
//
//  Created by Pankaj Kumar Rana on 27/10/24.
//

import SwiftUI

struct BlendModeView: View {
    let blendModel: BlendModel
    let opacity: Double
    
    let dim = 150.0
    
    var offset: CGFloat {
        dim / 3
    }
    
    var rectDim : CGFloat {
        1.75 * dim
    }
    
    let  cornerRadius = 15.0
    var body: some View {
        VStack {
            Text(blendModel.title)
                .font(.headline)
                .padding(.top)
                            
            // Overlapping Circles
            
            ZStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: dim, height: dim)
                    .offset(x: -offset)


                Circle()
                    .fill(Color.yellow)
                    .frame(width: dim, height: dim)
                    .offset(x: offset)


                Circle()
                    .fill(Color.red)
                    .frame(width: dim, height: dim)
                    .offset(y: offset)


                
            }
            .blendMode(blendModel.blendmode)
            .padding()
            .frame(width: rectDim, height: rectDim)
            .background(Color.black.opacity(opacity))
            .clipShape(.rect(cornerRadius: cornerRadius))
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: 0.5)
            }
            
            Text(blendModel.describe)
        }
    }
}

#Preview {
    VStack {
        BlendModeView(blendModel: .init(
            blendmode: .normal,
            title: "Normal",
            describe: "This is the standard blend mode which uses the top layer alone, without mixing its color  with the layer beneath it. "
        ), opacity: 0.5)
        
        BlendModeView(blendModel: .init(
            blendmode: .color,
            title: "Color",
            describe: "The Color blend mode preserves the luma of the bottom layer, while adopting the hue and chroma of the top layer."
        ), opacity: 0.5)

        
        
    }
    .padding()
}
