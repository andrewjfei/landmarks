//
//  HikeBadgeView.swift
//  landmarks
//
//  Created by Andrew J Fei on 9/04/23.
//

import SwiftUI

struct HikeBadgeView: View {
    var name: String

    var body: some View {
        VStack(alignment: .center) {
            BadgeView()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

struct HikeBadgeView_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadgeView(name: "Preview Testing")
    }
}
