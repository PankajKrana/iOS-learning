//
//  MainView.swift
//  QuoteADay
//
//  Created by Pankaj Kumar Rana on 6/27/25.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab = "One"
    var body: some View {
        TabView(selection: $selectedTab) {
            WelcomeView()
                .tag("One")
            
            QuoteView()
                .tag("Two")
            
            SelectImageView(
                quote: "Welcome to SwiftUI and iOS 16 programming",
                author: "Ron Erez")
                .tag("Three")
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
