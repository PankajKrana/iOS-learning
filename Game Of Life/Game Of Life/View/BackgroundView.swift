

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Color(.bg).opacity(0.5) 
            .ignoresSafeArea()
    }
}


#Preview {
    BackgroundView()
}
