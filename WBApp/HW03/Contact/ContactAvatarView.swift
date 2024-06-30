//
//  ContactAvatarView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 26.06.2024.
//

import SwiftUI

struct ContactAvatarView: View {
    let gradient = Gradient(colors: [.storyGradient1WB, .storyGradient2WB])
    var contact: ContactModel
    
    var body: some View {
        ZStack {
            if contact.story {
                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .fill(LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 56, height: 56)
                    .overlay(RoundedRectangle(cornerRadius: 18, style: .continuous).stroke(Color.backgroundWB, lineWidth: 3))
            }
            
            avatarView
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.backgroundWB, lineWidth: 2))
                .padding(contact.story ? 4 : 0)
            
            if contact.status {
                Circle()
                    .fill(Color.greenWB)
                    .frame(width: 12, height: 12)
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    .offset(x: 20, y: -20)
            }
        }
        .frame(width: 56, height: 56)
    }
    
    @ViewBuilder
    private var avatarView: some View {
        if let avatar = contact.avatar {
            Image(uiImage: UIImage(named: avatar) ?? UIImage())
                .resizable()
                .aspectRatio(contentMode: .fill)
        } else {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.defaultWB)
                .overlay(
                    Text("\(contact.name.prefix(1))\(contact.surname.prefix(1))")
                        .font(.headline)
                        .foregroundColor(.whiteTextWB)
                )
        }
    }
}

#Preview {
    ContactAvatarView(contact: ContactModel(id: 1, name: "Лиса", surname: "Алиса", avatar: "Person1", status: true, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
