//
//  ImageExploreExample3.swift
//  Image Exploration
//
//  Created by Pankaj Kumar Rana on 11/19/24.
//

import SwiftUI

struct ImageExploreExample3: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(ImgType.allCases, id: \.self) { image in
                    Image(image.rawValue)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding()
                        .shadow(radius: 10)
                }
            }
        }
    }
}

#Preview {
    ImageExploreExample3()
}
