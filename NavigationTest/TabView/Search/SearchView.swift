//
//  SearchView.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import SwiftUI

struct SearchView: View {
    let deals: [Deal]
    @StateObject var searchRouter = NavigationRouter<SearchRouter>()

    var body: some View {
        NavigationStack(path: $searchRouter.path){
            VStack {
                Text("Search View")
                NavigationLink(value: SearchRouter.searchLanding(items: deals)) {
                    Text("View deals")
                }
            }
            .navigationDestination(for: SearchRouter.self) { $0 }
            .sheet(item: $searchRouter.sheetRoute) { route in
                route.sheetView(for: route)
            }
            .fullScreenCover(item: $searchRouter.fullScreenCoverRoute) { $0 }
        }
        .environmentObject(searchRouter)
        
    }
}

#Preview {
    SearchView(deals: Deal.mock)
}
