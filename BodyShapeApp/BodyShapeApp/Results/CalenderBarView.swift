//
//  CalenderBarView.swift
//  BodyShapeApp
//
//  Created by Pankaj Kumar Rana on 5/31/25.
//

import SwiftUI


struct DailyDataModel: Identifiable {
    let id = UUID()
    let day: String
    let percentage: CGFloat
    let amount: Int
}


struct CalenderBarView: View {
    let selectedDay = "Thu"
    let dailyData: [DailyDataModel]
    
    let height: CGFloat
    let offsetY: CGFloat
    let selectedWeight: Int
    let selectedWeightUnit: String = "lb"
    
    let selectedDim = 70.0
    
    var body: some View {
        Rectangle()
            .stroke(
                style: StrokeStyle(
                    lineWidth: 0.2,
                    lineCap: .square,
                    dash: [1,5]))
            .frame(height: 1)
    }
}

#Preview {
    CalenderBarView(
        dailyData: [
            .init(
                day: "Mon",
                percentage: 0.6,
                amount: 1
            ),
            .init(
                day: "Tue",
                percentage: 0.3,
                amount: 3
            ),
            .init(
                day: "Wed",
                percentage: 0.5,
                amount: 12
            ),
            .init(
                day: "Thu",
                percentage: 0.0,
                amount: 12
            ),
            .init(
                day: "Fri",
                percentage: 0.3,
                amount: 15
            )
            
        ],
        height: 100,
        offsetY: -5,
        selectedWeight: 13
    )
}
