//
//  LandmarkListView.swift
//  landmarks
//
//  Created by Andrew J Fei on 1/04/23.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    // View displayed when list item is clicked on
                    LandmarkDetailView(landmark: landmark)
                } label: {
                    // Navigation list item to display
                    LandmarkRowView(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (3rd generation)", "iPhone 13", "iPhone 14 Pro"], id: \.self) { deviceName in
            LandmarkListView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
