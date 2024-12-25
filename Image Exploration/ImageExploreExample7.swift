//
//  ImageExploreExample7.swift
//  Image Exploration
//
//  Created by Pankaj Kumar Rana on 11/19/24.
//

import SwiftUI

struct ImageExploreExample7: View {
    @State private var scaleToFit = true
    
    let appleUrl = "https://images.pexels.com/photos/347926/pexels-photo-347926.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"

    var body: some View {
        ImageFronUrl(
            urlString: appleUrl,
            width: 300,
            height: .infinity,
            contentMode: scaleToFit ? .fit : .fill,
            cornerRadius: 20)
        .shadow(radius: 30)
        .padding()
        .onTapGesture {
            scaleToFit.toggle()
        }
    }
}

struct ImageFronUrl: View {
    let urlString: String
    let width: CGFloat
    let height: CGFloat
    let contentMode: ContentMode
    let cornerRadius: CGFloat
    var body: some View {
        AsyncImage(url: URL(string: urlString)) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .cornerRadius(cornerRadius)
                    .aspectRatio(contentMode: contentMode)
                    .frame(width: width , height: height)
            case .failure :
                Image(systemName: "photo")
                    .imageScale(.large)
            @unknown default:
                EmptyView()
            }
        }

    }
}
#Preview {
    ImageExploreExample7()
}
