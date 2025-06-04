//
//  SubTotalView.swift
//  Tip Calculator
//
//  Created by Pankaj Kumar Rana on 6/4/25.
//

import SwiftUI

struct SubTotalView: View {
    let title: LocalizedStringKey
    let titleFont: Font
    let amount: String
    let amountFont: Font
    
    var body: some View {
        VStack {
            Text(title)
                .font(titleFont)
                .foregroundStyle(.secondary)
            Text(amount)
                .font(titleFont)
                .fontWeight(.semibold)
                .foregroundStyle(.myDarkGreen)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    SubTotalView(
        title: "Bill",
        titleFont: .largeTitle,
        amount: "99.99",
        amountFont: .largeTitle
    )
}
