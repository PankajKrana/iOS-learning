//
//  ContentView.swift
//  Tip Calculator
//
//  Created by Pankaj Kumar Rana on 6/3/25.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    
    var body: some View {
        VStack {
            if isIPad || isPortraitPhone {
                TipCalculatorView()
            } else {
                LandscapeTipCalculatorView()
            }
        }
        .padding()
    }
}

#Preview {
    MainView()
}
