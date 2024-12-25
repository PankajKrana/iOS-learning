//
//  AddressView.swift
//  Bindable Example
//
//  Created by Pankaj Kumar Rana on 11/9/24.
//

import SwiftUI

@Observable
class Address: Identifiable {
    var street: String
    let city: String
    let state: String
    let postalCode: Int
    let country: String
    
    
    init(
        street: String = "\((1..<300).randomElement() ?? 1) Main State",
        city: String = " Cityvill",
        state: String = "Some State",
        postalCode: Int = 12345,
        country: String = "USA") {
        self.street = street
        self.city = city
        self.state = state
        self.postalCode = postalCode
        self.country = country
    }
}

struct AddressView: View {
    @State var addresses = [Address(), Address(), Address()]
    
    var body: some View {
        List(addresses) { address in
            @Bindable var address = address
            
            TextField(address.street, text: $address.street)
        }
    }
}

#Preview {
    AddressView()
}
