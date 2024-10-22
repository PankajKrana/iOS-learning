//
//  ProcessView.swift
//  Navigation Example
//
//  Created by Pankaj Kumar Rana on 05/10/24.
//

import SwiftUI

struct DrinkingView : View {
    let name : String
    let age : String
    
    let drinkingAge : Int
    
    init(name: String, age: String, drinkingAge: Int = 18) {
        self.name = name
        self.age = age
        self.drinkingAge = drinkingAge
    }
    
    var numericalaAge : Int? {
        Int(age)
    }
    var text: String {
        if let numericalaAge {
            if numericalaAge > drinkingAge {
                return "Drinking Age!."
            }else {
                return "sorry can't serve you!"
            }
        }else {
            return "Invalid Age"
        }
    }
    
    var body: some View {
        ZStack {
            Color
                .blue
                .opacity(0.7)
                .ignoresSafeArea()
            Text(text)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

#Preview {
    DrinkingView(name: "Oscer", age: "12")
}
