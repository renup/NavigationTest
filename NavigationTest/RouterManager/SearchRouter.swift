//
//  SearchRouter.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import Foundation
import SwiftUI

enum SearchRouter: Router {
    
    typealias RouterType = SearchRouter
    
    case searchLanding(items: [Deal])
    case searchDetails(item: Deal)
    case adView
}

extension SearchRouter: Hashable, Identifiable, Equatable {
    var id: Self {
        self
    }
    
    static func == (lhs: SearchRouter, rhs: SearchRouter) -> Bool {
        switch (lhs, rhs) {
        case (.searchLanding(let lhsItems), .searchLanding(let rhsItems)):
            return lhsItems == rhsItems
        case (.searchDetails(let lhs), .searchDetails(let rhs)):
            return lhs.id == rhs.id
        case (.adView, .adView):
            return true
        default:
            return false
        }
    }
    
    func hash(into hasher: inout Hasher) {
        switch self {
        case .searchLanding(let items):
            hasher.combine("searchLanding")
            hasher.combine(items)
        case .searchDetails(let item):
            hasher.combine("searchDetails")
            hasher.combine(item)
        case .adView:
            hasher.combine("adView")
        }
    }
}

extension SearchRouter: View {
    
    var body: some View {
        switch self {
        case .searchLanding(let items):
            DealListView(deals: items, selectedTab: .search)
        case .searchDetails(item: let item):
            DealDetailsView(deal: item, selectedTab: .search)
        case .adView:
            AdView(selectedTab: .search)
        }
    }
    
    func sheetView(for: SearchRouter) -> some View {
        return self
    }
    
    func fullScreenCoverView(for: SearchRouter) -> some View {
        return self
    }
}
