//
//  SettingsRouter.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/2/23.
//

import Foundation
import SwiftUI

enum SettingsRouter: Router {
    typealias RouterType = SettingsRouter
    
    case signOut
}

extension SettingsRouter: Hashable, Identifiable, Equatable {
    var id: Self {
        self
    }
    
    static func == (lhs: SettingsRouter, rhs: SettingsRouter) -> Bool {
        switch (lhs, rhs) {
        case (.signOut, .signOut):
            return true
        }
    }
    
    func hash(into hasher: inout Hasher) {
        switch self {
        case .signOut:
            hasher.combine("signOut")
        }
    }
}

extension SettingsRouter: View {
    
    var body: some View {
        switch self {
        case .signOut:
            SignInView()
        }
    }
    
    func sheetView(for: SettingsRouter) -> some View {
        return self
    }
    
    func fullScreenCoverView(for: SettingsRouter) -> some View {
        return self
    }
}
