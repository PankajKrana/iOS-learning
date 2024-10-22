//
//  User Info View.swift
//  Group Box
//
//  Created by Pankaj Kumar Rana on 20/10/24.
//

import SwiftUI

struct User_Info_View: View {
    let name: String
    let email: String
    let phone: String
    let address: String
    
    var body: some View {
        GroupBox {
            VStack(alignment:.leading) {
                Text("Name: \(name)")
                Text("Email: \(email)")
                
                GroupBox {
                    VStack(alignment: .leading){
                        Text("Phone: \(phone)")
                        Text("Address: \(address)")
                        
                    }
                    
                } label: {
                    Label("Contact Info", systemImage: "phone.circle")
                }
                .padding(.vertical)
                
            }
        } label: {
            Label("User Info", systemImage: "person.crop.circle")
        }
        .padding()
        
    }
}

#Preview {
    User_Info_View(
        name: "John ",
        email: "johen12@gmail.com",
        phone: "+91 7238742923",
        address: "Los Anglus 123 street 12345 Los Angeles"
    )
}
