//
//  ChatsIntent.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 04.07.2024.
//

import Foundation
import AppIntents

final class ChatsIntent: AppIntent {
    
    static var title: LocalizedStringResource = "Open chats in WBApp"
    
    static var openAppWhenRun: Bool = true
    
    @MainActor
    func perform() async throws -> some IntentResult {
        Router.shared.moveToTab(tab: .chats)
        return .result()
    }
    
}
