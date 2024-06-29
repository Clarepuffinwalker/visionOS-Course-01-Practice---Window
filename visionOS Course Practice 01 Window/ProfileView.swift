//
//  ProfileView.swift
//  visionOS Course Practice 01 Window
//
//  Created by Clare Zhou on 2024/6/29.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.openWindow) var openWindow
    @Environment(\.dismissWindow) var dismissWindow
    
    var body: some View {
        VStack{
            Text("This is Profile")
                .font(.extraLargeTitle2)
            
            Image(.profile)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    ProfileView()
}
