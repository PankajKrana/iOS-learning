//
//  AboutView.swift
//  Alarm
//
//  Created by Pankaj Kumar Rana on 5/4/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            MainGradient(endRadius: screenHeight / 2).ignoresSafeArea()
            VStack {
                VStack(spacing: 30) {
                    CoolTextView(text: LocalizedStringKey("About"), size: 48)
                    
                    Text("The UI for this alarm app was largely inspired by the amazing work of Anton Leogky.")
                        .font(.title)
                }
                .multilineTextAlignment(.leading)
                .minimumScaleFactor(0.1)
                .padding()
                
                Spacer()
                
                Image(appImageSamples)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                    .frame(width: screenWidth * 0.8)
                
                if let url = URL(string: "https://dribbble.com/antonleogky") {
                    Link(destination: url, label: {
                        ButtonView(text: "to Anton's page")
                            .padding()
                    })
                }
                    
            }
        }
    }
}

#Preview {
    AboutView()
}
