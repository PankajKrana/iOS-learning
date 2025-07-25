//
//  CurrentActivitiesView.swift
//  BodyShapeApp
//
//  Created by Pankaj Kumar Rana on 5/31/25.
//

import SwiftUI

struct CurrentActivitiesView: View {
    let activity: Activities
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.black, lineWidth: 1)
            .overlay(
                HStack {
                    VStack(alignment: .leading) {
                        Image(systemName: activity.activityImage)
                            .padding()
                            .background(lightPurple)
                            .clipShape(Circle())
                        
                        Text(activity.activityName)
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    Spacer()
                }.padding(.horizontal)
            )
            .frame(width: activity.dim, height: activity.dim)
    }
}


#Preview {
    CurrentActivitiesView(activity: .init(dim: 150, activityName: "Running", activityImage: "figure.run") )
}
