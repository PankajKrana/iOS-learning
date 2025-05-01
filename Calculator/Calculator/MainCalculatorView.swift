//
//  ContentView.swift
//  Calculator
//
//  Created by Pankaj Kumar Rana on 2/24/25.
//

import SwiftUI

struct MainCalculatorView: View {
    @State var lightMode: Bool = true
    @State var currentComputation: String = "34646"
    @State var mainResult: String = "09807"
    
    var body: some View {
        ZStack {
            primaryBackgroundColor.ignoresSafeArea()
            
            VStack {
                SunMoonView(lightMode: lightMode)
                    .onTapGesture {
                        withAnimation {
                            lightMode.toggle()
                        }
                    }
                
                Spacer()
                
                ComputationView(currentComputation: currentComputation, mainResult: mainResult)
                Spacer()
                
                CalcsButtonView(currentComputation: $currentComputation, mainResult: $mainResult)
                
            }
            .padding()
        }
        .environment(\.colorScheme,
                      lightMode ? .light: .dark)
    }
}

#Preview {
    MainCalculatorView()
}
