//
//  FillBarView.swift
//  Finance App Ui
//
//  Created by Pankaj Kumar Rana on 7/4/25.
//

import SwiftUI

struct FillBarView: View {
    let barWidth: CGFloat = 8
    let name: String
    let percentage: CGFloat
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text(name)
                    .foregroundColor(fontColor)
                    .font(.caption)
                
                ZStack(alignment: .bottom) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill( darkBackground3)
                        .frame(width: barWidth, height: .infinity)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(purple2)
                        .frame(width: barWidth, height: geometry.size.height*percentage)

                }
                    
            }
        }
    }
}

#Preview {
    ZStack {
        darkBackground.ignoresSafeArea()
        FillBarView(name: "Jan", percentage: 0.67)
    }
}
