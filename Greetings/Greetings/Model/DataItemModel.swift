//
//  DataItemModel.swift
//  Greeting
//
//  Created by Pankaj Kumar Rana on 24/09/24.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}

