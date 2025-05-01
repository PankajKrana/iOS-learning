//
//  Adding_GameApp.swift
//  Adding Game
//
//  Created by Pankaj Kumar Rana on 4/22/25.
//

import SwiftUI
import SwiftData

@main
struct Adding_GameApp: App {
//    @State var highScoreVM = HighScoreViewModel()

    var body: some Scene {
        WindowGroup {
            MainView()
                .modelContainer(for: HighScoreEntity.self)
//                .environment(highScoreVM)
        }
    }
}
