//
//  FavouriteButtonView.swift
//  landmarks
//
//  Created by Andrew J Fei on 7/04/23.
//

import SwiftUI

struct FavouriteButtonView: View {
    // The @Binding attribute is used to created a two-way connection between a property of a parent view and a child view, if the variable in the child view is changed it will also be reflected in the parent view
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favourite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavouriteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteButtonView(isSet: .constant(true))
    }
}
