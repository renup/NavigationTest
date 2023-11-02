//
//  DealDetailsView.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import SwiftUI
import Observation

enum Context {
    case ad, promo
     
    var description: String {
        switch self {
        case .ad: return "Ad"
        case .promo: return "Promo"
        }
    }
}

struct DealDetailsView: View {
    let deal: Deal
    let selectedTab: Tab
    
    @EnvironmentObject private var searchRouter: NavigationRouter<SearchRouter>
    @EnvironmentObject private var homeRouter: NavigationRouter<HomeRouter>
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Deal Details View")
            Button {
                switch selectedTab {
                case .home:
                    homeRouter.showSheet(to: .promoView)
                case .search:
                    searchRouter.showSheet(to: .adView)
                default:
                    EmptyView()
                }
            } label: {
                Text(" Show Ad/Promo view")
            }
            
            Button {
                switch selectedTab {
                case .home:
//                    homeRouter.goBack()
                    homeRouter.goBack(to: .homeLanding(items: []))
                case .search:
                    searchRouter.goBack(to: .searchLanding(items: []))
                default:
                    EmptyView()
                }
            } label: {
                Text("Go to deals list view")
            }

        }
    }
}

#Preview {
    NavigationStack {
        DealDetailsView(deal: Deal.mock.first!, selectedTab: .home)
            .environmentObject(NavigationRouter<SearchRouter>())
            .environmentObject(NavigationRouter<HomeRouter>())
    }
}
