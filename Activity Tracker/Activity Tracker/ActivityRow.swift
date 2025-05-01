//
//  ActivityRow.swift
//  Activity Tracker
//
//  Created by Pankaj Kumar Rana on 4/13/25.
//

import SwiftUI

struct ActivityRow: View {
    let activity: Activity
    
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(activity.name)
                    .font(.headline)
                
                Text("Hours per day: \(activity.hoursPerDay.formatted())")
            }
            Spacer()
        }
    }
}

#Preview {
    ActivityRow(activity: .init(name: "Eat Hummus", hoursPerDay: 3))
        .padding()
}
