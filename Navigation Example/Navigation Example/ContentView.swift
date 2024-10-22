//
//  ContentView.swift
//  Navigation Example
//
//  Created by Pankaj Kumar Rana on 05/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var age : String = ""
    var body: some View {
        NavigationStack {
            VStack {
                VStack (alignment: .leading) {
                    Text("Enter Your Name ")
                    TextField("Name", text: $name)
                }
                
                VStack (alignment: .leading) {
                    Text("Enter Your Age ")
                    TextField("Age", text: $age)
                        .keyboardType(.numberPad)
                }
                
                Spacer()
                
                NavigationLink {
                    DrinkingView(name: name, age: age)
                }label: {
                    Text("Okey")
                        .font(.title)
                        .padding()
                        .overlay {
                            Capsule()
                                .stroke()
                            
                        }
                    
                }.disabled(true)
                .padding()
                .navigationTitle("Navigation Example")
            }
        }
    }
}
        


#Preview {
    ContentView()
}
