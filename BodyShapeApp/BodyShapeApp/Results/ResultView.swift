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
        VStack(spacing: 30) { // TODO: Change this value
            VStack(spacing: 0) {
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
            
            Text("MAIN ACTIVITIES")
            
            HStack {
                Text("Your plan for December, 2022")
                
                Spacer()
                
                Text("1.8")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(selectedWeightUnits)
                
            }.padding(.horizontal)
            
            Text("HEART GRID ROW")
            
            // CONTINUE BUTTON
            // Capsule Button
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
