//
//  EnableNotifications.swift
//  Alarm
//
//  Created by Pankaj Kumar Rana on 5/4/25.
//

import SwiftUI

struct EnableNotifications: View {
    var body: some View {
        ZStack {
            FourCoolCircles()
            
            VStack {
                Spacer()
                CoolTextView(text: LocalizedStringKey("Enable notifications, please"), size: 48)
                    .multilineTextAlignment(.center)
                Spacer()
                
                Button(action: {
                    // TODO: Enable notifications
                    print("TODO: Enabled")
                }, label: {
                    ButtonView(text: "enable")
                        .padding()
                })
            }
        }
    }
}

#Preview {
    EnableNotifications()
}
