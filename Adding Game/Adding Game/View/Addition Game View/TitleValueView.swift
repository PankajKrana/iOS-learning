//
//  TitleValueView.swift
//  Adding Game
//
//  Created by Pankaj Kumar Rana on 4/30/25.
//

import SwiftUI

struct TitleValueView: View {
    var title: String
    let value: Int
    
    var body: some View {
        VStack {
            Text( title)
            Text("\(value)")
        }
        .font(.headline)
        .fontWeight(.bold)
        .foregroundColor(.white)
        
    }
}

#Preview {
    ZStack {
        GameBackgroundView()
        TitleValueView(title: "Score", value: 7)
    }
}
