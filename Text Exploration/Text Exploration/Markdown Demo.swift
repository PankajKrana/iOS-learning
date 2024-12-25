//
//  Markdown Demo.swift
//  Text Exploration
//
//  Created by Pankaj Kumar Rana on 12/6/24.
//

import SwiftUI

struct Markdown_Demo: View {
    let favoriteWebsites = """
***My Favorite Website***
___My Favorite Website___

Here are some of my favorite website for learning and exploring: 

1. **[Figma](https://figma.com/)**:  A collaborative interface design tool for teams to create, prototype, and collaborate on digital designs in real time.

2. *[Laws Of UX](https://lawsofux.com/)* A collection of principles that describe how users interact with interfaces, guiding designers to create more effective and intuitive user experiences.
3. ***[Pexels](https://pelexs.com/)*** A platform
offering free stock photos, videos, and music that can be used for personal and commercial projects without attribution.

~~Feel free to check them out !~~
"""
    var body: some View {
        Text(LocalizedStringKey(favoriteWebsites))
        .tint(.red)
        .foregroundStyle(.blue)
        .padding()
    }
}

#Preview {
    Markdown_Demo()
}
