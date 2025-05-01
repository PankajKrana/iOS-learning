//
//  ParisView.swift
//  Exploring MapKit
//
//  Created by Pankaj Kumar Rana on 4/19/25.
//

import SwiftUI
import MapKit

struct AgraView: View {
    @State private var cameraPosition: MapCameraPosition = .automatic
    
    @State private var delta: Double = 0.15
    @State private var offSet: CGSize = .zero
    @State private var isPinned: Bool = false
    
    var span: MKCoordinateSpan {
        MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
    }
    
    var agraRegion: MKCoordinateRegion {
        MKCoordinateRegion(center: .tajMahal, span: span)
    }
    
    var body: some View {

        ZStack(alignment: .bottom) {
            
            Map(position: $cameraPosition) {
                
            }
            ControlsView(delta: $delta)
        }.onAppear{
            cameraPosition = .region(agraRegion)
        }
        .onChange(of: delta) { _, _ in
            cameraPosition = .region(agraRegion)
        }

    }
}


struct ZoomSliderView: View {
    @Binding var delta: Double
    @State private var currentOffset: CGSize = .zero
    @State private var endOffset: CGSize = .zero
    @State private var isPinnded: Bool = false
    let lower = 0.05
    let upper = 0.3
    
    var offset: CGSize {
        CGSize(
            width: currentOffset.width + currentOffset.width,
            height:  currentOffset.height + currentOffset.height
        )
    }
    
    var body: some View {
        VStack {
            
            Text("Adjust Zoom Lavel")
                .font(.subheadline)
                .padding(.bottom, 5)
            
            Slider(value: $delta, in: lower...upper, label: { Text("Agra Landmart")}) {
                Text("\(lower.formatted())")
                    .foregroundStyle(.secondary)
            } maximumValueLabel: {
                Text("\(upper.formatted())")
                    .foregroundStyle(.secondary)

            }
            .tint(.purple)
            .padding(.horizontal)
            
            HStack {
                Text("Close-up")
                Spacer()
                Text("Wide View")
                
            }
            .font(.caption)
            .foregroundStyle(.secondary)
            
            // Pin Button
            Button {
                isPinnded.toggle()
                withAnimation {
                    endOffset = .zero
                    currentOffset = .zero
                }
            } label: {
                Label("Pin", systemImage: isPinnded ? "pin.fill" : "pin")
                    .font(.caption)
                    .foregroundStyle(isPinnded ? .blue : .secondary)
                
                    .padding(5)
                    .padding(.top, 5)
            }

            
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(.rect(cornerRadius: 12))
        .shadow(radius: 10)
        .padding(.horizontal, 20)
        .padding(.bottom, 40)
        .offset(offset)
        .gesture (
            DragGesture()
                .onChanged { value in
                    withAnimation(.spring()){
                        currentOffset = value.translation
                    }

                }
                .onEnded { _ in
                    if isPinnded { // Don't Bpunce Back
                        endOffset =     CGSize(
                            width: currentOffset.width + currentOffset.width,
                            height:  currentOffset.height + currentOffset.height
                        )
                        // Reset offset
                        currentOffset = .zero
                    } else { // Bounce Back
                        withAnimation(.spring(.bouncy)) {
                            endOffset = .zero
                            currentOffset = .zero
                        }
                        
                    }
                }
        )
    }
}


struct AgraTitleView: View {
    var body: some View {
        Text("Agra View")
            .font(.largeTitle)
            .bold()
            .padding()
            .foregroundStyle(
                LinearGradient(
                    colors: [.blue, .purple],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 12))
            .shadow(radius: 10)
            .padding()

    }
}

struct ControlsView: View {
    @Binding var delta: Double
    var body: some View {
        
        VStack {
            AgraTitleView()
            
            Spacer()
            
            ZoomSliderView(delta: $delta)

        }
        
    }
}


#Preview {
    AgraView()
}
