//
//  Tab.swift
//  TabViewSample
//
//  Created by Ryuga on 2024/01/03.
//

import SwiftUI

enum Tab: String {
    case home = "Home"
    case settings = "Settings"

    @ViewBuilder
    var tabContent: some View {
        switch self {
        case .home:
            Image(systemName: "house")
            Text(self.rawValue)
        case .settings:
            Image(systemName: "gearshape")
            Text(self.rawValue)
        }
    }
}

