//
//  ContentView.swift
//  Toast Modifier
//
//  Created by Pankaj Kumar Rana on 1/21/25.
//

import SwiftUI

struct ToastDemo: View {
    @State private var showToast = true
    
    let text: String
    var showToastPrompt : String {
        showToast ? "Hide Toast" : "Show Toast"
    }
    var body: some View {
        VStack {
            Spacer()
            Button {
                withAnimation(.spring){
                    showToast.toggle()
                }
            } label: {
                Text(showToastPrompt)
            }
            Spacer()
            
            TextWithBackgroundView(text: text)
                .offset(y: showToast ? 0 : 100)
            
        }
        .padding()
    }
}

struct TextWithBackgroundView: View {
    let text : String
    let color: Color
    
    init(
        text: String,
        color: Color = .black.opacity(0.8)
    ) {
        self.text = text
        self.color = color
    }
    var body: some View {
        Text(text)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .foregroundStyle(.white)
            .background(
                Capsule()
                    .fill(color)
            )
            .shadow(color: color, radius: 5, x: 0, y: 3)

    }
}

#Preview {
    ToastDemo(text: "Toast is Declicious")
}
