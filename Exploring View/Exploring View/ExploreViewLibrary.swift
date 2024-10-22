//
//  ExploreViewLibrary.swift
//  Exploring View
//
//  Created by Pankaj Kumar Rana on 19/10/24.
//

import SwiftUI

struct ExploreViewLibrary: View {
    
    let text: [String] = ["Exploring View", "Hello World"]
    @State var index = 0
    
    @State private var bgColor =
    Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    @State private var date = Date()
    
    @State private var speed = 50.0
    @State private var isEditing = false

    
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            Form {
                Section(header: Text("Notifications")) {
                    Text(text[index])
                        .font(.largeTitle)
                        .padding()
                    
                    Button("A Button") {
                        index = (index + 1) % text.count
                    }
                    
                }
                
                Section(header: Text("User Profiles")) {
                    
                    ColorPicker(/*@START_MENU_TOKEN@*/"Title"/*@END_MENU_TOKEN@*/, selection: $bgColor)
                    
                    
                    // Binding using $ sign in the code
                    DatePicker(selection: $date, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                    
                    
                    Slider(
                        value: $speed,
                        in: 0...100,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                    )
                    Text("Speed is \(speed)")
                    if speed > 80 {
                        Text("Slow Down!")
                    }
                }
//                Button("Clear Image Cache") {}
            }
        }
    }
}



#Preview {
    ExploreViewLibrary()
}
