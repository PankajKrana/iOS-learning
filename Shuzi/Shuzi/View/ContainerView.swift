//
//  ContainerView.swift
//  Shuzi
//
//  Created by Pankaj Kumar Rana on 3/27/25.
//

import SwiftUI

struct ContainerView: View {
    @State private var splashScreenIsPresented = true
    var body: some View {
        if splashScreenIsPresented {
            SplashScreenView(isPresented: $splashScreenIsPresented)
                .disabled(!splashScreenIsPresented)
        } else {
            MainView()
        }
    }
}

#Preview {
    ContainerView()
        .environment(GameViewModel())
}
