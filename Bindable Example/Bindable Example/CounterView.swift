//
//  CounterView.swift
//  Bindable Example
//
//  Created by Pankaj Kumar Rana on 11/9/24.
//

import SwiftUI

@Observable
class CounterViewModel {
    var counter = 0
}

struct CounterView: View {
    
    @Bindable var vm: CounterViewModel
    var body: some View {
        VStack {
            Text("Counter: \(vm.counter)")
            
            ButtonView(count: $vm.counter)
        }
    }
}

struct ButtonView: View {
    @Binding var count: Int
    var body: some View {
        Button(
            action: {count += 1},
            label: {
                Text("Increment")
            }
        )
    }
}

#Preview {
    CounterView(vm: CounterViewModel())
}
