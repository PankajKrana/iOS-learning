//
//  CancelSaveAlarm.swift
//  Alarm
//
//  Created by Pankaj Kumar Rana on 5/11/25.
//

import SwiftUI

struct CancelSaveAlarm: View {
    let currentAlarmIndex: Int?
    @Binding var alarmModel: AlarmModel
    
    @EnvironmentObject var lnManager: LocalNotificationManager
    
    @Environment(\.presentationMode) var presentation
    
    
    var body: some View {
        HStack {
            // Cancel
            Button(action: {
                self.presentation
                    .wrappedValue
                    .dismiss()
            }, label: {
                Text("Cancel")
            })
            Spacer()
            // Save
            Button(action: {
                if let currentAlarmIndex = currentAlarmIndex {
                    // Save alarm
                    lnManager
                        .alarmViewModels[currentAlarmIndex] = alarmModel
                } else {
                    lnManager
                        .safeAppend(localNotification: alarmModel)
                }
                
                // Schedule alarm
                Task {
                    if alarmModel.alarmEnabled {
                        await lnManager
                            .schedule(localNotification: alarmModel)
                    } else {
                        lnManager.removeRequest(id: alarmModel.id)
                    }
                }
                
                self.presentation
                    .wrappedValue
                    .dismiss()
            }, label: {
                Text("Save")
            })
        }
    }
}

#Preview {
    CancelSaveAlarm(currentAlarmIndex: nil, alarmModel: .constant(.DefaultAlarm()))
        .environmentObject(LocalNotificationManager())
}
