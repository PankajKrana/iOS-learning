//
//  SunMoonView.swift
//  Calculator
//
//  Created by Pankaj Kumar Rana on 2/25/25.
//

import SwiftUI

struct SunMoonView: View {
    var lightMode: Bool
    var body: some View {
        HStack(spacing: 30) {
            Image(systemName: "sun.min")
                .imageScale(.large)
                .foregroundColor(lightMode ? sunOrMoonSelected : sunOrMoonNotSelected)
            
            Image(systemName: "moon")
                .imageScale(.large)
                .foregroundColor(lightMode ? sunOrMoonNotSelected : sunOrMoonSelected)
        }.padding()
            .background(secondaryBackgroundCoolor)
            .cornerRadius(20)
    }
}

#Preview {
    VStack {
        SunMoonView(lightMode: true)
        SunMoonView(lightMode: false)

    }
}
