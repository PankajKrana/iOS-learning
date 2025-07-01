//
//  HomeScreenView.swift
//  Meditation App
//
//  Created by Pankaj Kumar Rana on 6/30/25.
//

import SwiftUI

struct HomeScreenView: View {
    let homeScreen = "Home Screen"
    var body: some View {
        ZStack {
            deepBlue.ignoresSafeArea()
            
            
            Text( homeScreen)
                .foregroundStyle(.white)
                .font(.largeTitle)
            
        }
    }
}

struct FeatureItemView: View {
    let lightColor: Color
    let mediumColor: Color
    let darkColor: Color
    let title: String
    let iconName: String
    var body: some View {
        let width = UIScreen.main.bounds.width
        let halfWidth = width / 2
        let boxDim = 0.8 * halfWidth

        ZStack {
            Rectangle()
                .fill(
                LinearGradient(colors: [lightColor,mediumColor,darkColor],
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                )
                .frame(width: boxDim, height: boxDim)
            .cornerRadius(10)
            
            VStack(alignment: .leading) {
                Text(title)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(textWhite)
                    .font(.body)
                    .padding()
                    
                Spacer()
                HStack {
                    Image(systemName: iconName)
                        .imageScale(.large)
                        .foregroundColor(textWhite)

                    Spacer()
                    Text("Start")
                        .foregroundColor(textWhite)
                        .font(.body)
                        .padding(5)
                        .background(buttonBlue)
                        .cornerRadius( 10)
                        .shadow(radius: 3)

                }.padding()
                    
            }.frame(width: boxDim, height: boxDim, alignment: .leading)
        }
    }
}


struct ChipsView: View {
    
    let chips: [String]
    @State private var selectedChipIndex = 0
    
    var body: some View {
        HStack {
            ForEach(0 ..< chips.count) { i in
                Text(chips[i])
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(
                        i == selectedChipIndex ? buttonBlue : darkerButtonBlue)
                    .cornerRadius( 10)
                    .foregroundColor(textWhite)
                    .font(.footnote)
                    .onTapGesture {
                        selectedChipIndex = i
                    }
            }
            
            Spacer()
        }.padding()
    }
}


struct GreetingsView: View {
    let name: String
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Good morning, \(name)")
                    .fontWeight(.semibold)
                    .foregroundColor(textWhite)
                    .font(.headline)
                Text("Have a great day")
                    .fontWeight(.thin)
                    .foregroundColor(textWhite)
                    .font(.subheadline)
            }
            Spacer()
            Image(systemName: "magnifyingglass")
                .foregroundColor(textWhite)
                
        }.padding()
    }
}

#Preview {
    HomeScreenView()
}
