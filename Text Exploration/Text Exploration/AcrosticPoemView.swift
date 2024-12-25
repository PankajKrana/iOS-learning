//
//  ContentView.swift
//  Text Exploration
//
//  Created by Pankaj Kumar Rana on 12/6/24.
//

import SwiftUI

struct LineOfPoetry: Identifiable {
    let id = UUID()
    let line: String
    
    var firstChar : String {
        if let first = line.first {
            return String(first)
        }else {
            return ""
        }
    }
    var remaingLine : String{
        String(line.dropFirst())
    }
}

struct AcrosticPoemView: View {
    
    let poem: [LineOfPoetry] = [
        .init(line: "Dancing in the moonlight, free"),
        .init(line: "Reaching for the stars, we see."),
        .init(line: "Every wish, a whispered stream,"),
        .init(line: "Aiming high, in every scheme."),
        .init(line: "Moments woven with desire,"),
        .init(line: "Soaring dreams, higher and higher."),
    ]
    
    
    var body: some View {
        VStack {
            Text("\(Text("D").foregroundStyle(.red).bold().font(.largeTitle))reams \(Text("very cool").foregroundStyle(.green))")
                .font(.title)
            
            
            VStack(alignment: .leading) {
                ForEach(poem) { line in
                    Text("\(Text(line.firstChar).foregroundStyle(.red).bold()) \(line.remaingLine)")
                }
                .font(.headline)
            }
            Spacer()
        }
        .padding()
    }
}

func colorFirstLatterOfLineOfPoetry(line: LineOfPoetry, color: Color = .blue) -> Text {
    Text("\(Text(line.firstChar).foregroundStyle(color).bold()) \(line.remaingLine)")
    
}

#Preview {
    AcrosticPoemView()
}
