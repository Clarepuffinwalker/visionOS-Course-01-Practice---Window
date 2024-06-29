//
//  visionOS_Course_Practice_01_WindowApp.swift
//  visionOS Course Practice 01 Window
//
//  Created by  Clare Zhou on 2024/6/29.
//

import SwiftUI

@main
struct visionOS_Course_Practice_01_WindowApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .frame(minWidth: 800, maxWidth: 2000, minHeight: 600, maxHeight: 1100) //size frame, only apply for a single view
        }
        .defaultSize(width: 1280, height: 720)
        .windowResizability(.contentSize) //control both size range, min & max
        
        WindowGroup(id:"doodle"){
            DoodleView()
        }
        
        WindowGroup(id:"submit"){
            SubmitView()
        }
    }
}
