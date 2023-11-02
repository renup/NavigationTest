//
//  SignInView.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/2/23.
//

import SwiftUI

struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    @StateObject var signInSignUpRouter = NavigationRouter<SignInSignUpRouter>()
    @EnvironmentObject private var viewModel: AppViewModel

    var body: some View {
        VStack(spacing: 15) {
            emailField
            passwordField
            
            HStack {
                signInButton
                Spacer()
                signUpButton
            }
        }
        .padding()
        .fullScreenCover(item: $signInSignUpRouter.fullScreenCoverRoute) {  $0.fullScreenCoverView(for: $0) }
    }
    
    private var emailField: some View {
        HStack {
            Text("Email")
            TextField("example@abc.com", text: $email)
                .textFieldStyle(.roundedBorder)
        }
    }
    
    private var passwordField: some View {
        HStack {
            Text("Password")
            SecureField("", text: $password)
                .textFieldStyle(.roundedBorder)
        }
    }
    
    private var signInButton: some View {
        Button {
            viewModel.isUserSignedIn = true
        } label: {
            Text("Sign in")
        }
        .buttonStyle(.borderedProminent)
        .background(in: .capsule)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(10)
    }
    
    private var signUpButton: some View {
        Button {
            signInSignUpRouter.fullScreenCoverRoute = .signUp
        } label: {
            Text("Sign up")
        }
        .buttonStyle(.borderedProminent)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(10)
        
    }
}

#Preview {
    SignInView()
}
