//
//  DragSectionView.swift
//  Gesture Animation
//
//  Created by Pankaj Kumar Rana on 11/28/24.
//

import SwiftUI

//struct DragSectionView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}


struct DragSectionView: View {
    
    @State private var scaleFactor: CGFloat = 1.0
    @State private var offset: CGSize = .zero
    var body: some View {
        Section {
            
            NavigationLink(#"Drag Gesture "Go Back""#, destination: {
                DragGestureBounceBack()

            })
            
            NavigationLink(#"Drag Gesture "Stay Still""#, destination: {
                DragGestureView()
            })


            NavigationLink(destination: {
                DragGestureStoreState(endOffset: $offset)

            }, label: {
                VStack(alignment: .leading) {
                    Text("Drag Gesture")
                    Text("Store State")
                        .fontWeight(.thin)

                }
            })
            

        } header: {
            Text("Drag Gesture Demo")
        }

        
    }
}

#Preview {
    DragSectionView()
}
