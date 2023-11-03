//
//  SettingsView.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject private var viewModel: AppViewModel
    
    var body: some View {
        VStack(spacing: 10){
            Text("Settings View")
            
            Button {
                viewModel.isUserSignedIn = false
            } label: {
                Text("Sign out")
            }
        }
    }
}

#Preview {
    SettingsView()
}
