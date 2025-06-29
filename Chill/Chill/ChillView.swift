//
//  ContentView.swift
//  Chill
//
//  Created by Pankaj Kumar Rana on 6/28/25.
//

import SwiftUI

struct ChillView: View {
    let sound = "rain music"
    let type = "mp4"
    @State private var currentImageIndex: Int = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        let image = imageData[currentImageIndex]
        ImageAndPhotographerView(
            imageName: image.imageName,
            photographer: image.photographer,
            photographer_url: image.photographer_url
        )
        .animation(.easeIn, value: currentImageIndex)
        .onReceive(timer) { _ in
            currentImageIndex = nextIndex(index: currentImageIndex)
        }
        .onTapGesture {
            currentImageIndex = nextIndex(index: currentImageIndex)

        }
        .onAppear{
            playSound(sound: sound, type: type)
        }
    }
    func nextIndex(index: Int) -> Int {
        return (index + 1) % imageData.count
    }
}

#Preview {
    ChillView()
}
