//
//  MessgesView.swift
//  Greeting
//
//  Created by Pankaj Kumar Rana on 24/09/24.
//

import SwiftUI

struct MessgesView: View {
    let messages: [DataItemModel] = [
        .init(
            text: "Hello There!",
            color: .myGreen),
        .init(text: "Welcome to Swift Programming🙂",
              color: .myGray),
        .init(
            text: "Are You ready to ?",
            color: .myRed),
        .init(
            text: "Start Exploring ",
            color: .myYellow),
        .init(
            text: "Boom" ,
            color: .myPurple)
    ]

    var body: some View {
        VStack (alignment: .leading) {
            ForEach(messages){ dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
                
            }
        }
    }
}

#Preview {
    MessgesView()
}
