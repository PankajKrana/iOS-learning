//
//  HotkeyCategoryModel.swift
//  Brevis
//
//  Created by Pankaj Kumar Rana on 3/25/25.
//

import Foundation

struct HotkeyCategoryModel: Identifiable {
    let id = UUID()
    
    let name : String
    var hotkeyModels : [HotkeyModel]
}
