//
//  TabView.swift
//  visionOS Course Practice 01 Window
//
//  Created by 周铁 on 2024/6/29.
//

import SwiftUI

struct TabView: View {
    //all @State here! Outside View, it's data,not view realted
    @State var defaultTag = "course"
    
    var body: some View {
        //想想，TabView 需要哪些组成部分？
        //tab Item，负责每个按键的连接、信息，Label文字，图像 Image，tag
        // tab Item 按键的上一层，整个边上 TabView层面，需要 1. 默认选择是啥，可以用 @State @Binding 进行绑定，
        //思考题： @State @Binding 区别是什么？
        
        TabView(selection:$defaultTag)
        
    }
}

#Preview {
    TabView()
}
