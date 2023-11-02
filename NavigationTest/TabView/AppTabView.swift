//
//  AppTabView.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import SwiftUI

enum Tab {
    case home
    case search
    case settings
    
    var description: String {
        switch self {
        case .home:
            return "Home"
        case .search:
            return "Search"
        case .settings:
            return "Settings"
        }
    }
}

struct AppTabView: View {
    @State var selectedTab: Tab = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(deals: Deal.mock)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.home)
            SearchView(deals: Deal.mock)
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(Tab.search)
            SettingsView()
                .tabItem { Label("Settings", systemImage: "gear")
                }
                .tag(Tab.settings)
        }
    }
}

#Preview {
    AppTabView()
}
