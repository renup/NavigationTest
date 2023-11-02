//
//  Router.swift
//  NavigationTest
//
//  Created by Renu Punjabi on 11/1/23.
//

import Foundation
import SwiftUI

protocol Router {
    associatedtype RouterType: Equatable
    associatedtype SheetView: View
    associatedtype FullScreenView: View

    func sheetView(for: RouterType) -> SheetView
    func fullScreenCoverView(for: RouterType) -> FullScreenView
}

final class NavigationRouter<FlowRouter: Router>: ObservableObject {
    
    @Published var path: [FlowRouter.RouterType] = []
    
    @Published var sheetRoute: FlowRouter.RouterType?
    
    @Published var fullScreenCoverRoute: FlowRouter.RouterType?
    
    func showSheet(to destination: FlowRouter.RouterType) {
        sheetRoute = destination
    }
    
    func showFullScreenCover(to destination: FlowRouter.RouterType) {
        fullScreenCoverRoute = destination
    }
    
    func dismissSheet() {
        sheetRoute = nil
    }
    
    func dismissFullScreenCover() {
        fullScreenCoverRoute = nil
    }
    
    func push(to destination: FlowRouter.RouterType) {
        path.append(destination)
    }
    
    func goBack() {
        path.removeLast()
    }
    
    func goBack(to screen: FlowRouter.RouterType) {
        if let inputScreenIndex = path.firstIndex(of: screen) {
            let elementsToRemove = path.count - (inputScreenIndex + 1)
            path.removeLast(elementsToRemove)
        }
    }
    
    func reset() {
        path = []
    }
}
