//
//  ContentView.swift
//  Enviornment Example
//
//  Created by Pankaj Kumar Rana on 11/9/24.
//

import SwiftUI

@Observable
class PersonViewModel {
    var firstName: String = "Alex"
    var lastName: String = "Xo"
    
    var getName: String {
        "\(firstName) \(lastName)"
    }
    
    func chagePerson() {
        let name: [(String,String)] = [
            ("Big","Bird"),
            ("Elmo",""),
            ("Memo","Monster"),
            ("Cow", ""),
            ("Albert", "the Grouch "),
            ("Bert", " ")
        ]
        
        let randomName: (String,String) = name.randomElement()!
        
        firstName = randomName.0
        lastName = randomName.1
        
    }
    
}
struct ContentView: View {
    @Environment(PersonViewModel.self) private var personViewModel
    var body: some View {
        @Bindable var personViewModel =  personViewModel
        
        VStack {

            Text(personViewModel.getName)
            
            TextField("Enter Your First Name", text: $personViewModel.firstName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            Button("Change Person", action: {
                personViewModel.chagePerson()
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(PersonViewModel())
}
