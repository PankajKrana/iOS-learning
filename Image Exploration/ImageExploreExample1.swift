//
//  ImageExploreExample1.swift
//  Image Exploration
//
//  Created by Pankaj Kumar Rana on 11/19/24.
//

import SwiftUI

struct ImageExploreExample1: View {
    @State private var scaleToFit = true
    var body: some View {
        
        if scaleToFit {
            Image("imgLightening1")
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding()
                .onTapGesture {
                    scaleToFit.toggle()
                }

        } else {
            Image("imgLightening1")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.25)
                .scaledToFill()
                .cornerRadius(20)
                .padding()
                .onTapGesture {
                    scaleToFit.toggle()
                }

        }
    
        

    }
}

#Preview {
    ImageExploreExample1()
}
