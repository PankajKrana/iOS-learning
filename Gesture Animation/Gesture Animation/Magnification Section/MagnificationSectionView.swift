//
//  MagnificationSectionView.swift
//  Gesture Animation
//
//  Created by Pankaj Kumar Rana on 11/25/24.
//

import SwiftUI

struct MagnificationSectionView: View {
    
    @State private var scaleFactor: CGFloat = 1.0
    var body: some View {
        Section {
            
            NavigationLink(#"Magnification Gesture "Go Back""#, destination: {
                MagnificationBounceBackView()
            })
            
            NavigationLink(#"Magnification Gesture "Stay Still""#, destination: {
                MagnificationView()
            })


            NavigationLink(destination: {
                MagnificationStoreStateView(scaleFactor: $scaleFactor)
            }, label: {
                VStack(alignment: .leading) {
                    Text("Magnification Gesture")
                    Text("Store State")
                        .fontWeight(.thin)

                }
            })
            
        } header: {
            Text("Magnification Gesture Demo")
        }

        
    }
}

#Preview {
    Form {
        MagnificationSectionView()
    }
}
