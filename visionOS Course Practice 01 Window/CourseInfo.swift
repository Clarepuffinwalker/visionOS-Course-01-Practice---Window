//
//  CourseInfo.swift
//  visionOS Course Practice 01 Window
//
//  Created by ClareZhou on 2024/6/29.
//

import Foundation

struct CourseInfo: Identifiable, Hashable{
    var id:Int
    var name:String
    var desciprtion:String
    var url:URL
    
    static let example = [
        CourseInfo(id: 1, name: "2D Apps", desciprtion: "Window Apps", url:URL(string: "https://cn.bing.com")!),
        CourseInfo(id: 2, name: "3D Apps", desciprtion: "Volume Apps", url:URL(string: "https://www.bilibili.com")!),
        CourseInfo(id: 3, name: "Share Space", desciprtion: "Apps running in shared space", url:URL(string: "https://cn.bing.com")!),
        CourseInfo(id: 4, name: "Immersive Space", desciprtion: "Apps running in immersive environment", url:URL(string: "https://www.bilibili.com")!)
    ]
}
