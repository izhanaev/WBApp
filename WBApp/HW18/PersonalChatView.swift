//
//  PersonalChatView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 29.08.2024.
//

import SwiftUI
import ExyteChat
import ExyteMediaPicker

struct PersonalChatView: View {
    
    // TODO:
    
    @EnvironmentObject var viewModel: ChatExampleViewModel
    
    var body: some View {
        ChatView(messages: viewModel.messages) { draft in
            viewModel.send(draft: draft)
        }
        .environmentObject(viewModel)
    }
        
}

#Preview {
    PersonalChatView()
        .environmentObject(ChatExampleViewModel())
}
