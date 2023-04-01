//
//  Landmark.swift
//  landmarks
//
//  Created by Andrew J Fei on 1/04/23.
//

import Foundation
import SwiftUI
import CoreLocation

// Codable makes it easier to move data between the structure and the data file
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    // This variable is private as users should not be able to access the image name, but only the image itself
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}