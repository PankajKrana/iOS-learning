//
//  BackgroundView.swift
//  Greeting
//
//  Created by Pankaj Kumar Rana on 24/09/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [
            .myBlue2,
            .myBlue1
        ],startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(1)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
