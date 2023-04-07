//
//  LandmarkListView.swift
//  landmarks
//
//  Created by Andrew J Fei on 1/04/23.
//

import SwiftUI

struct LandmarkListView: View {
    // The @EnvironmentObject attribute is used to inject @Published variables into any views within the same environment (i.e. subscribing to the @Published variable)
    @EnvironmentObject var landmarkData: LandmarkData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarkData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favourites Only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        // View displayed when list item is clicked on
                        LandmarkDetailView(landmark: landmark)
                    } label: {
                        // Navigation list item to display
                        LandmarkRowView(landmark: landmark)
                    }
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
                .environmentObject(LandmarkData())
        }
    }
}
