//
//  DealListView.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import SwiftUI

struct DealListView: View {
    let deals: [Deal]
    let selectedTab: Tab
        
    var body: some View {
        switch selectedTab {
        case .home:
            NavigationLink(value: HomeRouter.dealDetails(item: deals.first!)) {
                Text("Deal List View")
            }
        case .search:
            NavigationLink(value: SearchRouter.searchDetails(item: deals.first!)) {
                Text("Deal List View")
            }
        default:
            EmptyView()
        }
        
    }
}

#Preview {
    DealListView(deals: Deal.mock, selectedTab: .home)
}
