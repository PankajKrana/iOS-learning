//
//  ComputationView.swift
//  Calculator
//
//  Created by Pankaj Kumar Rana on 2/25/25.
//

import SwiftUI

struct ComputationView: View {
    let currentComputation: String
    let mainResult: String
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Spacer()
                Text(currentComputation)
                    .foregroundColor(foregroundDigitsColor)
                    .lineLimit(1)
            }.minimumScaleFactor(0.1)
            
            HStack {
                Spacer()
                Text(mainResult)
                    .foregroundColor(foregroundDigitsColor)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .lineLimit(1)
            }.minimumScaleFactor(0.1)
            
        }.padding(.horizontal)
    }
}

#Preview {
    VStack{
        Spacer()
        ComputationView(currentComputation: "12000 + 936", mainResult: "12936")
        Spacer()
        ComputationView(currentComputation: "76%", mainResult: "0.76")
        Spacer()
        ComputationView(currentComputation: "12*11", mainResult: "132")

        
    }
}
