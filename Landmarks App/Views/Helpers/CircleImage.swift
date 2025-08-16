//
//  CircleImage.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/1/25.


// use for circle image view

import SwiftUI


struct CircleImage: View {
    
    var image: Image // creates image parameter to be passed in from landmark detail
    
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white)
            }
            .shadow(radius:7)

    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
