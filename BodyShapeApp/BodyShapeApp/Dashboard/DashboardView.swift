
import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            IconRight(imageName: "circle.grid.cross.fill", angle: 45)
                .padding()
            
            VStack(alignment: .leading, spacing: 20) {
                WelcomeMessageView(userName: "Emily")
                
                WeightView(
                    weight: 61.2,
                    weightUnits: "lb"
                )
                
                DataSummaryView(arrow: "arrow.down", calories: "4.569", numberOfPeopleShowing: 2)
                
                Spacer()
                
                ButtonsView()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding() 
            
            Spacer()

        }
    }
}

#Preview {
    DashboardView()
}
