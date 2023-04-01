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
            MapView()
                .frame(height: 300)
                // Ignore safe area to allow MapView to extend to the top of the screen
                .ignoresSafeArea(edges: .top)
            
            CircleImageView()
                // Offset CircleImageView in the vertical direction
                .offset(y: -130)
                // Apply bottom padding to CircleImageView
                .padding(.bottom, -130)
                
            
            VStack(alignment: .leading) {
                // Setting the font modifier so that the test responds correctly on the user's preferred font size
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                    
                    Spacer()
                    
                    Text("California")
                }
                // When modifiers are applied to a layout view (e.g. Stack) the modifiers are applied to all elements within the layout view
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                
                Text("Description about Turtle Rock.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
