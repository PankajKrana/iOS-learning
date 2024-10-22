
import SwiftUI

struct SettingsView: View {
    @State private var enableNotification = true
    @State private var darkMode = false
    
    var body: some View {
        GroupBox {
            VStack(alignment: .leading) {
                Toggle("Enable Notifications", isOn: $enableNotification)
                Toggle("dark Mode", isOn: $darkMode)
            }
        } label: {
            Label("settings", systemImage: "gearshape")
        }
        .padding()
    }
}

#Preview {
    SettingsView()
}
