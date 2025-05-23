//
//  CGSize+Extensions.swift
//  Document Scanner
//
//  Created by Pankaj Kumar Rana on 4/16/25.
//

import SwiftUI

extension CGSize {
    /// This function will return a new size that fits the given size in the aspepct ratio
    func aspectFit(_ to: CGSize) -> CGSize {
        let scaleX = to.width / self.width
        let scaleY = to.height / self.height
        
        let aspectRatio = min(scaleX, scaleY)
        return .init(width: aspectRatio * width, height: aspectRatio * height)
    }
    
}
