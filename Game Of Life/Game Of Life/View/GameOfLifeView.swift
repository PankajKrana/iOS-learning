
import SwiftUI

struct GameOfLifeView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                // Title
                TitleView()
                Spacer()
                
                // Boards
                BoardView()
                
                Spacer()
                
                // Control
                
                ControleView()
            }
            .padding()
        }
    }
}


 
#Preview("Light Mode") {
    GameOfLifeView()
        .preferredColorScheme(.light)
    
}


#Preview("Dark Mode") {
    GameOfLifeView()
        .preferredColorScheme(.dark)
}
