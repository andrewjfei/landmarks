//
//  MapView.swift
//  landmarks
//
//  Created by Andrew J Fei on 1/04/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    // The @State attribute is used to manage state, views depedning on this state will automatically update when this is updated
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.111_286, longitude: -116.300_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        // The $ acts as a two way binding to a specific state (e.g. when the user iteracts with the map the region state variable will aslo update along with it)
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
