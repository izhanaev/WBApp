//
//  ContentView_TabView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 20.06.2024.
//

import SwiftUI

struct ContentView_TabView: View {
    @StateObject var router: Router = .init()
    
    init() {
        configureTabBarAppearance()
    }
    
    var body: some View {
        TabView(selection: $router.selectedTab) {
            tabView(tab: .contacts, imageName: "ContactsTab", view: ContactsView())
            tabView(tab: .chats, imageName: "ChatsTab", view: ChatsView())
            tabView(tab: .more, imageName: "MoreTab", view: MoreView())
        }.navigationBarBackButtonHidden(true)
            .tint(.monoDefaultWB)
    }
    
    private func tabView<Content: View>(tab: Tabs, imageName: String, view: Content) -> some View {
        view
            .tabItem {
                Image(imageName)
                    .renderingMode(.template)
                    .foregroundStyle(.mainTextWB)
            }
            .tag(tab)
    }
    
    private func configureTabBarAppearance() {
        let tabBarAppearance = UITabBar.appearance()
        tabBarAppearance.backgroundColor = .backgroundWB
        tabBarAppearance.unselectedItemTintColor = .mainTextWB
    }
    
}

#Preview {
    ContentView_TabView()
}
