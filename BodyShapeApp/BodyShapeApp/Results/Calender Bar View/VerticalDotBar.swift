//
//  VerticalDotBar.swift
//  BodyShapeApp
//
//  Created by Pankaj Kumar Rana on 6/1/25.
//

import SwiftUI

struct VerticalDotBar: View {
    let percent: CGFloat
    let isSelected: Bool
    let height: CGFloat
    let offsetY: CGFloat
    let selectedWeight: Int
    var selectedWeightUnit: String = "lb"
    let circleDim = 8.0
    let delta = 10.0
    
    
    var body: some View {
        VStack (spacing: 0){
            if isSelected {
                HStack {
                    Text("\(selectedWeight)")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("\(selectedWeightUnit)")
                }
                .padding(.vertical, 30)
                //                .frame(minWidth: 70, minHeight: 70)
            }
            
            ZStack(alignment: .bottom) {
                Rectangle()
                    .stroke(lineWidth: 0.5)
                    .frame(width: 1, height: height)
                
                // Circle + highlight
                ZStack {
                    if isSelected {
                        Circle()
                            .fill(lightGreen)
                            .frame(width: circleDim + delta, height: circleDim + delta)
                            .offset(y: -(height - circleDim) * percent)
                            .offset(y: -offsetY)
                    }
                    
                    Circle()
                        .frame(width: circleDim, height: circleDim)
                        .offset(y: -(height - circleDim) * percent)
                        .offset(y: -offsetY)

                }
                
            }
            
        }
    }
}

#Preview {
    HStack(alignment: .bottom) {
        VerticalDotBar(
            percent: 0.6,
            isSelected: false,
            height: 100,
            offsetY: -5,
            selectedWeight: 12
        )
        .padding()
        
        VerticalDotBar(
            percent: 1,
            isSelected: true,
            height: 100,
            offsetY: -5,
            selectedWeight: 12
        )
        .padding()
        
    }
}
