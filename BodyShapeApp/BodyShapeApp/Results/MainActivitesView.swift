//
//  MainActivitesView.swift
//  BodyShapeApp
//
//  Created by Pankaj Kumar Rana on 6/2/25.
//

import SwiftUI

struct MainActivitesView: View {
    let activities: [Activities]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(activities) { activity in
                    CurrentActivitiesView(activity: activity)
                }
            }
            .padding()
        }
    }
}


struct Activities: Identifiable {
    let id = UUID()
    let dim: CGFloat
    let activityName: String
    let activityImage: String
}

#Preview {
    MainActivitesView(activities: [
        .init(dim: 150, activityName: "Running", activityImage: "figure.run"),
        .init(dim: 150, activityName: "Biking", activityImage: "figure.outdoor.cycle"),
        .init(dim: 150, activityName: "Climbing", activityImage: "figure.climbing"),
        .init(dim: 150, activityName: "Skating", activityImage: "figure.skating")
    ])
}
