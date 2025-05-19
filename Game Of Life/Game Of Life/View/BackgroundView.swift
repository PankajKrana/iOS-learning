//
//  BackgroundView.swift
//  Game Of Life
//
//  Created by Pankaj Kumar Rana on 5/19/25.
//


import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Color(.bg).opacity(0.5) 
            .ignoresSafeArea()
    }
}


#Preview {
    BackgroundView()
}
