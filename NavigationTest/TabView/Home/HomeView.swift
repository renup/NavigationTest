//
//  HomeView.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import SwiftUI

struct HomeView: View {
    let deals: [Deal]
    @StateObject var homeRouter = NavigationRouter<HomeRouter>()
    
    var body: some View {
        NavigationStack(path: $homeRouter.path) {
            VStack(spacing: 10) {
                Text("Home View")
                NavigationLink(value: HomeRouter.homeLanding(items: Deal.mock)) {
                    Text("View Deals")
                }
            }
            .navigationDestination(for: HomeRouter.self) { $0 }
            // In HomeView
            .sheet(item: $homeRouter.sheetRoute) { route in
                route.sheetView(for: route)
            }
        }
        .environmentObject(homeRouter)
    }
}

//#Preview {
//    HomeView(deals: Deal.mock)
//}
