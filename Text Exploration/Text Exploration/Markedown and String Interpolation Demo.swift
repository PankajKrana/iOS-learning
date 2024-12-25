//
//  Markedown and String Interpolation Demo.swift
//  Text Exploration
//
//  Created by Pankaj Kumar Rana on 12/13/24.
//

import SwiftUI

struct Markedown_and_String_Interpolation_Demo: View {
    let rainbow = LinearGradient (
        colors: [.red, .orange, .green, .blue, .purple, .pink],
        startPoint: .leading,
        endPoint: .trailing
    )
    var rainbowWelcome: Text {
        Text("*Welcome*")
            .foregroundStyle(rainbow)
    }
    
    let programText =
    Text("**[programming](https://en.wikipidia.org/wiki/Computer_programming)**")
    
    var body: some View {
        Text("\(rainbowWelcome) to the wonderful world of \(programText) .")
            .padding()
            .font(.largeTitle)
            .tint(.green)
            .multilineTextAlignment(.center)
        
        
    }
}

#Preview {
    Markedown_and_String_Interpolation_Demo()
}
