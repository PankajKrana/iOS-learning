//
//  Test Color View.swift
//  Tip Calculator
//
//  Created by Pankaj Kumar Rana on 6/4/25.
//

import SwiftUI

struct Test_Colors_View: View {
    
    // TODO: Use custom colors
    let colors: [Color] = [.myRed, .myBlack, .myGray, .myWhite, .myDarkGreen, .myLightGreen]
    let dim = 50.0
    var body: some View {
        VStack {
            ForEach(colors, id: \.self) { color in
                RoundedRectangle(cornerRadius: 10)
                    .fill(color)
                    .frame(width: dim, height: dim)
            }
        }
    }
}

#Preview {
    Test_Colors_View()
}
