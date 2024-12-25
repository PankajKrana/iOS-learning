//
//  Attributed String Demo.swift
//  Text Exploration
//
//  Created by Pankaj Kumar Rana on 12/19/24.
//

import SwiftUI

struct Attributed_String_Demo: View {
    var attr1Demo: AttributedString {
        var myString = AttributedString("Attributed String")
        myString.foregroundColor = .orange
        myString.backgroundColor = .black
        myString.font = .largeTitle
        myString.baselineOffset = 0
        myString.kern = 5
        
        return myString
    }
    
    var attr2Demo: AttributedString {
        let CoadingIsAwesome = "Coading is Awesome!, let's code together!"
        var myString = AttributedString()
        
        myString.font = Font.title
        for(i, ch) in CoadingIsAwesome .enumerated() {
            var letterString = AttributedString( String(ch))
            
            let red = 0.3
            let green = 0.3
            let blue = Double(6*i % CoadingIsAwesome.count) /
            Double(CoadingIsAwesome.count)
            
            letterString.foregroundColor = Color(red: red, green: green, blue: blue)
            
            letterString.baselineOffset = Double(i)
            
            myString += letterString

            
        }
        return myString
    }
    
    var attr3Demo : AttributedString {
        let CoadingIsAwesome = "Coading is Awesome!, let's code together!"
        var myString = AttributedString()

        myString.font = Font.title
        
        for (i, ch) in CoadingIsAwesome.enumerated() {
            var letterString = AttributedString( String(ch))
            
            let count = CGFloat(CoadingIsAwesome.count)
            let j = CGFloat(CoadingIsAwesome.count / 2 - i)
            
            letterString.baselineOffset = -smileFactor*j*j / count
            
            myString += letterString
            
        }
        
        
        return myString
        
    }
    
    var attr4Demo : AttributedString {
        let CoadingIsAwesome = "Coading is Awesome!, let's code together!"
        var myString = AttributedString()
        
        let listOfWords = CoadingIsAwesome.split(separator: " ")
        
        for (i, word) in listOfWords.enumerated() {
            var wordString = AttributedString("\(word) ")
            wordString.baselineOffset = 10*CGFloat( i % 2)
            
//            wordString.kern = 3.0
            
            
            myString += wordString
        }
        return myString

    }
    
    func stepRainbowText(_ text: String = "Coading is Awesome!, let's code together! ", stepSize: CGFloat) -> AttributedString {
        var myString = AttributedString()
        
        let listOfWords = text.split(separator: " ")
        
        for (i, word) in listOfWords.enumerated() {
            var wordString = AttributedString("\(word) ")
            wordString.baselineOffset = stepSize*CGFloat( i % 2)
            
//            wordString.kern = 3.0
            
            
            myString += wordString
        }
        return myString

    }
    
    @State private var smileFactor = 5.0
    @State private var flip = 0.0
    
    @State private var stepSize = 0.0
    
    let rainbow = LinearGradient (
        colors:[
            .red,
            .orange,
            .yellow,
            .green,
            .blue,
            .purple,
            .pink
        ],
        startPoint: .leading,
        endPoint: .trailing
        
    )
    
    var attr5Demo : AttributedString {
        var myString = AttributedString("Underline Demo")
        myString.font = .title
        
//        myString.underlineStyle = Text.LineStyle(pattern: .dot, color: .red)
        
//        myString.underlineStyle = Text.LineStyle(pattern: .dashDotDot, color: .red)
        
        myString.underlineStyle = Text.LineStyle(pattern: .solid, color: .red)


        
        
        return myString
    }
    
    var body: some View {
        ScrollView {
            Text(attr1Demo)
            Text(attr2Demo)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.gray.opacity(0.3).clipShape(.rect(cornerRadius: 5)))
            Text(attr3Demo)
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundStyle(rainbow)
                .background(Color.black.clipShape(.rect(cornerRadius: 5)))
                .rotation3DEffect(
//                    Angle(degrees: flip * 180),
                    Angle(degrees: 30),
                    axis: (x: 1.0, y: 0.0, z: 0.0)
                )
            
            HStack {
                Button("😃") {
                    withAnimation {
                        smileFactor = abs(smileFactor)
                        
                    }
                }.frame(maxWidth: .infinity)
                
                Button("😉") {
                    withAnimation {
                        flip = 1 - flip
                    }
                }.frame(maxWidth: .infinity)

                
                Button("☹️") {
                    withAnimation {
                        smileFactor = -abs(smileFactor)
                        
                    }
                }.frame(maxWidth: .infinity)
            }.font(.largeTitle)
            
            Text(attr4Demo)
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundStyle(rainbow)
                .background(Color.black.clipShape(.rect(cornerRadius: 5)))


            Text(stepRainbowText( "no act of kindness is too small".capitalized, stepSize: stepSize))
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundStyle(rainbow)
                .background(Color.black.clipShape(.rect(cornerRadius: 5)))
            
            Slider(value: $stepSize, in: -30...30)
            
            Text(attr5Demo)

            
            
        }.padding()
    }
}

#Preview {
    Attributed_String_Demo()
}
