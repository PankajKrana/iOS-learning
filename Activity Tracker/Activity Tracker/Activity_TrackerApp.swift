//
//  Activity_TrackerApp.swift
//  Activity Tracker
//
//  Created by Pankaj Kumar Rana on 4/13/25.
//

import SwiftUI
import SwiftData

@main
struct Activity_TrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ActivityView()
        }.modelContainer(for: Activity.self)
    }
}
