//
//  GreetingstextView.swift
//  Greetings
//
//  Created by Pankaj Kumar Rana on 30/09/24.
//

import SwiftUI

struct GreetingstextView: View {
    
    @Binding var subtitle : LocalizedStringKey
    let subtitles : [LocalizedStringKey] =  [
        "Exploring iOS Programming",
        "Learning how to bake",
        "learning development",
        "learning SwiftUI",
        "Loving iOS"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Greeting")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.thin)
        }
        .onTapGesture {
            // Change the subtitle
            subtitle = subtitles
                .randomElement() ?? LocalizedStringKey("Exploring iOS Programming")
        }
    }
}

#Preview {
    GreetingstextView(subtitle: .constant("Exploring iOS Programming"))
}
