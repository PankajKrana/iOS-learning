//
//  HighScoreTitle.swift
//  Adding Game
//
//  Created by Pankaj Kumar Rana on 4/30/25.
//

import SwiftUI

struct HighScoreTitle: View {
    var body: some View {
        HStack {
            VtextImage(
                imageName: "creature0",
                text: "Rank",
                dim: 25)
            VtextImage(
                imageName: "creature1",
                text: "Score",
                dim: 25)
            VtextImage(
                imageName: "creature2",
                text: "Name",
                dim: 25)
        }.padding(.horizontal)
    }
}



#Preview {
    HighScoreTitle()
}
