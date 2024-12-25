//
//  ContentView.swift
//  EnviornmentObject Example
//
//  Created by Pankaj Kumar Rana on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("My name is: \(userViewModel.name )")
                    .font(.title)
                
                NavigationLink("Update Data", destination: UserDataView())
            }
            .padding()
            .navigationTitle("Parent View")
        }
    }
    
}

struct UserDataView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    var body: some View {
        VStack{
            Text("Name: \(userViewModel.name)")
            TextField("Enter Name", text: $userViewModel.name)
                .padding()
                .background(Color.blue.opacity(0.3))
                .padding()
        }
        .navigationTitle("Enter Name View")
    }
}
#Preview {
    ContentView()
        .environmentObject(UserViewModel())
    
}
