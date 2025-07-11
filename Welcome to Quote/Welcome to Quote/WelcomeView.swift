//
//  ContentView.swift
//  Welcome to Quote
//
//  Created by Pankaj Kumar Rana on 6/22/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                Image(simpleEclipse)
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                WelcomeQuotes()
                Spacer()
                NormalTextView(text: "Welcome to your daily dose of inspiration")

                
                Spacer()
                
                Spacer()
                GotoNextView(text: "Generate Quote")

                Spacer()
                
            }
            .padding()
        }
    }
}

#Preview {
    WelcomeView()
}
