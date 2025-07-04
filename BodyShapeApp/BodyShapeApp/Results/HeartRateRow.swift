//
//  HeartRateView.swift
//  BodyShapeApp
//
//  Created by Pankaj Kumar Rana on 6/2/25.
//

import SwiftUI

struct HeartRateRow: View {
    var body: some View {
        HStack {
            HeartRate(month: "Oct", day: 12, year: 2022)
            
            Spacer()
            
            Text("256")
                .font(.largeTitle)
                .fontWeight(.black)
            Text("bmp")
                .font(.subheadline)
                .fontWeight(.bold)

        }
        .padding(.horizontal)
    }
}

struct HeartRate: View {
    let month: String
    let day: Int
    let year: Int
    
    var body: some View {
        HStack {
            HeartBoltView()
            VStack(alignment: .leading) {
                Text("Heart Rate")
                Text("\(day) \(month) \(year)")
                .font(.headline)
                .foregroundStyle(.gray)
            }
        }
    }
}

struct HeartBoltView: View {
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .imageScale(.large)
            
            Image(systemName: "bolt.horizontal.fill")
                .imageScale(.small)
                .offset(x: -3)
                .scaleEffect(y: 0.7)
                .foregroundStyle(lightGreen)
        }
        .padding()
        .background(lightGreen)
        .clipShape(Circle())
    }
}


#Preview {
    HeartRateRow()
}
