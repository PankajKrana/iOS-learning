//
//  LandscapeGreetings.swift
//  Greetings
//
//  Created by Pankaj Kumar Rana on 30/09/24.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                // Title
                VerticalTitleView()
                
                Spacer()
                
                MessgesView()
                
            }
            .padding()
        }
    }
    
}

#Preview {
    LandscapeGreetingsView()
}
