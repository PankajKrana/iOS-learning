//
//  languageOptionTapView.swift
//  Greetings
//
//  Created by Pankaj Kumar Rana on 02/10/24.
//

import SwiftUI

struct LanguageOptionTapView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        
        Menu {
            Button("English") {
                language = "en"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            
            Button("Arabic") {
                language = "abr"
                layoutDirectionString = RIGHT_TO_LEFT
            }

            Button("Korean") {
                language = "kn"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            
            Button("French") {
                language = "fr"
                layoutDirectionString = LEFT_TO_RIGHT
            }
            
        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(.black)

        }
        
    }
}

#Preview {
    LanguageOptionTapView(
        language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))

}
