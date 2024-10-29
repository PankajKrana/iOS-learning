//
//  BlendModel.swift
//  Exploring Blend Mode
//
//  Created by Pankaj Kumar Rana on 27/10/24.
//

import SwiftUI

struct BlendModel : Identifiable {
    
    let id = UUID()
    
    let blendmode: BlendMode
    let title: String
    let describe : String
}
