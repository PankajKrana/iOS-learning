//
//  QuoteView.swift
//  QuoteADay
//
//  Created by Pankaj Kumar Rana on 6/25/25.
//

import SwiftUI

struct QuoteView: View {
    @State private var quote: String = "Temp Quote"
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                BigTextView(text: "Quote of the Day")
                Spacer()
                BigTextView(text: quote)
                Spacer()
                
                BorderedNormalTextView(text: "Tap for quote")
                    .onTapGesture {
                        quote = "Life is not about having everything . It's about finding meaning in everything"
                    }
                
            }.padding()
            
            
        }
    }
}


#Preview {
    QuoteView()
}
