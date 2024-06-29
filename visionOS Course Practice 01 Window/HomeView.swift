//
//  ContentView.swift
//  visionOS Course Practice 01 Window
//
//  Created by  Clare Zhou on 2024/6/29.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct HomeView: View {
    //build TabView as HomeView here
    //all @State here! Outside View, it's data,not view related
    @State var defaultTag = "course"

    var body: some View {
        //TabView show Selection
        //想想，TabView 需要哪些组成部分？
        //tab Item，负责每个按键的连接、信息，Label文字，图像 Image，tag
        // tab Item 按键的上一层，整个边上 TabView层面，需要 1. 默认选择是啥，可以用 @State @Binding 进行绑定，
         //思考题： @State @Binding 区别是什么？
        
        TabView(selection: $defaultTag) {
            CourseView()
                .tabItem {
                    Label("Course",systemImage: "book.pages")
                }
                .tag("course")
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.crop.circle") }
                .tag("profile")
        }
    }
}

#Preview(windowStyle: .automatic) {
    HomeView()
}
