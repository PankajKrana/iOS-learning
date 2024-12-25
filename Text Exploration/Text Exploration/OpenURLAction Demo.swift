//
//  OpenURLAction Demo.swift
//  Text Exploration
//
//  Created by Pankaj Kumar Rana on 12/13/24.
//

import SwiftUI

struct OpenURLAction_Demo: View {
    let fontAwesome = "*[Fontaweesome](https://fontawesome.com/search?m=free&o=r)*"
    
    @State private var visits = 0
    
    let maxVisit = 4 // Should be atleast three
    
    var visitMe : String {
        switch(visits) {
        case 0 : return "Check out \(fontAwesome) for some great fonts."
        case 1 : return "Glad you are using \(fontAwesome)"
        case 2 : return "Using \(fontAwesome)? Please leave a review."
        case 3...maxVisit: return "\(fontAwesome)"
        default:
            return "No more font awesome, let's get back to coding"
        }
    }
    
    @State private var actOfKindnessRLFromGoogle = "*[Act of Kindness](https://www.google.com/search?q=act+of+kindness)*"
    
    @State private var actOfKindnessUrl = "*[Another act of Kindness](https://blogs.nvcc.edu/wellness/2021/02/17/random-acts-of-kindness-day/)*"
    
    @State private var showingAlert = false
    
    var body: some View {
        Form {
            Text(LocalizedStringKey(visitMe))
                .environment(\.openURL,OpenURLAction { url in
                    visits += 1
                    return .systemAction
                })
            Text(LocalizedStringKey(actOfKindnessRLFromGoogle))
                .environment(\.openURL, OpenURLAction { url in
                    if url.absoluteString.contains("google") {
//                        print("The site 'google' has been blocked")
                        showingAlert = true
                        return .discarded
                        // Prevent Opening this URL
                    } else {
                        return .systemAction
                    }
                })
                .tint(.red)
            Text(LocalizedStringKey(actOfKindnessUrl))
                .environment(\.openURL, OpenURLAction { url in
                    if url.absoluteString.count < 12 || url.absoluteString.contains("blogs") {
                        print("suspicious email")
                        return .handled
                    } else if visits < 2 {
                        return .systemAction
                    }else if URL(string:"https://www.udemy.com/course/wholesome-baking-mastering-whole-wheat-cookies") != nil {
                        return .systemAction
                    } else {
                        return .handled
                    }
                })
                .tint(.green)
            
            
            
        }
        .tint(.secondary)
        .bold()
        .foregroundStyle(.blue)
        .font(.title)
        .alert("Google is blocked", isPresented: $showingAlert) {
            Button("Ok", role: .cancel) {}

        }
    }
}

#Preview {
    OpenURLAction_Demo()
}
