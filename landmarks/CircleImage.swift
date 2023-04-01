//
//  CircleImage.swift
//  landmarks
//
//  Created by Andrew J Fei on 1/04/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            // Clip image to cirlce shape
            .clipShape(Circle())
            // Add white circle border overlay to image
            .overlay(Circle().stroke(.white, lineWidth: 4))
            // Add shadow to image
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
