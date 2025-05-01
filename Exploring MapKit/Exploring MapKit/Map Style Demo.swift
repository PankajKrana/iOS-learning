//
//  Map Style Demo.swift
//  Exploring MapKit
//
//  Created by Pankaj Kumar Rana on 4/21/25.
//

import SwiftUI
import MapKit

struct Map_Style_Demo: View {
    let center: CLLocationCoordinate2D
    
    @State private var mapStyle: MapStyle = .standard
    
    let spam = MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)
    var region: MKCoordinateRegion{
        MKCoordinateRegion(
        center: center,
        span: spam)

    }
    
    @State private var positio: MapCameraPosition = MapCameraPosition.automatic
    var body: some View {
        ZStack {
            Map(position: $positio, interactionModes: [.all])
                .mapStyle(mapStyle)
                .onAppear {
                    positio = .region(region)
                }
            
            VStack {
                Spacer()
                
                HStack {
                    Button {
                        mapStyle = .standard
                    } label: {
                        Text("Standard")
                            .padding()
                            .clipShape(.rect(cornerRadius: 8))
                    }
                    
                    Button {
                        mapStyle = .hybrid
                    } label: {
                        Text("Hybrid")
                            .padding()
                            .clipShape(.rect(cornerRadius: 8))
                    }

                    
                    Button {
                        mapStyle = .imagery
                    } label: {
                        Text("Imagery")
                            .padding()
                            .clipShape(.rect(cornerRadius: 8))
                    }


                }
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(.pink)
                .padding()
            }

        }
        
    }
}

#Preview {
    Map_Style_Demo(center: .paris)
}
