//
//  ContentView.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = AppViewModel()
    @StateObject var signInSignUpRouter = NavigationRouter<SignInSignUpRouter>()
    
    var body: some View {
        VStack {
            if viewModel.isUserSignedIn {
               AppTabView()
            } else {
                SignInView()
            }
        }
        .padding()
        .environmentObject(viewModel)
        .environmentObject(signInSignUpRouter)
    }
}

#Preview {
    ContentView()
}
