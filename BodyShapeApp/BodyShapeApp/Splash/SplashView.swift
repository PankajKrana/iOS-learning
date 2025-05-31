//
//  SplashView.swift
//  BodyShapeApp
//
//  Created by Pankaj Kumar Rana on 5/31/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            BackgroundSplashView()
            
            VStack {
                TopRowOfSplashView()
                
                Image(bikeImage)
                    .resizable()
                    .scaledToFit()
                
                Text("Discover How To Shape Your Body")
                    .font(.system(size: 48, weight: .bold, design: .serif))
                    .padding(.horizontal)
                
                
                LastRowOfSplashView()
            }
            
        }
    }
}

struct ArrowInCircle: View {
    var body: some View {
        Image(systemName: "arrow.forward")
            .fontWeight(.bold)
            .imageScale(.large)
            .padding(3)
            .overlay(
                ZStack {
                    Circle()
                    Image(systemName: "arrow.forward")
                        .fontWeight(.bold)
                        .imageScale(.large)
                        .foregroundStyle(lightGreen)
                        .offset(x: -6)
                        .scaleEffect(y: 0.7)
                }
            )
            .padding()
            .background(
                Circle().fill(lightGreen)
            )
        
    }
}

struct LastRowOfSplashView: View {
    var body: some View {
        HStack {
            ArrowInCircle()
            
            Spacer()
        }
        .padding()
    }
    
}

struct BackgroundSplashView: View {
    var body: some View {
        GeometryReader { geometry in
            Circle()
                .fill(lightPurple)
                .scaleEffect(2)
                .offset(y: -geometry.size.height * 0.3)
        }
    }
}

struct TopRowOfSplashView: View {
    var body: some View {
        HStack {
            Image(systemName: "line.3.horizontal")
                .imageScale(.large)
                .fontWeight(.bold)
            
            Spacer()
        }.padding()
    }
}



#Preview {
    SplashView()
}
