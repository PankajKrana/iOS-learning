
import SwiftUI

struct TitleView: View {
    
    var gradientColor: [Color] {
        [.gradColor1, .gradColor2, .gradColor3]
    }
    
    
    var body: some View {
        Text("Game Of Life!")
            .font(.largeTitle)
            .bold()
            .foregroundStyle(
                LinearGradient(
                    colors: gradientColor,
                    startPoint: .leading,
                    endPoint: .trailing
                )
                
            )
            .shadow(
                color: .shadow,
                radius: 10,
                x: 0,
                y: 5
            )
    }
}

#Preview {
    TitleView()
}
