
import SwiftUI

struct WeightView: View {
    let weight: CGFloat
    let weightUnits: String
    
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text("\(weight, specifier: "%.2f")")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text(weightUnits)
                        .font(.caption)
                }
                
                Text("Current Weight")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                
                
            }
            
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("2.5")
                        .font(.title)
                    
                    Text(weightUnits)
                        .font(.caption)
                        .fontWeight(.semibold)

                }
                Rectangle()
                    .fill(Color.green)
                    .frame(width: screenWidth / 2,height: 10)

                                
                Text("Left To Grain")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
        }
        
            
    }
}

#Preview {
    WeightView(
        weight: 61.2,
        weightUnits: "lb"
    )
}

