//
//  AppViewModel.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/2/23.
//

import Foundation

// This class is meant to store states/any info which is needed app wide.
final class AppViewModel: ObservableObject {
    @Published var selectedTab: Tab = .home
}
