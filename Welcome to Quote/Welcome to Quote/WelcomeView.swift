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
                Text("Welcome Quotes")
                
                Spacer()
                Text("NormalTextView")
                
                Spacer()
                
                Spacer()
                Text("GotoNextView")
                
                Spacer()
                
            }
            .padding()
        }
    }
}

#Preview {
    WelcomeView()
}
