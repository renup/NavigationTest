//
//  HomeRouter.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import Foundation
import SwiftUI

enum HomeRouter: Router {
    
    typealias RouterType = HomeRouter
    
    case homeLanding(items: [Deal])
    case dealDetails(item: Deal)
    case promoView
}

extension HomeRouter: Hashable, Identifiable, Equatable {
    var id: Self {
        self
    }
    
    static func == (lhs: HomeRouter, rhs: HomeRouter) -> Bool {
        switch (lhs, rhs) {
        case (.homeLanding(let lhsItems), .homeLanding(let rhsItems)):
            return true
//            return lhsItems == rhsItems
        case (.dealDetails(let lhs), .dealDetails(let rhs)):
            return lhs.id == rhs.id
        case (.promoView, .promoView):
            return true
        default:
            return false
        }
    }
    
    func hash(into hasher: inout Hasher) {
        switch self {
        case .homeLanding(let items):
            hasher.combine("homeLanding")
            hasher.combine(items)
        case .dealDetails(let item):
            hasher.combine("dealDetails")
            hasher.combine(item)
        case .promoView:
            hasher.combine("promoView")
        }
    }
}

extension HomeRouter: View {
    
    var body: some View {
        switch self {
        case .homeLanding(let items):
            DealListView(deals: items)
        case .dealDetails(item: let item):
            DealDetailsView(deal: item)
        case .promoView:
            PromoView()
        }
    }
    
    func sheetView(for: HomeRouter) -> some View {
        return self
    }
    
    func fullScreenCoverView(for: HomeRouter) -> some View {
        return self
    }
}
