//
//  ContentView.swift
//  Tap Image Example
//
//  Created by Pankaj Kumar Rana on 11/20/24.
//

import SwiftUI

struct ContentView: View {
    @State var meditating: Bool = false
    var prompt: String {
        meditating ? "Pause" : "Start"
    }
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.3)
                .ignoresSafeArea()

            VStack {
                Image("singing bowl")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .overlay(
                        Text(prompt)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .foregroundColor(.green)
                            .background(.blue)
                            .cornerRadius(45)
                        
                        
                    )
                    .onTapGesture {
                        withAnimation {
                            meditating.toggle()
                            
                        }
                        
                    }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
