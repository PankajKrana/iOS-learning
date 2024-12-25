//
//  ImageExploreExample8.swift
//  Image Exploration
//
//  Created by Pankaj Kumar Rana on 11/19/24.
//

import SwiftUI

struct ImageExploreExample8: View {
    let coloums: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid (columns: coloums){
                ForEach(MoreImages.allCases, id: \.self) { image in
                    Image(image.rawValue)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .shadow(radius: 20)
                    
                }
            }.padding()
        }
    }
}

#Preview {
    ImageExploreExample8()
}
