//
//  GrayedText.swift
//  Alarm
//
//  Created by Pankaj Kumar Rana on 5/2/25.
//

import SwiftUI

struct GrayedTextView: View {
    let text: LocalizedStringKey
    var font = Font.headline
    
    var body: some View {
        Text( text)
            .foregroundStyle(.gray)
            .font( font)
//            .padding()
    }
}

#Preview {
    ScrollView {
        VStack (alignment: .leading,spacing: 30) {
            GrayedTextView(text: "The UI for this nice Alarm app was largely inspired by the amazing work of Anton Leogky.", font: .title)
        }
    }
}
