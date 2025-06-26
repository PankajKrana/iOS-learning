//
//  SelectImageView.swift
//  QuoteADay
//
//  Created by Pankaj Kumar Rana on 6/26/25.
//

import SwiftUI

struct SelectImageView: View {
    let quote: String
    let author: String
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            Image(img1)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .overlay (
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 3)
                )
                .padding()
            
            VStack {
                NormalTextView(text: quote)
                HStack {
                    Spacer()
                    NormalTextView(text: author)
                }.padding()
            }
        }
    }
}

#Preview {
    SelectImageView(
        quote: "Life is not about having everything. It's about finding meaning in everything",
        author: "Joel Randymar"
    )
}
