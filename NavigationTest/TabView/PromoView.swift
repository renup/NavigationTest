//
//  PromoView.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import SwiftUI

struct PromoView: View {
        
    @EnvironmentObject var homeRouter: NavigationRouter<HomeRouter>
    @EnvironmentObject var searchRouter: NavigationRouter<SearchRouter>
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject private var appViewModel: AppViewModel
    
    var body: some View {
        VStack(spacing: 10){
            Text("Promo View")
            Button {
                presentationMode.wrappedValue.dismiss()
                switch appViewModel.selectedTab {
                case .home:
                    homeRouter.reset()
                case .search:
                    searchRouter.reset()
                default:
                    EmptyView()
                }
            } label: {
                Text("Go \(appViewModel.selectedTab.description)")
            }
        }
    }
    

}

#Preview {
    PromoView()
}
