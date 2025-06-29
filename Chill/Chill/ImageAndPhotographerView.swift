//
//  ImageAndPhotographerView.swift
//  Chill
//
//  Created by Pankaj Kumar Rana on 6/29/25.
//

import SwiftUI

struct ImageAndPhotographerView: View {
    let imageName: String
    let photographer: String
    let photographer_url: String
    
    // offset the maximum between width and height
    let offsetValue = max(
        UIScreen.main.bounds.width,
        UIScreen.main.bounds.height
    )
    var body: some View {
        ZStack(alignment: .top) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            PhotoByView(
                photographer: photographer,
                photographer_url: photographer_url,
                offsetX: offsetValue
            )
            .padding()
            .opacity(0.7)
        }
    }
}

#Preview {
    ImageAndPhotographerView(
        imageName: imageData[0].imageName,
        photographer: imageData[0].photographer,
        photographer_url: imageData[0].photographer_url
    )
}
