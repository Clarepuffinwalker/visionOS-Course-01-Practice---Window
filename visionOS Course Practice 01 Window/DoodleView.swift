//
//  DoodleView.swift
//  visionOS Course Practice 01 Window
//
//  Created by ClareZhou on 2024/6/29.
//

import SwiftUI

struct DoodleView: View {
    var body: some View {
        Text("Doodle Here")
        Image(.profile)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    DoodleView()
}
