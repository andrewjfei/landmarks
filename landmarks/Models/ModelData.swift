//
//  LandmarkData.swift
//  landmarks
//
//  Created by Andrew J Fei on 1/04/23.
//

import Foundation
import Combine

// An ObservableObject is a custom object for data that will automatically update any views using the data when it is changed
final class ModelData: ObservableObject {
    // The @Published attribute is used to publish changes made to the data so that subscribers can pick up on the change
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
}

// Load JSON data from provided file
func load<T: Decodable>(_ filename: String) -> T {
    print(filename)
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
