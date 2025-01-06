//
//  ExpandableTextField.swift
//  Expandable Text Field
//
//  Created by Pankaj on 06/01/2025.
//

import SwiftUI

struct ExpandableTextField: View {
    @Binding var value: String
    let placeholder: String
    let lineLimit: Int
    @FocusState private var isFocused: Bool
    
    var body: some View {
        TextField(
            placeholder,
            text: $value,
            axis: .vertical
        ).focused($isFocused)
            .onSubmit(of: .text) {
                value.append("\n")
                isFocused = true
            }
    }
}

#Preview {
    ExpandableTextField(
        value: .constant(""),
        placeholder: "Type something...",
        lineLimit: 10
    )
    .padding()
}
