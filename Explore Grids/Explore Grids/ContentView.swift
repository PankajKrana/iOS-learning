//
//  ContentView.swift
//  Explore Grids
//
//  Created by Pankaj Kumar Rana on 04/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
          
            Grid{
                GridRow {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                        .gridCellColumns(2)

                    RoundedRectangle(cornerRadius: 20)
                        .fill(.orange)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.purple)
                    
                }
                
                GridRow {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.brown)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.yellow)
                        .gridCellColumns(2)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.purple)

                }
                GridRow {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.orange)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.orange)
                    
                }


            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
