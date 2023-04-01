//
//  LandmarkDetailView.swift
//  landmarks
//
//  Created by Andrew J Fei on 1/04/23.
//

import SwiftUI

struct LandmarkDetailView: View {
    var landmark: Landmark
    
    var body: some View {
        // Scrollable view
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                // Ignore safe area to allow MapView to extend to the top of the screen
                .ignoresSafeArea(edges: .top)
            
            CircleImageView(image: landmark.image)
                // Offset CircleImageView in the vertical direction
                .offset(y: -130)
                // Apply bottom padding to CircleImageView
                .padding(.bottom, -130)
                
            
            VStack(alignment: .leading) {
                // Setting the font modifier so that the test responds correctly on the user's preferred font size
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                    Text(landmark.park)
                    
                    Spacer()
                    
                    Text(landmark.state)
                }
                // When modifiers are applied to a layout view (e.g. Stack) the modifiers are applied to all elements within the layout view
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                // Inline text example
                Text("About \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)
            }
            .padding()
        }
        // Update the navigation title
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: landmarks[1])
    }
}
