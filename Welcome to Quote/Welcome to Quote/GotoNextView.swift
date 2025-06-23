//
//  GotoNextView.swift
//  Welcome to Quote
//
//  Created by Pankaj Kumar Rana on 6/22/25.
//

import SwiftUI

struct GotoNextView: View {
    let text: String
    var body: some View {
        HStack {
            Text(text)
            Image(systemName: "arrow.forward")
        }
        .foregroundStyle(.black)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .padding()
    }
}

#Preview {
    GotoNextView(text: "Generate Quote")
}
