//
//  CoolTextView.swift
//  Alarm
//
//  Created by Pankaj Kumar Rana on 5/4/25.
//

import SwiftUI

struct CoolTextView: View {
    let fontName = "WorkSans-Italic-VariableFont_wght"
    let text: LocalizedStringKey
    let size: CGFloat
    var body: some View {
        Text(text)
            .font(Font.custom(fontName, size: size))
            .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 0)
    }
}

#Preview {
    CoolTextView(text: "set alarm and \nWake uo easily", size: 36)
}
