//
//  MainHotkeysView.swift
//  Brevis
//
//  Created by Pankaj Kumar Rana on 3/25/25.
//

import SwiftUI

struct MainHotkeysView: View {
    @State private var searchQuery = " "
    var vm : HotkeyCategoryViewModel = HotkeyCategoryViewModel()
    
    let listStyle = Theme.listStyle
    
    var body: some View {
        NavigationStack{
            Form {
                List(vm.hotkeyCategoryModels) { hotkeyCategory in
                    Text( hotkeyCategory.name)
                    HotkeySectionView(hotkeyCategoryName: hotkeyCategory.name, hotkeyModels: hotkeyCategory.hotkeyModels, searchQuery: searchQuery)
                    
                }
                .listStyle( listStyle)
                
                
            }
            .navigationTitle("Xcode Hotkeys")
            .searchable(text: $searchQuery, prompt: "Search...")
            
            KeySymbolView()
        }
        .frame(minWidth: Theme.frameWidth, minHeight: Theme.frameHeight)
        
    }
}

#Preview {
    MainHotkeysView()
}
