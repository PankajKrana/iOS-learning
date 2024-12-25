//
//  MagnificationStoreStateView.swift
//  Gesture Animation
//
//  Created by Pankaj Kumar Rana on 11/25/24.
//

import SwiftUI

struct MagnificationStoreStateView: View {
    
    @Binding  var scaleFactor: CGFloat
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                NiceTextView(
                    text: "Hello world",
                    bgColor: .black,
                    fgColor: .orange,
                    radius: 10
                )
                .scaleEffect( scaleFactor)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            withAnimation(.spring()){
                                scaleFactor = value
                            }

                        }
                )
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
            }
            .navigationTitle("Magnify and Store State")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MagnificationStoreStateView(scaleFactor: .constant(1.0))
}
