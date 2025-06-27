//
//  GotoNextView.swift
//  QuoteADay
//
//  Created by Pankaj Kumar Rana on 6/27/25.
//

import SwiftUI

struct GotoNextView: View {
    let text: String
    var body: some View {
        HStack {
            Text(text)
            Image(systemName: "arrow.forward")
        }
        .foregroundColor(.black)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .padding()
    }
}
#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        GotoNextView(text: "Generate Quote")
    }
}
