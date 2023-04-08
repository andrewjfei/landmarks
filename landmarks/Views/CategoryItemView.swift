//
//  CategoryItemView.swift
//  landmarks
//
//  Created by Andrew J Fei on 9/04/23.
//

import SwiftUI

struct CategoryItemView: View {
    var landmark: Landmark

    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            
            Text(landmark.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(landmark: ModelData().landmarks[0])
    }
}
