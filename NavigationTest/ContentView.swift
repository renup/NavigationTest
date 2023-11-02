//
//  ContentView.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = AppViewModel()
    
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
    }
}

#Preview {
    ContentView()
}
