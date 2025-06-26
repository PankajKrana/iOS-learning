//
//  QuoteView.swift
//  QuoteADay
//
//  Created by Pankaj Kumar Rana on 6/25/25.
//

import SwiftUI

struct QuoteView: View {
    @State private var quote: String = "Temp Quote"
    @StateObject var quoteViewModel: QuoteViewModel = QuoteViewModel()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                BigTextView(text: "Quote of the Day")
                Spacer()
                BigTextView(text: quoteViewModel.quoteModel.content)
                Spacer()
                
                BorderedNormalTextView(text: "Tap for quote")
                    .onTapGesture {
                        quoteViewModel.getRandomQuote()
                    }
                
            }.padding()
            
            
        }
    }
}


#Preview {
    QuoteView()
}
