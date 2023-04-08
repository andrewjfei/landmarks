//
//  CategoryHomeView.swift
//  landmarks
//
//  Created by Andrew J Fei on 7/04/23.
//

import SwiftUI

struct CategoryHomeView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHomeView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHomeView()
            .environmentObject(ModelData())
    }
}
