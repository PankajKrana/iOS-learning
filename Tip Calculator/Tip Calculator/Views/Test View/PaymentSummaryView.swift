//
//  PaymentSummaryView.swift
//  Tip Calculator
//
//  Created by Pankaj Kumar Rana on 6/4/25.
//

import SwiftUI

struct PaymentSummaryView: View {
    let tipPercentage: Int
    let split: Int
    let bill: Double
    
    
    // TODO: Calculate based on input
    var totalPerPerson: String {
        "300"
    }
    
    var billPerPerson: String {
        "250"
    }
    
    var tipPerPerson: String {
        "50"
    }
    
    // iPad Support
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIPad ? .largeTitle : .headline
    }
    
    
    var body: some View {
        GroupBox {
            VStack {
                SubTotalView(
                    title: "Total Per Person",
                    titleFont: font,
                    amount: totalPerPerson,
                    amountFont: font
                )
                .frame(maxHeight: .infinity)
                
                HStack {
                    SubTotalView(
                        title: "Bill",
                        titleFont: font,
                        amount: billPerPerson,
                        amountFont: font
                    )
                    
                    SubTotalView(
                        title: "Tip",
                        titleFont: font,
                        amount: tipPerPerson,
                        amountFont: font
                    )


                }
            }

        } label: {
            Label("Summary", systemImage: "book")
                .font(font)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
        }
        .backgroundStyle(.myLightGreen.opacity(0.8))
        .clipShape(.rect(cornerRadius: 20))

    }
}

#Preview {
    VStack {
        
        RoundedRectangle(cornerRadius: 20)
            .fill(.blue.opacity(0.4))
        PaymentSummaryView(
            tipPercentage: 20,
            split: 2,
            bill: 500
        )
    }
    .padding()
}
