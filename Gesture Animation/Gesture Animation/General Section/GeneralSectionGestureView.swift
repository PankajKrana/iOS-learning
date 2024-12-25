//
//  GeneralSectionGestureView.swift
//  Gesture Animation
//
//  Created by Pankaj Kumar Rana on 11/28/24.
//

import SwiftUI

struct GeneralSectionGestureView: View {
    
    var body: some View {
        Section {
            
            NavigationLink(#"General Section Gesture""#, destination: {
                AllGestureDemo()
            })
            

        } header: {
            Text("General Section Gesture View")
        }

        
    }
}

#Preview {
    GeneralSectionGestureView()
}
