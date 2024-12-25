//
//  Display Code With Markdown.swift
//  Text Exploration
//
//  Created by Pankaj Kumar Rana on 12/13/24.
//

import SwiftUI

struct Display_Code_With_Markdown: View {
    let codeString = """
**A Swift View**

`import SwiftUI`

`struct Display_Code_With_Markdown: View {`
    `var body: some View {`
        `Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)`
    `}`
`}`

`#Preview {`
    `Display_Code_With_Markdown()`
`}`
"""
    var body: some View {
        Text(LocalizedStringKey(codeString))
            .padding()
    }
}

#Preview {
    Display_Code_With_Markdown()
}
