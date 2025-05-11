//
//  YouDidItView.swift
//  Alarm
//
//  Created by Pankaj Kumar Rana on 5/4/25.
//

import SwiftUI

struct YouDidItView: View {
    let youDidIt = "you did it! here you can manage your alarm, change time and other things"
    var body: some View {
        ZStack {
            MainGradient(endRadius: 120, scaleX: 1.5, yelloColor: darkYellow)
                .cornerRadius(20)
                .frame(height: screenHeight / 4)
                .overlay(
                    HStack{
                        CoolTextView(text: LocalizedStringKey(youDidIt), size: 18)
                            .padding(.horizontal)
                            .padding(.horizontal)
                            .multilineTextAlignment(.leading)
                            .frame(width: screenWidth / 1.8)
                        
                        Spacer()
                        
                        Image(partyPerson)
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal)
                            .opacity(0.9)
                        
                        
                    }
                ).clipShape(Rectangle()).padding()
            
            
        }
    }
}

#Preview {
    ZStack {
        black.opacity(0.5).ignoresSafeArea()
        
        YouDidItView()
    }
}
