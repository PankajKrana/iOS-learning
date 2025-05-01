//
//  SettingsView.swift
//  Shuzi
//
//  Created by Pankaj Kumar Rana on 3/27/25.
//

import SwiftUI

struct SettingsView: View {
    @Environment(GameViewModel.self) var gVM
    
    @Binding var showSettingsVIew: Bool
    @State var volume: Float
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Section {
                        Text("Volume")
                        Slider(value: $volume, in: 0...1, step: 0.1)
                    } header: {
                        Text("Audio Settings")

                    }
                }
                
                Button("Ok", action: {
                    gVM.gameModel.volume = volume
                    showSettingsVIew.toggle()
                })
            }
            .navigationTitle("Game Settings")
            
        }
    }
}

#Preview {
    SettingsView(showSettingsVIew: .constant(true), volume: 0.7)
    .environment(GameViewModel())}
