//
//  FizzBuzzVieww.swift
//  FizzBuzz
//
//  Created by Pankaj Kumar Rana on 3/29/25.
//

import SwiftUI

struct FizzBuzzView: View {
    let MAX = 100
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ..< MAX, id: \.self) { i in
                    
                    if i % 15 == 0 {
                        NiceText(text: "FizzBuzz")
                    } else if i % 3 == 0 {
                        NiceText(text: "Fizz")
                    } else if i % 5 == 0 {
                        NiceText(text: "Buzz")
                    } else {
                        NiceText(text: "\(i)")
                    }
                }
            }.padding()
        }
    }
}

#Preview {
    FizzBuzzView()
}
