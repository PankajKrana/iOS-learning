//
//  WelcomeQuote.swift
//  QuoteADay
//
//  Created by Pankaj Kumar Rana on 6/24/25.
//

import SwiftUI

struct WelcomeQuote: View {
    let fireOrange = Color(
        red: 254 / 255,
        green: 252 / 255,
        blue: 50 / 255)
    
    let welcomeQuote = "Life is not about having everything. It's about finding meaning in everything."
    
    let welcomeAuthor = "Joel Randymar"
    
    
    var body: some View {
        VStack(spacing: 10) {
            
            Text("BigTextView")
            HStack {
                Spacer()
                
                Image("image")
                    .resizable()
                    .frame(width: 130, height: 50)
                    .mask {
                        Text(welcomeAuthor)
                            .font(.footnote.italic().bold())
                    }
                
                
            }
        }
    }
}

#Preview {
    WelcomeQuote()
}
