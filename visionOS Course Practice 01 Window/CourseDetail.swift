//
//  CourseDetail.swift
//  visionOS Course Practice 01 Window
//
//  Created by ClareZhou on 2024/6/29.
//

import Foundation

struct CourseDetail: Identifiable, Hashable{
    var id:Int
    var name:String
    var desciprtion: String
    
    static let example = [
        CourseDetail(id: 1, name: "2D Apps", desciprtion: "Window Apps"),
        CourseDetail(id: 2, name: "3D Apps", desciprtion: "Volume Apps"),
        CourseDetail(id: 3, name: "Share Space", desciprtion: "Apps running in shared space"),
        CourseDetail(id: 4, name: "Immersive Space", desciprtion: "Apps running in immersive environment")
    ]
    
}
