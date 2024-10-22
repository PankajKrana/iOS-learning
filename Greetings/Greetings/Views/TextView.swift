//
//  TextView.swift
//  Greeting
//
//  Created by Pankaj Kumar Rana on 23/09/24.
//

import SwiftUI

struct TextView: View {
    
    let text: LocalizedStringKey

    @State var color: Color
    
    let colors: [Color] = [
        .red,
        .blue,
        .orange,
        .yellow,
        .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color(red: 0.5, green: 0, blue: 0.5),
    ]

    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
        
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    var font: Font {
        isIPad ? .largeTitle : .body
    }
    
    
    var body: some View {
                
        Text( text)
            .font(font)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
        
            .onTapGesture {
                //Randomly changing color
                    color = colors.randomElement() ?? .red
            }
    }
}

#Preview {
    VStack {
        TextView(text: "Hello There!", color: .green)
        TextView(text: "Hummus", color: .blue)
        TextView(text: "Peace", color: .purple)

    }
}
