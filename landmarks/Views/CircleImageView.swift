//
//  CircleImageView.swift
//  landmarks
//
//  Created by Andrew J Fei on 1/04/23.
//

import SwiftUI

struct CircleImageView: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.image
            // Clip image to cirlce shape
            .clipShape(Circle())
            // Add white circle border overlay to image
            .overlay(Circle().stroke(.white, lineWidth: 4))
            // Add shadow to image
            .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(landmark: landmarks[0])
    }
}