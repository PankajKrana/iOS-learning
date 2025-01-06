//
//  ContentView.swift
//  FlexToGrid
//
//  Created by Pankaj on 5/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.cyan.opacity(0.3).ignoresSafeArea()
            Grid(verticalSpacing: 0) {
                GridRow {
                    MyImageNiew(imageName: "imgPurpleLightening")
                }
                GridRow {
                    Grid(verticalSpacing: 0) {
                        GridRow {
                            RectangleTextView(
                                color: .red,
                                text: "25%")
                        }
                        GridRow {
                            RectangleTextView(
                                color: .green,
                                text: "25%")
                        }

                    }
                }
            }
            .padding(.horizontal)
        }

    }
}

#Preview {
    ContentView()
}
