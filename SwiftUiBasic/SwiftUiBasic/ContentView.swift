//
//  ContentView.swift
//  SwiftUiBasic
//
//  Created by Pankaj Kumar Rana on 04/10/24.
//

import SwiftUI

struct ContentView: View {
    
    let colorList1 : [Color] = [.red, .blue, .green]
    
    let colorList2 : [Color] = [.gray, .purple , .green]
    
    @State  private var screenTapped : Bool = false
    
    let rotationAngle : CGFloat = 360.0
    
    
    // Computed Property
    var color: [Color]  {
         screenTapped ? colorList1 : colorList2
    }
    
    var text: String  {
        screenTapped ? "SwiftUi Basic" : "To know what to know and what you do not to know, that is true knowledge "
    }
    
    var font: Font {
        screenTapped ? .largeTitle : .title
    }
    
    var body: some View {
        ZStack {
            // Backgroound Color
            LinearGradient(
                colors: color,
                startPoint: .bottomTrailing,
                endPoint: .topTrailing
            )
            .opacity(0.8)
            .ignoresSafeArea()
            
            // Text
            VStack {
                Text(text)
                    .font(font)
                    .fontWeight(.semibold)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxHeight: .infinity)
                
                
                Text("Another line of text")
                    .font(font)
                    .fontWeight(.semibold)
                    .foregroundColor(.indigo)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxHeight: .infinity)

            }
            .padding(.horizontal)
            .rotation3DEffect(.degrees(screenTapped ? 0 : rotationAngle), axis: (x: 1, y: 1, z : 1))

            
        }
        
        .onTapGesture {
            withAnimation(.easeIn(duration: 0.5)) {
                screenTapped.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
