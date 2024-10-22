import SwiftUI

struct ContentView: View {
    
    @State private var activeTab: TabModel = .home
    
    var body: some View {
        VStack {
            // Main content depending on the selected tab
            switch activeTab {
            case .home:
                Text("Welcome to Home")
                    .font(.largeTitle)
                    .padding()
            case .search:
                Text("Search for something")
                    .font(.largeTitle)
                    .padding()
            case .profile:
                Text("This is your profile")
                    .font(.largeTitle)
                    .padding()
            case .credit:
                Text("This is credit information")
                    .font(.largeTitle)
                    .padding()
            }
            
            Spacer() // This pushes the CustomTabBar to the bottom
            
            // CustomTabBar at the bottom
            CustomTabBar(activeTab: $activeTab)
                .padding(.bottom, 10) // Optional padding for spacing from the bottom
        }
    }
}

#Preview {
    ContentView()
}
