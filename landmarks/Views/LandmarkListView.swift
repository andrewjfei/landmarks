//
//  LandmarkListView.swift
//  landmarks
//
//  Created by Andrew J Fei on 1/04/23.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        List(landmarks) {
            landmark in LandmarkRowView(landmark: landmark)
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
