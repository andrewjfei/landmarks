//
//  ContentView.swift
//  landmarks
//
//  Created by Andrew J Fei on 1/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            // Setting the font modifier so that the test responds correctly on the user's preferred font size
            Text("Turtle Rock")
                .font(.title)
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
