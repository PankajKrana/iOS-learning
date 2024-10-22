//
//  ContentView.swift
//  Fun With Frame
//
//  Created by Pankaj Kumar Rana on 19/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("Upper Left")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            Text("Upper Right")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            Text("Lower Left")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            Text("Lower Right")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            
            
            //Center alignment text View
            
            Text("Center Top")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)


            
            Text("Center Bottom")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)



            
            Text("Center Left")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)



            
            Text("Center Right")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)

            // Text
            Text("Center")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)



            
        }
        .fontWeight(.semibold)
        .font(.headline)
        .foregroundStyle(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}
