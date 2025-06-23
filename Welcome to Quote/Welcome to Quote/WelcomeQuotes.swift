//
//  WelcomeQuotes.swift
//  Welcome to Quote
//
//  Created by Pankaj Kumar Rana on 6/22/25.
//

import SwiftUI

struct WelcomeQuotes: View {
    let fireOrange = Color(
        red: 254 / 255,
        green: 252 / 255,
        blue: 50 / 255)

    let welcomeQuotes = """
            Life is not about having everything. It's about finding meaning in everything.
        """
    
    let welcomeAuthor = "Joel Randymar"
    var body: some View {
        
        VStack(spacing: 10){
            Text("BigTextView")
            HStack {
                Spacer()
                Image(fireSample)
                    .resizable()
                    .frame(width: 130, height: 130)
                    .mask {
                        Text(welcomeAuthor)
                            .font(.footnote.italic().bold())
                    }
                Spacer()
            }
        }
    }
}

#Preview {
    WelcomeQuotes()
}
