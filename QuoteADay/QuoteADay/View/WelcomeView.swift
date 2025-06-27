//
//  WelcomeView.swift
//  QuoteADay
//
//  Created by Pankaj Kumar Rana on 6/27/25.
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
                    
                WelcomeQuote()
                
                Spacer()
                NormalTextView(text: "Welcome to your daily dose of inspiration")
                
                Spacer()
                Spacer()
                
                GotoNextView(text: "Generate Quote")
            }
        }
        
    }
}

#Preview {
    WelcomeView()
}
