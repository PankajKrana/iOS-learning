//
//  NiceText.swift
//  FizzBuzz
//
//  Created by Pankaj Kumar Rana on 3/29/25.
//

import SwiftUI

struct NiceText: View {
    let text: String
    
    var body: some View {
        Text( text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding()
    }
}

#Preview {
    NiceText(text: "Fizz")
}
