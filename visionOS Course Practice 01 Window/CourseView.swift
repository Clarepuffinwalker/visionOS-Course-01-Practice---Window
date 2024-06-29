//
//  CourseView.swift
//  visionOS Course Practice 01 Window
//
//  Created by  Clare Zhou on 2024/6/29.
//

import SwiftUI

struct CourseView: View {
    @Environment(\.openWindow) var openWindow
    @Environment(\.dismissWindow) var dismissWindow
    
    var sections: [CourseInfo] = []
    @State var selectedSection: CourseInfo?
    
    var body: some View {
        
        NavigationSplitView{
            List(sections,selection: $selectedSection ){
                apple in
                NavigationLink(apple.name, value: apple)
            }
            // apple: The local variable within the closure representing each element of the sections array, closure structure rec it no matter of the name
            .navigationTitle("Courses")
            
            //ornament always follow main course view
            .ornament(attachmentAnchor:.scene(.trailing)){
                VStack{
                    //open "doodle" DoodleView
                    Button{
                        openWindow(id:"doodle")
                    } label: {
                        Image(systemName: "pencil")
                    }
                    
                    Button("Undo",systemImage:"eraser"){
                        print("Clean")
                    }
                    
                    //dismiss "doodle" DoodleView
                    Button("Close",systemImage:"xmark.circle"){
                        dismissWindow(id:"doodle")
                    }
                }
                .glassBackgroundEffect()
                .buttonStyle(.borderless)
                .labelStyle(.iconOnly)
                .padding()
            }
            
        } detail: {
            if let selectedSection = selectedSection {
                CourseDetailView(section: selectedSection)
                // section: defined in CourseDetailView()
            } else {
                Text("Please select a section")
            }
        }
    }
    
    init(){
        sections = CourseInfo.example
    }

}

#Preview {
    CourseView()
}


//1.    sections: The array of CourseInfo objects.
//2.    selectedSection: The state variable that holds the currently selected CourseInfo object.
//3.    apple: The local variable within the closure representing each element of the sections array.
//4.    section: The parameter in CourseDetailView representing the selected CourseInfo object passed from CourseView.
