//
//  KeySymbolView.swift
//  Brevis
//
//  Created by Pankaj Kumar Rana on 3/25/25.
//

import SwiftUI

struct KeySymbolView: View {
    var body: some View {
        let midIndex = Modifier.allCases.count / 2 + 1
        
        HStack(alignment: .top) {
            KeySymbolViewColumn(lowerIndex: 0, UpperInddex: midIndex)

            KeySymbolViewColumn(lowerIndex: midIndex, UpperInddex: Modifier.allCases.count)

        }
    }
}

struct KeySymbolViewColumn: View {
    let lowerIndex: Int
    let UpperInddex: Int
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10){
            ForEach(lowerIndex..<UpperInddex, id: \.self)  { i in
                KeyValueRow( modifier: Modifier.allCases[i])
            }
        }
        .frame(maxWidth: .infinity)
        
    }
}

struct KeyValueRow: View {
    let modifier: Modifier
    
    // TODO: Use Theme
    let modifierFont: Font = Theme.modifierFont
    
    var body: some View {
        Text("\(modifier.rawValue) = \(modifier.description)")
            .font(modifierFont)
        }
    }

#Preview {
    KeySymbolView()
}
