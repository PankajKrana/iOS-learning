//
//  MainView.swift
//  Text Exploration
//
//  Created by Pankaj Kumar Rana on 12/19/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Acrostic Poem") {
                    AcrosticPoemView()
                }
                NavigationLink("MarkDemo") {
                    Markdown_Demo()
                }
                NavigationLink("List MemberStyle and measrement") {
                    List_MemberStyle_Measurments_Demo()
                }
                NavigationLink("OpenUrl Demo") {
                    OpenURLAction_Demo()
                }
                NavigationLink("Display code with markdown ")  {
                    Display_Code_With_Markdown()
                }
                
                NavigationLink("Attribute String Style")  {
                    Attributed_String_Demo()
                }
                
                NavigationLink("Pluralization Demo") {
                    Pluralization_Demo()
                }

                NavigationLink("Text and Date Style demo") {
                    Text_Dates_Demo()
                }

                NavigationLink("Markdown and string interpolation demo") {
                    Markedown_and_String_Interpolation_Demo()
                }

                
                
                
            }.navigationTitle("Style and Text View")
        }
    }
}
#Preview {
    MainView()
}
