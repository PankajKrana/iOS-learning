//
//  MainView.swift
//  Greetings
//
//  Created by Pankaj Kumar Rana on 01/10/24.
//

import SwiftUI

// Portait = Compact width , regular weight

struct MainView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortaitPhone : Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular

    }
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    @Binding var language: String
    @Binding var layoutDirectionString: String

    
    var body: some View {
        // Portait Mode?
        
        if isPortaitPhone || isIPad{
            NavigationStack{
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
        }else {
            // Landscape Mode
            NavigationStack {
                
                LandscapeGreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }

            }
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
