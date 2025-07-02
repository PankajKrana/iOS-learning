//
//  HomeScreenView.swift
//  Meditation App
//
//  Created by Pankaj Kumar Rana on 6/30/25.
//

import SwiftUI

struct HomeScreenView: View {
    let homeScreen = "Home Screen"
    let chips = [
        "Sweet Sleep",
        "Focus",
        "Depression",
        "Anxiety",
        "Stress",
    ]
    var body: some View {
        ZStack {
            deepBlue.ignoresSafeArea()
            
            
            Text( homeScreen)
                .foregroundStyle(.white)
                .font(.largeTitle)
            
        }
    }
}
struct MeditateScreenView: View {
    
    var body: some View {
        ZStack {
            deepBlue.ignoresSafeArea()

            Text("MeditateScreenView")
                .foregroundColor(textWhite)
                .font(.footnote)
                .fontWeight(.semibold)
                .padding()
        }
    }
}

struct SleepScreenView: View {
    
    var body: some View {
        ZStack {
            lightRed.ignoresSafeArea()

            Text("SleepScreenView")
                .foregroundColor(textWhite)
                .font(.footnote)
                .fontWeight(.semibold)
                .padding()
        }
    }
}

struct MusicView: View {
    
    var body: some View {
        ZStack {
            lightGreen1.ignoresSafeArea()

            Text("MusicView")
                .foregroundColor(textWhite)
                .font(.footnote)
                .fontWeight(.semibold)
                .padding()
        }
    }
}

struct ProfileView: View {
    
    var body: some View {
        ZStack {
            aquaBlue.ignoresSafeArea()

            Text("ProfileView")
                .foregroundColor(textWhite)
                .font(.footnote)
                .fontWeight(.semibold)
                .padding()
        }
    }
}

struct CurrentMeditationView: View {

    var body: some View {
            
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text("Daily Thought")
                    .foregroundColor(textWhite)
                    .fontWeight(.semibold)
                Text("Meditation  3-10 min")
                    .foregroundColor(textWhite)
                    .font(.caption)
            }.padding()
            
            Spacer()
            
            Image(systemName: "play.circle")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(textWhite)
                .background(buttonBlue)
                .clipShape(Circle())
                .padding()

        }.background(lightRed)
            .cornerRadius(10)
            .padding()
        
    }
}


struct Feature: Identifiable {
    let id = UUID()
    let lightColor: Color
    let mediumColor: Color
    let darkColor: Color
    let title: String
    let iconName: String
}

struct FeatureView: View {
    let columns: [GridItem] = Array(repeating: GridItem(.fixed(UIScreen.main.bounds.width / 2), spacing: 0), count: 2)
        
    let featureList = [
    Feature(
        lightColor: blueViolet1,
        mediumColor: blueViolet2,
        darkColor: blueViolet3,
        title: "Sleep meditation",
        iconName: "music.note"),
    Feature(
        lightColor: lightGreen1,
        mediumColor: lightGreen2,
        darkColor: lightGreen3,
        title: "Tips for sleeping",
        iconName: "video"),
    Feature(
        lightColor: orangeYellow1,
        mediumColor: orangeYellow2,
        darkColor: orangeYellow3,
        title: "Night island",
        iconName: "leaf"),
    Feature(
        lightColor: beige1,
        mediumColor: beige2,
        darkColor: beige3,
        title: "Calming sounds",
        iconName: "heart")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured")
                .foregroundColor(textWhite)
                .font(.largeTitle)
                .fontWeight(.semibold)
            .padding()
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(featureList) { feature in
                        FeatureItemView(
                            lightColor: feature.lightColor,
                            mediumColor: feature.mediumColor,
                            darkColor: feature.darkColor,
                            title: feature.title,
                            iconName: feature.iconName)
                    }

                }
            }
            
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
