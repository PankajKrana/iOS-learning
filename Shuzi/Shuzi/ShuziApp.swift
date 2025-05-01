//
//  ShuziApp.swift
//  Shuzi
//
//  Created by Pankaj Kumar Rana on 3/26/25.
//

import SwiftUI

@main
struct ShuziApp: App {
    @State private var gVM: GameViewModel = GameViewModel()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(gVM)
        }
    }
}
