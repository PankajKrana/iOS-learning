//
//  MainTabView.swift
//  Meditation App
//
//  Created by Pankaj Kumar Rana on 7/2/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Label( "Home", systemImage: "house")
                }
            MeditateScreenView()
                .tabItem {
                    Label( "Meditate", systemImage: "drop")
                }
            SleepScreenView()
                .tabItem {
                    Label( "Sleep", systemImage: "moon")
                }
            MusicView()
                .tabItem {
                    Label( "Music", systemImage: "music.note")
                }
            ProfileView()
                .tabItem {
                    Label( "Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    Group {
        MainTabView()
//        MainTabView()
//            .preferredColorScheme(.dark)
//        MainTabView()
//            .previewDevice("iPod touch (7th generation)")
//        MainTabView()
//            .previewDevice("iPhone 12 Pro Max")
    }
}
