//
//  TitleView.swift
//  Greeting
//
//  Created by Pankaj Kumar Rana on 24/09/24.
//

import SwiftUI
import TipKit

struct TitleView: View {
    
    @State private var subtitle : LocalizedStringKey = "Exploring iOS Programming"
    private var greetingsTip  = GreetingsTip()
    
    var body: some View {
        HStack {
            GreetingstextView(subtitle: $subtitle)
                .popoverTip(greetingsTip)
            Spacer()
            
            RotataleCircleView()
        }
        .padding()
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    Spacer()
}
