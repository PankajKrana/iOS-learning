//
//  ResultsTopRow.swift
//  BodyShapeApp
//
//  Created by Pankaj Kumar Rana on 5/31/25.
//

import SwiftUI

struct ResultsTopRow: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Result")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Nov 2025")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
            }
            Spacer()
            
            Image(systemName: "arrow.uturn.backward")
                .foregroundStyle(.white)
                .padding()
                .background(Color.black)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ResultsTopRow()
        .padding()
}
