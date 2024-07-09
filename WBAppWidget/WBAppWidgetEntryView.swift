//
//  WBAppWidgetEntryView.swift
//  WBAppWidgetExtension
//
//  Created by Ильяс Жанаев on 09.07.2024.
//

import SwiftUI
import WidgetKit

struct WBAppWidgetEntryView : View {
    var entry: Provider.Entry
    let gradient = Gradient(colors: [.widgetStoryGradient1WB, .widgetStoryGradient2WB])
    var contact: ContactModel

    var body: some View {
        ZStack {
            if contact.story {
                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .fill(LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 112, height: 112)
                    .overlay(RoundedRectangle(cornerRadius: 18, style: .continuous).stroke(Color.widgetBackground, lineWidth: 3))
            }
            
            avatarView
                .frame(width: 96, height: 96)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.widgetBackground, lineWidth: 2))
                .padding(contact.story ? 4 : 0)
            
            if contact.status {
                Circle()
                    .fill(Color.widgetGreenWB)
                    .frame(width: 24, height: 24)
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .offset(x: 40, y: -40)
            }
        }
    }
    @ViewBuilder
    private var avatarView: some View {
        if let avatar = contact.avatar {
            Image(uiImage: UIImage(named: avatar) ?? UIImage())
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}

struct ContactModel: Hashable, Identifiable {
    let id: Int
    let avatar: String?
    let status: Bool
    let story: Bool
}
