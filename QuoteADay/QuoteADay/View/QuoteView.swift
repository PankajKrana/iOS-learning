//
//  QuoteView.swift
//  QuoteADay
//
//  Created by Pankaj Kumar Rana on 6/25/25.
//

import SwiftUI

struct QuoteView: View {
    @StateObject var quoteViewModel: QuoteViewModel = QuoteViewModel()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                BigTextView(text: "Quote of the Day")
                Spacer()
                BigTextView(text: quoteViewModel.quoteModel.content)
                Spacer()
                BorderedNormalTextView(text: "Tap for Quote")
                    .onTapGesture {
                        quoteViewModel.getRandomQuote()
                    }
            }
            .padding()
        }
    }
}

#Preview {
    QuoteView()
}
