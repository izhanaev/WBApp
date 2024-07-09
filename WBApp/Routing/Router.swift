//
//  Router.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 20.06.2024.
//

import SwiftUI

final class Router: ObservableObject {
    
    @Published var selectedTab: Tabs = .contacts
    
    static let shared: Router = .init()
    
    private init() {}
    
    func moveToTab(tab: Tabs) {
        selectedTab = tab
    }
    
}
