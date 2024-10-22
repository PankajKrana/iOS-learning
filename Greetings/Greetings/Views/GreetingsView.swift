//
//  ContentView.swift
//  Greeting
//
//  Created by Pankaj Kumar Rana on 23/09/24.
//

import SwiftUI

struct GreetingsView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack (alignment: .leading){
                // Title
                TitleView()



                Spacer()
                
                MessgesView()
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    GreetingsView()
        
}
