//
//  ResultView.swift
//  BodyShapeApp
//
//  Created by Pankaj Kumar Rana on 5/31/25.
//

import SwiftUI

struct ResultView: View {
    let selectedWeightUnits = "lb"
    var body: some View {
        VStack {             VStack(spacing: 0) {
                ResultsTopRow()
                    .padding()
                
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
                            percentage: 1,
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
            
            VStack(spacing: 0) {
                MainActivitesView(activities: [
                    .init(dim: 150, activityName: "Running", activityImage: "figure.run"),
                    .init(dim: 150, activityName: "Biking", activityImage: "figure.outdoor.cycle"),
                    .init(dim: 150, activityName: "Climbing", activityImage: "figure.climbing"),
                    .init(dim: 150, activityName: "Skating", activityImage: "figure.skating")
                ])
                
                HStack {
                    Text("Your plan for December, 2022")
                    
                    Spacer()
                    
                    Text("1.8")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(selectedWeightUnits)
                    
                }.padding(.horizontal)

            }
            
            HeartRateRow()
            
            // CONTINUE BUTTON
            Button(action: {
                print("Button pressed")
            }, label: {
                Text("Continue")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        Capsule()
                            .fill(.black)
                    )
                    .padding()
                
//                    .background(
//                        Capsule()
//                            .fill(Color.black)
//                            .frame(width: 350)
//                    )
            })

        }
    }

}

#Preview {
    ResultView()
}
