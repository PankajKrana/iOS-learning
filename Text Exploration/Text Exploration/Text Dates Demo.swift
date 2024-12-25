//
//  Text Dates Demo.swift
//  Text Exploration
//
//  Created by Pankaj Kumar Rana on 12/19/24.
//

import SwiftUI

struct Text_Dates_Demo: View {
    let eventDate = Date(timeIntervalSinceNow: 15)
    let event  = Date()
    let dateInterval = DateInterval(start: Date(), end: Date(timeIntervalSinceNow: 30))
    var body: some View {
        
        Form {
            Section("Intervals") {
                Text(Date.now...Date.now.addingTimeInterval(60))
                
                Text(dateInterval)

            }
            
            Section("Relative, offset timmer Styles") {
                Text("Event will occure at \(eventDate, style: .relative)")
                
                Text("Event will occure at \(eventDate, style: .offset)")
                
                Text("Event will occure at \(eventDate, style: .timer)")
                
            }
            
            Section("formate date and time ") {
                Text(Date(), format:  .dateTime)
                
                Text(Date(), format: .dateTime.hour())
                
                Text(Date(), format: .dateTime.minute())
                
                Text(Date(), format: .dateTime.year())
                
                Text(Date(), format: .dateTime.minute().hour())
                
                Text(Date(), format: .dateTime.hour().minute())

                Text(Date(), format: .dateTime.minute().hour().year())


            }
            


        }
        
    }
}

#Preview {
    Text_Dates_Demo()
}
