//
//  AdView.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import SwiftUI

struct AdView: View {
    let selectedTab: Tab // Instead of passing in each view we can use an env object
    
    @EnvironmentObject var homeRouter: NavigationRouter<HomeRouter>
    @EnvironmentObject var searchRouter: NavigationRouter<SearchRouter>
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(spacing: 10){
            Text("Ad View")
            Button {
                presentationMode.wrappedValue.dismiss()
                switch selectedTab {
                case .home:
                    homeRouter.reset()
                case .search:
                    searchRouter.reset()
                default:
                    EmptyView()
                }
            } label: {
                Text("Go \(selectedTab.description)")
            }

        }
        
    }
}

#Preview {
    AdView(selectedTab: .home)
}
