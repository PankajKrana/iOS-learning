//
//  AlarmToggleView.swift
//  Alarm
//
//  Created by Pankaj Kumar Rana on 5/11/25.
//

import SwiftUI

struct AlarmToggleView: View {
    @Binding var alarmEnabled: Bool
    
    var body: some View {
        HStack {
            GrayedTextView(text: "alarm")
            Spacer()
            TheToggleView(isOn: $alarmEnabled)
        }
        .padding()
    }
}

#Preview {
    VStack {
        AlarmToggleView(alarmEnabled: .constant(true))
        
        AlarmToggleView(alarmEnabled: .constant(false))

    }
    
}
