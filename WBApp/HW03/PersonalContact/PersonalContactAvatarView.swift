//
//  PersonalContactAvatarView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 30.06.2024.
//

import SwiftUI

struct PersonalContactAvatarView: View {
    var contact: ContactModel
    
    var body: some View {
        Image("NonAvatar")
    }
    
}

#Preview {
    PersonalContactAvatarView(contact: ContactModel(id: 1, name: "Лиса", surname: "Алиса", avatar: "Person1", status: true, story: true, lastSeen: Date(), phoneNumber: "+7 800 555-35-35"))
}
