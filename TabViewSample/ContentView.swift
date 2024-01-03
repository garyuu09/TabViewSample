//
//  ContentView.swift
//  TabViewSample
//
//  Created by Ryuga on 2024/01/03.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .home

    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Home")
                .tabItem { Tab.home.tabContent }
                .tag(Tab.home)

            Text("Settings")
                .tabItem {  Tab.settings.tabContent }
                .tag(Tab.settings)
        }
    }
}

#Preview {
    ContentView()
}
