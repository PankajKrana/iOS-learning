//
//  Map Controls View.swift
//  Exploring MapKit
//
//  Created by Pankaj Kumar Rana on 4/21/25.
//

import SwiftUI
import MapKit

struct Map_Controls_Demo: View {
    let columbia: CLLocationCoordinate2D = .columbiaUniversity
    
    @State private var position: MapCameraPosition  = .userLocation(fallback: .automatic)
    private let initialPosition: MapCameraPosition  = .userLocation(fallback: .automatic)
    var body: some View {
        VStack {
            Map(position: $position) {
                Marker("Columbia University", coordinate: .columbiaUniversity)
            }
            .mapControls {
                MapScaleView()
                
                MapCompass()
                
                MapPitchToggle()
            }
            
            Button("Reset Map Position") {
                withAnimation {
                    position = initialPosition
                }
            }.buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    Map_Controls_Demo()
}
