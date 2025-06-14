//
//  iPad Support.swift
//  Flashcard
//
//  Created by Pankaj Kumar Rana on 6/14/25.
//

import Foundation
import UIKit

extension UIDevice{
    static var isIPad: Bool {
        UIDevice
            .current
            .userInterfaceIdiom == .pad
    }
    static var isIPhone: Bool {
        UIDevice
            .current
            .userInterfaceIdiom == .phone
    }

}
