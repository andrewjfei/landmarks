//
//  landmarksApp.swift
//  landmarks
//
//  Created by Andrew J Fei on 1/04/23.
//

import SwiftUI

// The @main attribute identidies the application's entry point
@main
struct landmarksApp: App {
    // The @StateObject attribute is used to initialise a model object
    @StateObject private var landmarkData = LandmarkData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(landmarkData)
        }
    }
}
