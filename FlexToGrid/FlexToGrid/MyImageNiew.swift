//
//  MyImageNiew.swift
//  FlexToGrid
//
// Created by Pankaj on 5/01/2025.
//

import SwiftUI

struct MyImageNiew: View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

#Preview {
    MyImageNiew(imageName: "imgPurpleLightening")
}
