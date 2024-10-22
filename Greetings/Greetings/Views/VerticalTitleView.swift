//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by Pankaj Kumar Rana on 30/09/24.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle : LocalizedStringKey = "Exploring iOS Programming"
    
    var body: some View {
        VStack (alignment: .leading) {
            GreetingstextView(subtitle: $subtitle)
            
            RotataleCircleView()
            
            Spacer()
        }
        .padding(.vertical)
    }

}

#Preview {
    VerticalTitleView()
}
