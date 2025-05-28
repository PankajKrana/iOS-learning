//
//  WelcomeMessageView.swift
//  BodyShapeApp
//
//  Created by Pankaj Kumar Rana on 5/28/25.
//

import SwiftUI

struct WelcomeMessageView: View {
    let userName: String
    var body: some View {
        VStack (alignment: .leading, spacing: 15) {
            HStack {
                Text("Hi,")
                Text(userName)
                    .fontWeight(.bold)
            }.font(.largeTitle)
            
            Text("Your boards looks so good")
                .font(.title3)
                .frame(width: screenWidth / 2, alignment: .leading)
        }
    }
}

#Preview {
    WelcomeMessageView(userName: "Emily")
}
