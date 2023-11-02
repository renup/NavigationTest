//
//  SignUpView.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/2/23.
//

import SwiftUI

struct SignUpView: View {
    @Environment (\.presentationMode) var presentationMode
    @EnvironmentObject private var viewModel: AppViewModel
    
    var body: some View {
        Text("Sign up view")
        
        Button {
            presentationMode.wrappedValue.dismiss()
            viewModel.isUserSignedIn = true
        } label: {
            Text("Sign up")
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Image(systemName: "xmark")
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
            }
        }

    }
}

#Preview {
    SignUpView()
}
