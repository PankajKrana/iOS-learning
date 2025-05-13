//
//  AlarmApp.swift
//  Alarm
//
//  Created by Pankaj Kumar Rana on 5/2/25.
//

import SwiftUI

@main
struct AlarmApp: App {
    @StateObject var lnManager: LocalNotificationManager = LocalNotificationManager()
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(lnManager)
        }
    }
}
