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
    @EnvironmentObject private var signInSignUpRouter: NavigationRouter<SignInSignUpRouter>
    
    var body: some View {
        NavigationStack(path: $signInSignUpRouter.path) {
            VStack(spacing: 10){
                Text("Sign up view")
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                    viewModel.isUserSignedIn = true
                } label: {
                    Text("Sign up")
                }
            }
            .background(Color.green)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
                }
            }
        }

    }
}

#Preview {
    SignUpView()
}
