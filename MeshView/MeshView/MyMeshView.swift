//
//  ContentView.swift
//  MeshView
//
//  Created by Pankaj Kumar Rana on 20/10/24.
//

import SwiftUI

struct MyMeshView: View {
    @State private var points:[SIMD2<Float>] = [
        [0.323, 0.199],[0.5, 0],[1,0],
        [0,0.5],[0.909,0.196],[1,0.5],
        [0,1],[0.5,1],[0.862,0.871]

    ]
    @State private var colors: [Color] = [
        .indigo, .indigo, .indigo,
        .brown, .green , .white,
        .purple, .black, .mint,
        
        
    ]
    
    @State private var background: Color = .green
    
    var mesh: some View {
        MeshGradient(
            width: 3,
            height: 3,
            points: points,
            colors: colors,
            background: background
        )
    }
    
    var animation: Animation {
        Animation
            .linear(duration: 5)
            .repeatForever(autoreverses: false)
    }
    
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        mesh
            .animation(animation, value: points)
            .ignoresSafeArea()
            .onReceive(timer) { _ in
                let someColors: [Color] = [
                    .indigo,
                    .brown, .green ,.white,
                    .purple, .mint,
                ]
                
                points[4].x = Float.random(in: 0...1)
                points[4].y  = Float.random(in: 0...1)
                colors[4] = someColors
                    .randomElement() ?? .indigo
                
            }
    }
}

#Preview {
    MyMeshView()
}