//
//  HomeScreenView.swift
//  Meditation App
//
//  Created by Pankaj Kumar Rana on 6/30/25.
//

import SwiftUI

struct HomeScreenView: View {
    let homeScreen = "Home Screen"
    var body: some View {
        ZStack {
            deepBlue.ignoresSafeArea()
            
            
            Text( homeScreen)
                .foregroundStyle(.white)
                .font(.largeTitle)
            
        }
    }
}

#Preview {
    HomeScreenView()
}
