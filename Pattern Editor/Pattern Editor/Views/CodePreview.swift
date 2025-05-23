//
//  CodePreview.swift
//  Pattern Editor
//
//  Created by Pankaj Kumar Rana on 5/23/25.
//

import SwiftUI

struct CodePreview: View {
//    @Binding var name: String
    
    let name: String
    let codeString: String
    
    var body: some View {
        
        Group {
            if name.isEmpty {
                ContentUnavailableView("Name Your Pattern", image: "pencile")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red.opacity(0.2))
            } else {
                ScrollView{
                    HStack {
                        Text(codeString)
                            .font(.largeTitle)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                }.padding()
                    .background(Color.blue.opacity(0.2))
                    .clipShape(.rect(cornerRadius: 15))
                    .onDrag {
                        NSItemProvider(object: codeString as NSItemProviderWriting)
                    }
            }
        }
    }
}


#Preview {
    CodePreview(
        name: "pattern",
        codeString:
"""
        if name.isEmpty {
                ContentUnavailableView("Name Your Pattern", image: "pencile")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red.opacity(0.2))
            } else {
                ScrollView{
                    HStack {
                        Text(codeString)
                            .font(.largeTitle)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                }.padding()
                    .background(Color.blue.opacity(0.2))
                    .clipShape(.rect(cornerRadius: 15))
                    .onDrag {
                        NSItemProvider(object: codeString as NSItemProviderWriting)
                    }
            
"""
    )
}
