//
//  Enviornment_ExampleApp.swift
//  Enviornment Example
//
//  Created by Pankaj Kumar Rana on 11/9/24.
//

import SwiftUI

@main
struct Enviornment_ExampleApp: App {
    @State private var personViewModel = PersonViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(personViewModel)
        }
    }
}
