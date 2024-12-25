//
//  RotationSectionView.swift
//  Gesture Animation
//
//  Created by Pankaj Kumar Rana on 11/28/24.
//

import SwiftUI

struct RotationSectionView: View {
    @State private var rotation: Double = 0.0
    var body: some View {
        Section {
            
            NavigationLink(#"Drag Gesture "Go Back""#, destination: {
                RotationGestureBounceBack()
            })
            
            NavigationLink(#"Drag Gesture "Stay Still""#, destination: {
                RotateGestureView()
            })


            NavigationLink(destination: {
                RotateGestureStoreState(rotation: $rotation)
                
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
    RotationSectionView()
}
