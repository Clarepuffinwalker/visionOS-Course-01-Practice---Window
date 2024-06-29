//
//  CourseDetailView.swift
//  visionOS Course Practice 01 Window
//
//  Created by ClareZhou on 2024/6/29.
//

import Foundation
import SwiftUI

struct CourseDetailView: View{
    @Environment(\.openURL) var openURL
    @Environment(\.openWindow) var openWindow
    @Environment(\.dismissWindow) var dismissWindow
    @State private var isSubmitWindowOpen = false
    
    var section: CourseInfo
    var body: some View{
        VStack{
            Text("\(section.id).\(section.name).\(section.desciprtion)")
                .font(.body)
                .padding()
                .navigationTitle(section.name)
        }
        //ToolBar here
        .toolbar{
            ToolbarItemGroup(placement: .bottomOrnament){
                //Button 1
                Button("Website", systemImage: "safari"){
                    openURL(section.url)
                }
                
                //Button 2
                Button("Star", systemImage: "star"){
                   print("star the section")
                }
            }
            
            ToolbarItem(placement:.bottomOrnament){
                
                Toggle("question", isOn: $isSubmitWindowOpen)
                //Image(systemName: "questionmark.circle")
                    .onChange(of: isSubmitWindowOpen){_, newVal in
                        if newVal {
                            openWindow(id:"submit")
                        } else {
                            dismissWindow(id:"submit")
                        }
                    }
                    .toggleStyle(.button)
                
            }
        }
    }
    
    init(section: CourseInfo) {
        self.section = section
    }
}
