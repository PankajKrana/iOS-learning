//
//  UsingAlignmentModifierView.swift
//  Fun With Frame
//
//  Created by Pankaj Kumar Rana on 20/10/24.
//

import SwiftUI

struct UsingAlignmentModifierView: View {
    var body: some View {
        ZStack {
            Text("Upper Left")
                .align(alignment: .topLeading)


            Text("Upper Right")
                .align(alignment: .topTrailing)
            
            Text("Lower Left")
                .align(alignment: .bottomLeading)
            
            Text("Lower Right")
                .align(alignment: .bottomTrailing)
            
            //Center alignment text View
            
            Text("Center Top")
                .align(alignment: .top)

            
            Text("Center Bottom")
                .align(alignment: .bottom)


            
            Text("Center Left")
                .align(alignment: .leading)


            
            Text("Center Right")
                .align(alignment: .trailing)
            
            // Text
            Text("Center")
                .align(alignment: .center )


            
        }
        .fontWeight(.semibold)
        .font(.headline)
        .foregroundStyle(.orange)
        .padding()
    }

}

#Preview {
    UsingAlignmentModifierView()
}
