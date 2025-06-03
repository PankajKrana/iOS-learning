//
//  BackgroundView.swift
//  Tip Calculator
//
//  Created by Pankaj Kumar Rana on 6/3/25.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Color.white.opacity(0.9).ignoresSafeArea()
            
            SinePathView()
        }
    }
}

#Preview {
    BackgroundView()
}
