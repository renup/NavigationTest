//
//  SignInSignUpRouter.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/2/23.
//

import Foundation
import SwiftUI

enum SignInSignUpRouter: Router {
    typealias RouterType = SignInSignUpRouter
    
    case signUp
    case signIn
    case appTabView
}

extension SignInSignUpRouter: Hashable, Identifiable, Equatable {
    var id: Self {
        self
    }
    
    static func == (lhs: SignInSignUpRouter, rhs: SignInSignUpRouter) -> Bool {
        switch (lhs, rhs) {
        case (.signIn, .signIn):
            return true
        case (.signUp, .signUp):
            return true
        default:
            return false
        }
    }
    
    func hash(into hasher: inout Hasher) {
        switch self {
        case .signIn:
            hasher.combine("signIn")
        case .signUp:
            hasher.combine("signUp")
        case .appTabView:
            hasher.combine("appTabView")
        }
    }
}

extension SignInSignUpRouter: View {
    
    var body: some View {
        switch self {
        case .signIn:
            SignInView()
        case .signUp:
            SignUpView()
        case .appTabView:
            AppTabView()
        }
    }
    
    func sheetView(for: SignInSignUpRouter) -> some View {
        return self
    }
    
    func fullScreenCoverView(for: SignInSignUpRouter) -> some View {
        return self
    }
}
