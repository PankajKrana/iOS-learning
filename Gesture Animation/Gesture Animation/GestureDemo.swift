//
//  ContentView.swift
//  Gesture Animation
//
//  Created by Pankaj Kumar Rana on 11/25/24.
//

import SwiftUI

struct GestureDemo: View {
    var body: some View {
        NavigationStack {
            Form {
                MagnificationSectionView()
                
                DragSectionView()
                
                RotationSectionView()
                
                GeneralSectionGestureView()
                
            }
            .navigationTitle("Gestures")
        }
    }
}

#Preview {
    GestureDemo()
}
