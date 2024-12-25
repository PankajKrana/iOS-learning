//
//  ImageExploreExample2.swift
//  Image Exploration
//
//  Created by Pankaj Kumar Rana on 11/19/24.
//

import SwiftUI

struct ImageExploreExample2: View {
    @State private var ScaleToFit = true
    var body: some View {
        Image(ImgType.imgLightening1.rawValue)
            .resizable()
            .aspectRatio(contentMode: ScaleToFit ? .fit : .fill)
            .cornerRadius(20)
            .padding()
            .onTapGesture {
                ScaleToFit.toggle()
            }
    }
}

#Preview {
    ImageExploreExample2()
}
