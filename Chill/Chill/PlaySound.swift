//
//  PlaySound.swift
//  Chill
//
//  Created by Pankaj Kumar Rana on 6/29/25.
//

import Foundation
import AVKit

// The question means optional since
// in general this might not work and
// then AVAudioPlayer() will return nil
var audioPlayer: AVAudioPlayer? = AVAudioPlayer()

func playSound(sound: String, type: String) {
    if let path = Bundle
        .main
        .path(
            forResource: sound,
            ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            
            // Loop infinitely
            audioPlayer?.numberOfLoops = -1
            
            // Play audio
            audioPlayer?.play()
        } catch {
            print("Error")
        }
    }
}
