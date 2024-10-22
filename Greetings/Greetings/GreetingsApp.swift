//
//  GreetingApp.swift
//  Greetings
//
//  Created by Pankaj Kumar Rana on 23/09/24.
//

import SwiftUI
import TipKit

@main
struct GreetingsApp: App {
//    @State private var language: String = "en"
//    @State private var languageDirectionString: String  = LEFT_TO_RIGHT
    @AppStorage("language") var language: String = "en"
    @AppStorage("languageDirectionString") var languageDirectionString: String = LEFT_TO_RIGHT
    
    var layoutDirection: LayoutDirection {
        languageDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    var restTip = true
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirectionString: $languageDirectionString)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)

            
                .task {
                    if restTip {
                        try? Tips.resetDatastore()
                    }
                    // Configure and load your tips at app launch
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
                }

        }
    }
}
