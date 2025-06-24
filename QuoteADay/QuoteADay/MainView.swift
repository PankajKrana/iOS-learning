//
//  ContentView.swift
//  QuoteADay
//
//  Created by Pankaj Kumar Rana on 6/24/25.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = "One"
    var body: some View {
        TabView(selection: $selectedTab) {
            
            Text("WelcomeView")

            
            Text("QuoteView")
            
            Text("SelectImageView")
        }
        .tabViewStyle(
            .page(indexDisplayMode: .always)
        )
        .ignoresSafeArea()
    }
}


#Preview {
    MainView()
}
