//
//  ImageExploreExample6.swift
//  Image Exploration
//
//  Created by Pankaj Kumar Rana on 11/19/24.
//

import SwiftUI

struct ImageExploreExample6: View {
    let appleUrl = "https://images.pexels.com/photos/347926/pexels-photo-347926.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    var body: some View {
        AsyncImage(url: URL(string: appleUrl)) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:300 , height: 200)
            case .failure(_):
                Image(systemName: "photo")
                    .imageScale(.large)
            @unknown default:
                EmptyView()
            }
        }
    }
}

#Preview {
    ImageExploreExample6()
}