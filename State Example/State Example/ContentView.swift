//
//  ContentView.swift
//  State Example
//
//  Created by Pankaj Kumar Rana on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var bgColor: Color = .green
    var fontTitle : Font = .largeTitle
    var fontsubTitle : Font = .title
    @State private var titleName: String = "State Example"
    @State private var subTitleName: String = "Exlporing State"
    @State private var leftImageRotation : CGFloat = 0
    @State private var rightImageRotation  : CGFloat = 0
    @State private var leftImage  = "sun.horizon"
    @State private var rightImage = "moon.zzz.fill"
    var body: some View {
        ZStack {
            bgColor
                .opacity(0.8)
                .ignoresSafeArea()
            
            VStack {
                
                VStack (alignment: .leading) {
                    Text(titleName)
                        .font(fontTitle)
                        .fontWeight(.semibold)
                    Text(subTitleName)
                        .font(fontsubTitle)
 
                }
                
                .onTapGesture {
                    if titleName == "State Example" {
                        titleName = "Hello"
                    } else {
                        titleName = "State Example"
                    }
                    subTitleName = subTitleName == " Exploring state" ? "Happy Coading! " : "Exploring State"

                    
                }
                Spacer()
                
                
                HStack {
                    Image(systemName: leftImage)
                        .imageScale(.large)
                        .rotationEffect(Angle(degrees: leftImageRotation))

                    Image(systemName: rightImage)
                        .imageScale(.large)
                        .rotationEffect(Angle(degrees: rightImageRotation))
 

                }
                .foregroundStyle(.black)
                
                .onTapGesture {
                    withAnimation {
                        leftImageRotation += 90
                        rightImageRotation -= 90
                    }
                    
                }
                                
                Spacer()
                
                HStack {
                    Button("Background" , action: {
                        withAnimation {
                            // Change Color
                            if bgColor == .green {
                                bgColor = .red
                            }else {
                                bgColor = .green
                            }

                        }
                    })
                    
                    Spacer()
                    
                    Button("Image Change", action: {
                        withAnimation {
                            // Image change
                            if leftImage == "sun.horizon" {
                                leftImage = "sunrise"
                            } else {
                                leftImage = "sun.horizon"
                            }
                            rightImage = rightImage == "moon.zzz.fill" ? "moon.dust.fill" : "moon.zzz.fill"

                            
                        }
                        
                    })
                }
                .padding()
                
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
