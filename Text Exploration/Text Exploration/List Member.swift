//
//  List MemberStyle Measurments Demo.swift
//  Text Exploration
//
//  Created by Pankaj Kumar Rana on 12/19/24.
//

import SwiftUI

struct List_MemberStyle_Measurments_Demo: View {
    let sesameStreetNames = [
        "Elmo",
        "Big Bird",
        "Cookie Monster",
        "Oscar the Grouch",
        "Abbay Cadabby"
    ]
    
    let even = [0, 2, 4, 6, 8, 10]
    
    let length = Measurement(value: 225, unit: UnitLength.centimeters)
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20){
            Text(sesameStreetNames, format: .list(type: .and))
            Text(sesameStreetNames, format: .list(type: .or))
            Text(even, format: .list(memberStyle: .number, type: .and))
            Text(even, format:  .list(memberStyle: .percent, type: .or))
            Text(length, format: .measurement(width: .wide))
            Text(length, format: .measurement(width: .narrow))
            Text(length, format: .measurement(width: .abbreviated))
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    List_MemberStyle_Measurments_Demo()
}
