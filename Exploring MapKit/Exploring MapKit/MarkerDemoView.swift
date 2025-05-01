//
//  ContentView.swift
//  Exploring MapKit
//
//  Created by Pankaj Kumar Rana on 4/19/25.
//

import SwiftUI
import MapKit

struct MarkerDemoView: View {
    var body: some View {
        Map {
            ForEach(Locations.locationsInSpain) { location in
                Marker(
                    location.name,
                    coordinate: location.coordinate
                ).tint(.blue)
            }
        }
    }
}

#Preview {
    MarkerDemoView()
}
